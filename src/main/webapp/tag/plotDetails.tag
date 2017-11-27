<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <plotDetails></plotDetails> -->
<plotDetails>
    <!-- HTML SPECIFIC TO THIS COMPONENT -->
    <div class="container-fluid">
        <div class="row plotDetailsRow">
            <div class="col-md-12">
                <table class="table table-fixed">
                    <thead>
                        <tr>
                            <th class="col-md-1">Color</th>
                            <th class="col-md-3">Plot Name</th>
                            <th class="col-md-3">Plant Type</th>
                            <th class="col-md-2">Width</th>
                            <th class="col-md-2">Height</th>
                            <th class="col-md-1">Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr each={ plots } id="row{plotId}">
                            <td class="col-md-1" id="colorBox"><input type="color" value={ fill } data-plotId={plotId} onchange={colorSelector}></td>
                            <td class="col-md-3">{plotName}</td>
                            <td class="col-md-3" id="plantDropDown">
                                <select id="selectedPlant">
                                    <option each={ plants } value={plantId} data-ppa = {pricePerPlant / areaPerPlant}>{commonName}</option>
                                </select>
                            </td>
                            <td class="col-md-2" id="width{plotId}">{ width }ft</td>
                            <td class="col-md-2" id="height{plotId}">{ height }ft</td>
                            <td class="col-md-1" id = "price{plotId}"> $Cash </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- CSS SPECIFIC TO THIS COMPONENT -->
    <style>
        .plotDetailsRow {
            padding-left: 15px;
        }
        .table-fixed {
            margin-bottom: 0;
        }
        .table-fixed thead {
            width: 100%;
        }
        .table-fixed tbody {
            height: 155px;
            overflow-y: auto;
            width: 100%;
        }
        .table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
            display: block;
        }
        .table-fixed tbody td, .table-fixed thead > tr> th {
            float: left;
            border-bottom-width: 0;
        }
        #colorBox {
            padding-bottom: 0px;
        }
        #plantDropDown {
            padding-bottom: 0px;
        }
        
    </style>

    <!-- Javascript SPECIFIC TO THIS COMPONENT -->
    <script>
        var self = this;
		self.plants = [];
        self.plots = [];

		//RIOT Mount
		this.on('mount', function() {

            getAllPlants()

			//Get all plants
			function getAllPlants() {
				$.ajax({
					url: GARDEN.root + "getAllPlants",
					type: "GET",
					dataType: "json"
				}).done(function(data) {
					GARDEN.plants = data;
					self.plants = data;
                    self.update();
				});
			}

            //Load plots when a garden is selected
            GARDEN.on('gardenSelectionUpdated', function() {
                $.ajax({
                    url: GARDEN.root + "getPlotsByGarden?gardenId=" + GARDEN.currentGarden.gardenId,
                    type: "GET",
                }).then(function(data){
                    GARDEN.currentGarden.plotInfo = data;

                    var plotObjects = JSON.parse(GARDEN.currentGarden.plotsJson).objects;
                    
                    GARDEN.currentGarden.plotInfo.forEach(function(e1) {
                        plotObjects.forEach(function(e2){
                            if(e1.plotId == e2.id){
                                e1.height = e2.height * e2.scaleY / 20;
                                e1.width = e2.width * e2.scaleX / 20;
                                e1.fill = e2.fill;
                            }
                        },this)
                    }, this);
                    
                    //console.log(GARDEN.currentGarden.plotInfo);

                    self.plots = GARDEN.currentGarden.plotInfo;
                    self.update();

                    GARDEN.currentGarden.plotInfo.forEach(function(event){
                        $("#row" + event.plotId + " #selectedPlant option[value='" + event.plantId +"']").attr("selected","selected");
                        GARDEN.plants.forEach(function(plant){
                            if(plant.plantId == event.plantId){
                                $("#price" + event.plotId).text("$" + (event.height*event.width*plant.pricePerPlant/plant.areaPerPlant).toFixed(2));
                            }
                        }, this)
                    },this);


                })
            });
            this.colorSelector = function(e){
                GARDEN.trigger("colorUpdate",{"plotId":$(e.target).attr("data-plotId"),"fill":$(e.target).val()})
            }
            //Save new plots to database
            // function saveNewPlots() {
            //     var selectedPlantId=$("#selectedPlant").val();
            //     $.ajax({
            //         url: GARDEN.root + "savePlots",
            //         type: "POST",
            //         data: {
            //             gardenId: GARDEN.currentGarden.gardenId,
            //             plantId: selectedPlantId,
            //             plotId: 3,
            //         }
            //     }).done(function(data) {

            //     })
            // }


		})
    </script>
</plotDetails>