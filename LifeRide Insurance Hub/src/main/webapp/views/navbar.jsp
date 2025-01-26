<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Navbar</title>

        
        <style>
        
        nav {
            background-color: #333;
            overflow: hidden;
            padding: 10px 0; /* Add some padding for spacing */
            position: fixed; /* Fix the nav bar at the top */
            top: 0;
            width: 100%; /* Ensure it spans the full width */
            z-index: 1000; /*
            ma Keep it above other elements */
            
        }
    
        nav a {
            float: left;
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            text-align: center;
        }
    
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
    
        .form-container {
            margin-top: 70px; /* Add top margin to avoid overlap with nav bar */
            width: 50%;
            height: 600px;
            background: #edeeeeef;
            box-shadow: 0 4px 15px rgba(78, 13, 13, 0.25);
            border-radius: 8px;
            padding: 20px;
            animation: fadeIn 0.5s ease-in-out;
        }
    </style>
</head>
<body>
    
<nav>
        <a href="/">Home</a>
        <a href="policy">Policy Form</a>
        <a href="car">Car Insurance</a>
        <a href="searchCustomer">Search Customer</a>
        <a href="ragister">Ragister</a>
          <a  href="id">Find ID</a>
             <a  href="display"> Display</a>
                
    </nav>
    
</body>
</html>
