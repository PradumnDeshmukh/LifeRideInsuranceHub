<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Registration Form</title>

    <style> 
        body{
        background-color: pink;
        }

        .form-container {
            width: 500px;
           
            background: #edeeee;
            box-shadow: 0 4px 15px rgba(78, 13, 13, 0.25);
            border-radius: 8px solid red;
            padding: 20px;
            animation: fadeIn 0.5s ease-in-out;
            box-sizing: border-box;
            margin:Auto;
            background-color: red;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 1.8rem;
            letter-spacing: 0.5px;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 15px;
        }

        .form-group {
            flex: 1;
            display: flex;
            flex-direction: column;
            min-width: calc(50% - 15px);
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
            font-size: 0.9rem;
        }

        .form-group input {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 0.9rem;
            transition: border-color 0.3s, box-shadow 0.3s;
            box-sizing: border-box;
        }

        .form-group input:focus {
            outline: none;
            border-color: #ff6f61;
            box-shadow: 0 0 6px rgba(255, 111, 97, 0.5);
        }

        .form-group input[type="file"] {
            padding: 5px;
            font-size: 0.85rem;
        }

        .btn {
            width: 200px;
            padding: 12px;
            font-size: 1rem;
            font-weight: bold;
            background: #0bf149;
            border: none;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #e64e41;
        }

        .error {
            font-size: 0.8rem;
            color: red;
            margin-top: 5px;
        }

        @media (max-width: 768px) {
            .form-container {
                padding: 15px;
            }

            h2 {
                font-size: 1.5rem;
            }

            .form-group {
                min-width: 100%;
            }
        }
    </style>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const firstNameInput = document.getElementById("firstName");
            const middleNameInput = document.getElementById("middleName");
            const lastNameInput = document.getElementById("lastName");
            const fullNameInput = document.getElementById("fullName");

            function updateFullName() {
                const firstName = firstNameInput.value.trim();
                const middleName = middleNameInput.value.trim();
                const lastName = lastNameInput.value.trim();
                fullNameInput.value = [firstName, middleName, lastName].filter(Boolean).join(" ");
            }

            firstNameInput.addEventListener("input", updateFullName);
            middleNameInput.addEventListener("input", updateFullName);
            lastNameInput.addEventListener("input", updateFullName);
        });

        function displaySuccessMessage() {
            alert("Successfully registered");
        }
    </script>
</head>
<header> <jsp:include page="navbar.jsp"></jsp:include> <br></header>
<body>
    <div class="form-container">
        <h2>Register with Us</h2>
        <form action="insert" method="post" id="registrationForm">
            <div class="form-row">
                <div class="form-group">
                    <label for="firstName">First Name *</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>
                <div class="form-group">
                    <label for="middleName">Middle Name *</label>
                    <input type="text" id="middleName" name="middleName" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="lastName">Last Name *</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>
                <div class="form-group">
                    <label for="fullName">Full Name *</label>
                    <input type="text" id="fullName" name="fullName" readonly required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="mobileNumber">Mobile Number *</label>
                    <input type="text" id="mobileNumber" name="mobileNumber" maxlength="10" required>
                    <div class="error" id="mobileError"></div>
                </div>
                <div class="form-group">
                    <label for="photo">Photo *</label>
                    <input type="file" id="photo" name="photo" accept=".jpeg, .jpg, .png" required>
                    <div class="error" id="photoError"></div>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password *</label>
                    <input type="password" id="password" name="password" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password *</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                    <div class="error" id="passwordError"></div>
                </div>
            </div>
            <div class="button-container">
                <button type="submit" class="btn" onclick="displaySuccessMessage()">Register</button>
            </div>
        </form>
    </div>
</body>

</html>
