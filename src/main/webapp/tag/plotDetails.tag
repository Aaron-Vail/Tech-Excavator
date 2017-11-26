<!-- THIS IS A RIOT COMPONENT - ALL OF THIS CODE IS PLACED IN home.html USING <plotDetails></plotDetails> -->
<plotDetails>
    <!-- HTML SPECIFIC TO THIS COMPONENT -->
    <div class="container-fluid">
        <div class="row plotDetailsRow">
            <div class="col-md-9">
                <table class="table table-condensed table-fixed">
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
                            <td class="col-md-1"><input type="color" value="#9E6C3A"></td>
                            <td class="col-md-3">Cucumbert Patch</td>
                            <td class="col-md-3 plantDropDown" style="padding: 0px 25px 0px 0px;">
                                <select id="plantDropDownItems" class="form-control">
                                    <option>Please select a plant type</option>
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
        input[type="color"] {
            -webkit-appearance: none;
            padding: 0;
            border: none;
            width: 100%;
            height: 25px;
        }




    </style>

    <!-- Javascript SPECIFIC TO THIS COMPONENT -->
    <script>
        
    </script>
</plotDetails>