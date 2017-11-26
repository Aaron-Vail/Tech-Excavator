<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <gardenCanvas></gardenCanvas> -->

<gardenCanvas>
        
<div>

	<div class="modal fade" id="newPlotModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
              <div class="modal-content">

                <div class="modal-header">
                  <h4 class="modal-title">Please enter a plot name:</h4>
                </div>
                <div class="modal-body">
                    <input type="text" name="new-plot-input" id="new-plot-input" class="form-control" placeholder="Plot Name">
                </div>
                <div class = "radio">
                    <lable class = "radio-inline"><input type = "radio" name = "sunOrShade" value = "sun" checked = "">Sun</input></lable>
                    <lable class = "radio-inline"><input type = "radio" name = "sunOrShade" value = "shade">Shade</input></lable>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="newPlotCancelButton">Cancel</button>
                    <button type="button" class="btn btn-primary" id="newPlotSaveButton" onclick="{createNewPlot}">Save</button>
                </div>
            </div>
        </div>
    </div>
    <button id="newPlotModalBtn" data-toggle="modal" data-target="#newPlotModal" >New Plot</button>
    <button id = "loadPlot" onclick="{loadPlot}">Load Plot</button>
    <button id = "getId" onclick="{getId}">Get Id</button>
    <button id = "embiggenCanvasWidth" onclick="{embiggenCanvasWidth}">Embiggen Canvas Width</button>
    <button id = "embiggenCanvasHeight" onclick="{embiggenCanvasHeight}">Embiggen Canvas Height</button>
    <input type = "color" id = "color" value = "#9e6c3a" onchange="{colorSelector}"/>
    <span id = "height"></span>
    <span id = "width"></span>
</div>


<script>
    var self = this;
    //Setting up the canvas
        var canvas = this.__canvas = new fabric.Canvas('c',{
            backgroundColor: 'rgb(249, 252, 252)',
        });


    //Increase Canvas Size
        this.embiggenCanvasWidth = function(){
            canvas.setWidth(canvas.width + 100);
        };
        this.embiggenCanvasHeight = function(){
            canvas.setHeight(canvas.height + 100);
        };

    //Scrolls the canvas with moving objects
        canvas.observe("object:moving", function(e){
            var obj = e.target;
            var currentCanvasHeight = canvas.height;
            var currentCanvasWidth = canvas.width;
            var currentWidth = obj.width * obj.scaleX;
            var currentHeight = obj.height * obj.scaleY;

            if(obj.left - currentWidth/2 < 0){
                obj.left = currentWidth/2;
            }
            if(obj.top - currentHeight/2 < 0){
                obj.top = currentHeight/2;
            }

            if (obj.left + currentWidth/2 >currentCanvasWidth){
                canvas.setWidth(currentCanvasWidth + 50);
                $("#wrapper").scrollLeft(obj.left);
                $("#wrapper").on('scroll', function(){
                    canvas.calcOffset.bind(canvas);
                });
            } 
            if (obj.top + currentHeight/2 >currentCanvasHeight){
                canvas.setHeight(currentCanvasHeight + 50);
                $("#wrapper").scrollTop(obj.top);
                $("#wrapper").on('scroll', function(){
                    canvas.calcOffset.bind(canvas);
                });
            } 
        });
    
    
    //We need to add buttons for everything below
       //Add new rectangle button
       this.createNewPlot = function(event){

            var plotId;
            $.ajax({
                url: GARDEN.root + "createPlot",
                type: "POST",         
                data:{
                    'name': $("#new-plot-input").val(),
                    'lightLevel': $("input:radio[name=sunOrShade]").val(),

                //This will be the plant data at some point
                    'plantId': 2,
                }
            }).then(function(data){
                plotId = data;
                //Making a new rectangle, should be changed to make the default rectangle prettier
                var rectangle = new fabric.Rect({ 
                   left: 100,
                   top: 100,
                   fill: $("#color").val(),
                   width: 200,
                   height: 200,
                   cornerStyle: "circle",
                   opacity: 0.9,
                   rx:4,
                   ry:4,
               });
               
               //Extending the rectangle to include an id
               rectangle.toObject = (function(toObject){
                 return function(properties){
                   return fabric.util.object.extend(toObject.call(this,properties), {
                     id: this.id
                   });
                 };
               })(rectangle.toObject);
       
               rectangle.id = plotId;
    
               canvas.add(rectangle);
               canvas.renderAll();
           });
           $("#newPlotModal").modal('hide');
        };
    
               

       //Save a canvas button
       GARDEN.on('saveButtonClicked', function(){
            var json = JSON.stringify(canvas.toJSON("id"));
           // alert(json);
           // alert(GARDEN.currentGarden.gardenId);
            $.ajax({
                url: GARDEN.root + "saveGarden",
                type: "POST",
                data:{
                    'gardenId': GARDEN.currentGarden.gardenId,
                    'plotsJson': json,
                }
             }).then(function(){
                GARDEN.trigger("updatedGardenPull");
             });
       
           });
           
    //Needs to trigger when the garden is selected

        this.on('mount', function() {
            canvas.setWidth(1470);
            canvas.setHeight(800);
            fabric.Object.prototype.transparentCorners = false;
            fabric.Object.prototype.originX = fabric.Object.prototype.originY = 'center';
            canvas.renderAll();

    //Load a canvas from selected object
            GARDEN.on('gardenSelectionUpdated', function() {
                //alert(GARDEN.currentGarden.plotsJson);
                if(GARDEN.currentGarden.plotsJson != 'empty'){

                    canvas.loadFromDatalessJSON(GARDEN.currentGarden.plotsJson);

                    //Resizing the canvas on a load
                    canvas.setWidth(1470);
                    canvas.setHeight(800);

                    var gardenPlotsObject = JSON.parse(GARDEN.currentGarden.plotsJson).objects;

                    gardenPlotsObject.forEach(function(element) {


                    alert(element.angle);
                    
                        if(element.top + element.height * element.scaleY* Math.sin(Math.PI*(90- element.angle)/180) >= canvas.height){
                            canvas.setHeight(element.top + element.height * element.scaleY* Math.sin(Math.PI*(90- element.angle)/180)) + 50;
                        };
                        if(element.left + element.width * element.scaleX *Math.sin(Math.PI*(90- element.angle)/180) >= canvas.width){
                            canvas.setWidth(element.left + element.width * element.scaleX *Math.sin(Math.PI*(90- element.angle)/180)) + 50;
                        };
                    }, this);

                }else{
                    canvas.clear();
                    canvas.backgroundColor = "rgb(249, 252, 252)"
                }
            });
        });
       
        this.getId = function(){
            //alert(canvas.getActiveObject().id);
        };
        this.colorSelector =  function(){
            canvas.getActiveObject().set("fill", $("#color").val());
            canvas.renderAll();
        };

    //These are the height and width changers, will need to be updated on the next sprint
        canvas.observe("object:selected",function(e){
           $("#height").text(Math.round(e.target.height * e.target.scaleY));
           $('#width').text(Math.round(e.target.width * e.target.scaleX));
         });
        canvas.observe("object:scaling",function(e){
           $("#height").text(Math.round(e.target.height * e.target.scaleY));
           $('#width').text(Math.round(e.target.width * e.target.scaleX));
         });

    //Opacity changes on hover
        canvas.on('mouse:over', function(e) {
            if(e.target != null){
                e.target.set('opacity', 1.0);
                canvas.renderAll();
            }
        });

        canvas.on('mouse:out', function(e) {
            if(e.target != null){
                e.target.set('opacity', 0.9);
                canvas.renderAll();
            }
        });
    //Slight size change on mouse down and up
    function animate(e, dir) {
        if (e.target) {
            fabric.util.animate({
                startValue: e.target.get('scaleX'),
                endValue: e.target.get('scaleX') + (dir ? 0.1 : -0.1),
                duration: 100,
                onChange: function(value) {
                e.target.scaleX = value;
                canvas.renderAll();
                },
                onComplete: function() {
                e.target.setCoords();
                }
            });
            fabric.util.animate({
                startValue: e.target.get('scaleY'),
                endValue: e.target.get('scaleY') + (dir ? 0.1 : -0.1),
                duration: 100,
                onChange: function(value) {
                e.target.scaleY = value;
                canvas.renderAll();
                },
                onComplete: function() {
                e.target.setCoords();
                }
            });
        }
      }
      canvas.on('mouse:down', function(e) { animate(e, 1); });
      canvas.on('mouse:up', function(e) { animate(e, 0); });

    //Locks rotation to 45
    canvas.on('object:rotating', function(e) {
        if(e.target.angle > 45 && e.target.angle < 180){
            e.target.angle = 45;
        }
        if(e.target.angle >180 && e.target.angle < 315){
            e.target.angle = 315;
        }
    });
    </script>
</gardenCanvas>