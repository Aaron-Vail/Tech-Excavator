<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <plotDetails></plotDetails> -->
<plantDirections>
   <!-- HTML SPECIFIC TO THIS COMPONENT -->
   <div class="container-fluid mainPlantDirectionsDiv">
        <div class="row">
            <div class="col-md-12 headerBackground">
                <h2 id="plantDirectionsHeader">Planting Directions</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <img src="tomato.jpg" id="plantImage" class="pull-left"/>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
        </div>
    </div>
<!-- 

    <div class="col-md-12">
        <div class="pull-left"><img src="YourImage.png"/></div>
        <div class="pull-left">Your text goes here......</div>
    </div> -->

    <!-- CSS SPECIFIC TO THIS COMPONENT -->
    <style>

        .mainPlantDirectionsDiv {
            height: 250px;
        }
        #plantImage {
            height: 150px;
            margin: 4px 0px 0px 0px;
            padding-right: 15px;
        }
        #plantDirectionsHeader {
            margin: 8px 25px 15px 0px;
        }
        #plantDirectionsItem {
            margin-top: 0;
        }
        /* img {
            object-fit: cover;
        } */

    </style>

    <!-- Javascript SPECIFIC TO THIS COMPONENT -->
    <script>

        //RIOT Mount
        this.on('mount', function() {
            
        });

    </script>

</plantDirections>