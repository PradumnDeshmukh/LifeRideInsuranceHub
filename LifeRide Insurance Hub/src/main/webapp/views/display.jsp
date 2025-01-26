<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">

<style >
.container mt-4{
margin-top:30px;}
</style>
</head>
<body>
    <jsp:include page="navbar.jsp"></jsp:include> 

    <div class="container mt-4">
        <h1 class="text-center">Customer Details</h1>
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Confirm Password</th>
                    <th>Mobile</th>
                    <th>Photo</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="customer" items="${Customer}">
                    <tr>
                        <td>${customer.id}</td>
                        <td>${customer.firstName}</td>
                        <td>${customer.middleName}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.email}</td>
                        <td>${customer.password}</td>
                        <td>${customer.confirmPassword}</td>
                        <td>${customer.mobileNumber}</td>
                        <td>
                            <c:if test="${not empty customer.photo}">
                                <img src="${customer.photo}" alt="Photo" width="50" height="50">
                            </c:if>
                        </td>
                        <td>
                            <a href="update?id=${customer.id}" class="btn btn-warning btn-sm">Update</a>
                            <a href="deletebyid?id=${customer.id}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
