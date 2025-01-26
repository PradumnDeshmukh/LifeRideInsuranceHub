<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Life Insurance Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-top: 100px;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }
       
        nav {
            background-color: #003399;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #0055ff;
        }
        main {
            padding: 2rem;
        }
        footer {
            text-align: center;
            padding: 1rem;
            background-color: #0044cc;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        .hero {
            text-align: center;
            padding: 2rem;
            background-color: #e6f2ff;
        }
        .hero h1 {
            color: #0044cc;
        }
        .cta-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: white;
            background-color: #0044cc;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 1rem;
        }
        .cta-button:hover {
            background-color: #003399;
        }
        .form-section {
            margin: 2rem auto;
            padding: 2rem;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        .form-section h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #0044cc;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input:focus {
            border-color: #0044cc;
            outline: none;
        }
        .submit-button {
            display: block;
            width: 100%;
            padding: 0.75rem;
            background-color: #0044cc;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #003399;
        }
    </style>
</head>

<body>
  <jsp:include page="navbar.jsp"></jsp:include> <br>
        <h1>Life Insurance Portal</h1>
  
    
    <main>
        <section class="hero">
            <h1>Secure Your Future Today</h1>
            <p>Your life insurance partner for a better tomorrow.</p>
            <a href="#plans" class="cta-button">Explore Plans</a>
        </section>
        <section class="form-section">
            <h2>Insured's Details</h2>
            <form action="fill" method="post">
            
            <div class="form-group">
                    <label for="customer_id">customer_id*</label>
                    <input type="number" id="customer_id" name="customer.id" placeholder="id" required>
                </div>
            
               <div class="form-group">
                    <label for="fullName">Full Name *</label>
                    <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                    <label for="address">Address *</label>
                    <input type="text" id="address" name="address" placeholder="Enter your address" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile Number *</label>
                    <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                </div>
                
                
                
                
                <button type="submit" class="submit-button">Submit</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Life Insurance Portal. All rights reserved.</p>
    </footer>
</body>
</html>