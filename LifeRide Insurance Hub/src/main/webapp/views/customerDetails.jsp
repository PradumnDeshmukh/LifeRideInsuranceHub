<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #0056b3;
        }

        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        table th {
            background-color: #0056b3;
            color: white;
        }

        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        table tr:hover {
            background-color: #ddd;
        }

        img {
            border-radius: 8px;
        }

        .policies {
            margin-top: 20px;
        }

        .no-data {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <h1>Customer Details</h1>
    <div class="container">
        <table>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
            <tr>
                <td>ID</td>
                <td>${customer.id}</td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>${customer.firstName}</td>
            </tr>
            <tr>
                <td>Middle Name</td>
                <td>${customer.middleName}</td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>${customer.lastName}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${customer.email}</td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td>${customer.mobileNumber}</td>
            </tr>
            <tr>
                <td>Photo</td>
                <td>
                    <c:if test="${not empty customer.photo}">
                        <img src="${customer.photo}" alt="Customer Photo" width="100" height="100" />
                    </c:if>
                    <c:if test="${empty customer.photo}">
                        No Photo Available
                    </c:if>
                </td>
            </tr>
        </table>

        <div class="policies">
            <h2>Policies:</h2>
            <c:if test="${not empty customer.policies}">
                <table>
                    <tr>
                        <th>Policy ID</th>
                        <th>Full Name</th>
                        <th>Address</th>
                        <th>Mobile</th>
                    </tr>
                    <c:forEach items="${customer.policies}" var="policy">
                        <tr>
                            <td>${policy.id}</td>
                            <td>${policy.fullName}</td>
                            <td>${policy.address}</td>
                            <td>${policy.mobile}</td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <c:if test="${empty customer.policies}">
                <p class="no-data">No policies associated with this customer.</p>
            </c:if>
        </div>
    </div>
</body>
</html>
