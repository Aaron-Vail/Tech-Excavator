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
    <button id = "saveGarden" onclick="{saveGarden}">Save Garden</button>
    <button id = "loadPlot" onclick="{loadPlot}">Load Plot</button>
    <button id = "getId" onclick="{getId}">Get Id</button>
    <input type = "color" id = "color" value = "#9e6c3a" onchange="{colorSelector}"/>
    <button id = "colorBtn" onclick="{colorBtn}">Change Selection's Color</button>
    <span id = "height"></span>
    <span id = "width"></span>
</div>


<script>
    var self = this;
    //Setting up the canvas
        var canvas = this.__canvas = new fabric.Canvas('c',{
            backgroundColor: 'rgb(249, 252, 252)',
        });
         fabric.Object.prototype.transparentCorners = false;
         fabric.Object.prototype.originX = fabric.Object.prototype.originY = 'center';



    //Keeps the objects in the canvas, needs to be fixed
       canvas.observe("object:moving", function(e){
             var obj = e.target;
                // if object is too big ignore
       
               var halfw = obj.currentWidth/2;
               var halfh = obj.currentHeight/2;
               var bounds = {tl: {x: halfw, y:halfh},
                   br: {x: obj.canvas.width , y: obj.canvas.height }
                };
       
               // top-left  corner
               if(obj.top < bounds.br.y || obj.left < bounds.br.x ){
                   obj.top = Math.max(obj.top, '0'  );  
                   obj.left = Math.max(obj.left, '0' )  
               }
       
       
                   // alert("text");
               if(obj.top < bounds.tl.y || obj.left < bounds.tl.x){
                   obj.top = Math.max(obj.top, '10'  );
                   obj.left = Math.max(obj.left , '50' ) 
               }
       
       
               // bot-right corner
               if(obj.top > bounds.br.y || obj.left > bounds.br.x ){
                   obj.top = Math.min(obj.top, '800'  );  
                   obj.left = Math.min(obj.left, '1470' )  
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

        //Load a canvas from selected object
            GARDEN.on('gardenSelectionUpdated', function() {
                alert(GARDEN.currentGarden.plotsJson);
                if(GARDEN.currentGarden.plotsJson != 'empty'){
                    canvas.loadFromDatalessJSON(GARDEN.currentGarden.plotsJson);
                }else{
                    canvas.clear();
                    canvas.backgroundColor = "rgb(249, 252, 252)"
                }
            });
       });
       
           this.getId = function(){
             alert(canvas.getActiveObject().id);
           };
           this.colorSelector =  function(){
                canvas.getActiveObject().set("fill", $("#color").val());
                canvas.renderAll();
           };
           this.colorBtn = function(){
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
    //Slight size change on moving
    function animate(e, dir) {
        if (e.target) {
          fabric.util.animate({
            startValue: e.target.get('scaleX'),
            endValue: e.target.get('scaleX') + (dir ? 0.1 : -0.1),
            duration: 100,
            onChange: function(value) {
              e.target.scale(value);
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
    </script>









</gardenCanvas>