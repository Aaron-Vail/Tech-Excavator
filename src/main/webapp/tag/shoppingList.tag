<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <gardenCanvas></gardenCanvas> -->

<shoppingList>
    <script>
        var self = this;

		this.on("mount", function(){
			
	        GARDEN.on("shoppingListButtonClicked", function(){
                
                GARDEN.gardens.forEach(function(garden){
                	
                	$.ajax({
                        url: GARDEN.root + "getPlotsByGarden?gardenId=" + garden.gardenId,
                        method: "GET"
                    }).then(function(plots){

                        if(plots.length != 0){
                            var plotsJsonObject = JSON.parse(garden.plotsJson).objects;
                            
                            plotsJsonObject.forEach(function(plot){

                                plots.forEach(function(plotDb){

                                    if(plot.plotId = plotDb.plotId){
                                        GARDEN.plants.forEach(function(plant){

                                            if(plant.plantId == plotDb.plantId){
                                                console.log(plotDb.plotName + " " + plant.commonName);
                                                console.log("Price per plant: " + plant.pricePerPlant);
                                                console.log("Number of plants needed " + Math.ceil(plot.height*plot.scaleY*plot.scaleX*plot.width/400/plant.areaPerPlant));
                                                console.log("Cost for plants: " + (plot.height*plot.scaleY*plot.scaleX*plot.width/400*plant.pricePerPlant/plant.areaPerPlant).toFixed(2));
                                            }
                                        });
                                    }
                                })
                            })
                        }
                    });

                });
	
	        });
		});

    </script>
</shoppingList>