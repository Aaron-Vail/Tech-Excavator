<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <gardenCanvas></gardenCanvas> -->

<gardenCanvas>
    <script>
    
		riot.on("mount", function(){
			
	        GARDEN.on("shoppingListButtonClicked", function(){
	            
	            console.log(GARDEN.currentUser);
	
	        });
		});

    </script>
</gardenCanvas>