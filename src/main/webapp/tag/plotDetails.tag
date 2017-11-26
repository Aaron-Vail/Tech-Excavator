<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <plotDetails></plotDetails> -->
<plotDetails>
    <!-- HTML SPECIFIC TO THIS COMPONENT -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9" id="red">
            </div>
            <div class="col-md-3" id="blue">
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <table class="table table-bordered table-condensed">
                    <thead>
                        <tr>
                            <th>Color</th>
                            <th>Plot Name</th>
                            <th>Plant Type</th>
                            <th>Height</th>
                            <th>Width</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
    <!-- CSS SPECIFIC TO THIS COMPONENT -->
    <style>
        #red {
            background-color: red;
        }
        #blue {
            background-color: blue;
        }
        .plotsBar div {
            float: left;
            padding: 0;
        }
        .plotsBar .btn {
            border-radius: 0;
        }
        #plotColor, #plotName {
            width: 100%;
        }
    </style>

    <!-- Javascript SPECIFIC TO THIS COMPONENT -->
    <script>
        
    </script>
</plotDetails>