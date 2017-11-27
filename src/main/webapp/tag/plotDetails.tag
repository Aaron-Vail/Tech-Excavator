<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <plotDetails></plotDetails> -->
<plotDetails>
    <!-- HTML SPECIFIC TO THIS COMPONENT -->
    <div class="container-fluid">
        <div class="row plotDetailsRow">
            <div class="col-md-9">
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
                        <tr>
                            <td class="col-md-1" id="colorBox"><input type="color" value="#9E6C3A"></td>
                            <td class="col-md-3">Cucumber Patch</td>
                            <td class="col-md-3" id="plantDropDown">
                                <select id="selectedPlant">
                                    <option each={ plants } value={plantId}>{commonName}</option>
                                </select>
                            </td>
                            <td class="col-md-2">20ft</td>
                            <td class="col-md-2">10ft</td>
                            <td class="col-md-1">$100</td>
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
                })
            });
            //Save new plots to database
            function saveNewPlots() {
                var selectedPlantId=$("#selectedPlant").val();
                $.ajax({
                    url: GARDEN.root + "savePlots",
                    type: "POST",
                    data: {
                        gardenId: GARDEN.currentGarden.gardenId,
                        plantId: selectedPlantId,
                        plotId: 3,
                    }
                }).done(function(data) {

                })
            }


		})
    </script>
</plotDetails>