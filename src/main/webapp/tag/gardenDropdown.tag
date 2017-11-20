<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <gardenDropdown></gardenDropdown> -->
<gardenDropdown>

	<!-- HTML SPECIFIC TO THIS COMPONENT -->
	<div class="container-fluid">
	  <div class="row no-gutters">
	  	<div class="col-md-1">
	  		<button id="gardensButton" type="button" class="btn btn-default">Gardens</button>
	  	</div>
	  	<div class="col-md-6 dropdown">
	  		<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Name of Garden Goes Here<span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="gardenDropDownItems" aria-labelledby="dropdownMenu1"></ul>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="minusButton" type="button" class="btn btn-default"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
	  	</div>
	  	<div class="col-md-1">
	  		<button id="plusButton" type="button" class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
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

	<!-- CSS SPECIFIC TO THIS COMPONENT -->
	<style>

	</style>

	<!-- Javascript SPECIFIC TO THIS COMPONENT -->
	<script>
		var self = this;
	</script>

</gardenDropdown>