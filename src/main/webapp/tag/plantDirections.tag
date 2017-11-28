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
                <h3>Tomatoes</h3>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
        </div>
    </div>

    <!-- CSS SPECIFIC TO THIS COMPONENT -->
    <style>

        .mainPlantDirectionsDiv {
            height: 150px;
        }
        #plantImage {
            height: 150px;
            margin: 4px 0px 0px 0px;
            padding-right: 15px;
        }
        #plantDirectionsHeader {
            text-align: center;
            font-family: 'Bad Script', cursive;
            border-bottom: 1px solid lightgray;
            font-size: 36px;
            margin: 15px 25px 10px 0px;
        }
        #plantDirectionsItem {
            margin-top: 0;
        }
        h3 {
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