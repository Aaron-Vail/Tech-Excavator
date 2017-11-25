<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <gardenDropdown></gardenDropdown> -->
<gardenDropdown>

	<!-- HTML SPECIFIC TO THIS COMPONENT -->
	<div class="container-fluid">
	  <div class="row no-gutters">
	  	<div class="col-md-1">
	  		<button id="gardensButton" type="button" class="btn btn-default btn-static">Gardens</button>
	  	</div>
	  	<div class="col-md-6 dropdown">
			<select id="gardenDropDownItems" class="form-control">
			  <option>Please select a garden</option>	
			  <option each={ gardens } onchange={getGardenById} value={gardenId}>{gardenName}</option>
			</select>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="plusButton" type="button" class="btn btn-default" data-toggle="modal" data-target="#newGardenModal" onclick="{createNewGarden}"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="minusButton" type="button" class="btn btn-default" data-toggle="modal" data-target="#deleteGardenModal"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="saveButton" type="button" class="btn btn-default">Save</button>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="shareButton" type="button" class="btn btn-default">Share</button>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="shoppingListButton" type="button" class="btn btn-default">Shopping List</button>
	  	</div>
	  </div>
	</div>

	<!-- CREATE NEW GARDEN -->
	<div class="modal fade" id="newGardenModal" tabindex="-1" role="dialog">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">Enter new garden name:</h4>
	      </div>
	      <div class="modal-body">
	        <input type="text" name="new-garden-input" id="new-garden-input" class="form-control" placeholder="Grandpa's Potato Patch">
	      </div>
	      <div class="dropdown">
		  	<select id="regionDropdownMenuItems" class="form-control">
					<option style="display:none;" selected>Please select a region</option>
					<option value="1">Cold</option>
					<option value="2">Cool</option>
					<option value="3">Moderate</option>
					<option value="4">Warm</option>
					<option value="5">Hot</option>
				</select>
		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" id="newGardenCancelButton">Cancel</button>
	        <button type="button" class="btn btn-primary" id="newGardenSaveButton">Save</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<!-- DELETE GARDEN -->
	<div class="modal fade" id="deleteGardenModal" tabindex="-1" role="dialog">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">Are you sure you want to delete your garden?</h4>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" id="deleteGardenCancelButton">Cancel</button>
	        <button type="button" class="btn btn-primary" id="deleteGardenDeleteButton">Delete</button>
	      </div>
	    </div><!-- /.modal-content -->
	  </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<!-- CSS SPECIFIC TO THIS COMPONENT -->
	<style>

	</style>

	<!-- Javascript SPECIFIC TO THIS COMPONENT -->
	<script>
		var self = this;
		self.gardens = [];

		//RIOT Mount
		this.on('mount', function() {

			//Ran on login to get all gardens by user ID
			getCurrentGardens();

			//Run when updated garden is saved
			GARDEN.on('updatedGardenPull', function() {
				getCurrentGardens();
			})

			//Get all gardens by currentUserId and store in self.gardens array above
			function getCurrentGardens() {
				$.ajax({
					url: GARDEN.root + "user/currentUser",
					type: "GET",
					dataType: "json",
				}).done(function(data) {
					GARDEN.gardens = data.gardens;
					self.gardens = data.gardens;
					$("#usersEmailAddress").text(data.email);
					self.update();
				});
			}

			//Create new garden
			$("#newGardenSaveButton").on("click", function() {
				var newGardenName=$("#new-garden-input").val();
				var newGardenRegion=$("#regionDropdownMenuItems").val();
				event.stopPropagation();
				event.preventDefault();
				$.ajax({
					url: GARDEN.root + "newGarden",
					type: "POST",
					data: {
						gardenName: newGardenName,
						region: newGardenRegion
					},
					dataType: "json"
				}).done(function(data) {
					$('#newGardenModal').modal('hide');
					getCurrentGardens();
				});
			})

			//Capture selected garden object and place in GARDEN.currentGarden for global access
			$("select").on("change", function() {
				GARDEN.selectedGardenIndex = $("#gardenDropDownItems option:selected").index() - 1;
				GARDEN.currentGarden = self.gardens[GARDEN.selectedGardenIndex];
				GARDEN.trigger('gardenSelectionUpdated');
			});

			$("#saveButton").on("click", function() {
				GARDEN.trigger('saveButtonClicked');
			});


		})

	</script>

</gardenDropdown>
