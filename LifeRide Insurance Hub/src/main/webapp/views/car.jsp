<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Information Form</title>
    <style>
        body{
            background-color: crimson;
           
        }
        .vehicle {
            border: 2px solid red;
            width: 1000px;
            margin: 20px auto;
            padding: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background-color:antiquewhite;
           background-image: url("image/2.webp");
        
            
        }

        table {
            margin: 0 auto;
            width: 100%;
            border-spacing: 15px;
        }

        th, td {
            text-align: left;
            padding: 10px;
            
        }

        th {
            text-align: right;
        }

        input[type="text"], input[type="file"] {
            width: 90%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<jsp:include page="navbar.jsp"></jsp:include> 
<body>
     
    <div class="vehicle">
     
        <h2>Vehicle Information Form</h2>
        <form action="vahical" method="Post">
           
            <table>
                <tr>
                    <th><label for="policyNumber">Policy Number:</label></th>
                    <td><input type="text" id="policyNumber" name="policyNumber" ></td>
                    <th><label for="vehicalNumber">Vehicle Number:</label></th>
                    <td><input type="text" id="vehicalNumber" name="vehicalNumber" required></td>
                </tr>
                <tr>
                    <th><label for="vehicalmodel">Vehicle Model:</label></th>
                    <td><input type="text" id="vehicalmodel" name="vehicalmodel" required></td>
                    <th><label for="vehicalmanufacture">Vehicle Manufacturer:</label></th>
                    <td><input type="text" id="vehicalmanufacture" name="vehicalmanufacture" required></td>
                </tr>
                <tr>
                    <th><label for="yearofFacuring">Year of Manufacturing:</label></th>
                    <td><input type="number" id="yearofFacuring" name="yearofFacuring" required></td>
                    <th><label for="chassinumber">Vehicle Chassis Number:</label></th>
                    <td><input type="number" id="chassinumber" name="chassinumber" required></td>
                </tr>
                <tr>
                    <th><label for="fuleType">Fuel Type:</label></th>
                    <td><input type="text" id="fuleType" name="fuleType" required></td>
                    <th><label for="vehicalbodyType">Vehicle Body Type:</label></th>
                    <td><input type="text" id="vehicalbodyType" name="vehicalbodyType" required></td>
                </tr>
                <tr>
                    <th><label for="CubikCapacity">Cubic Capacity:</label></th>
                    <td><input type="text" id="CubikCapacity" name="CubikCapacity" required></td>
                    <th><label for="VehicalColor">Vehicle Color:</label></th>
                    <td><input type="text" id="VehicalColor" name="VehicalColor" required></td>
                </tr>
                <tr>
                    <th><label for="CoverPriodStart">Cover Period Start:</label></th>
                    <td><input type="text" id="CoverPriodStart" name="CoverPriodStart" required></td>
                    <th><label for="CoverperopdEnd">Cover Period End:</label></th>
                    <td><input type="text" id="CoverperopdEnd" name="CoverperopdEnd" required></td>
                </tr>
                <tr>
                    <th><label for="policyReceipt">Policy Receipt:</label></th>
                    <td><input type="text" id="policyReceipt" name="policyReceipt" required></td>
                    <th><label for="uploadDoucument">Upload Document:</label></th>
                    <td><input type="file" id="uploadDoucument" name="uploadDoucument" accept="image/*" capture="camera" required></td>
                </tr>
            </table>
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>
