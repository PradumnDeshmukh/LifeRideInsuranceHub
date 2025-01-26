<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
/* General Styling */
body {
	font-family: Arial, sans-serif;
	background: linear-gradient(to right, #007BFF, #00C6FF);
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

/* Navbar Styling */
header {
	width: 100%;
	background-color: #0044cc;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	position: fixed;
	top: 0;
	z-index: 1000;
}

header .navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
	color: white;
}

header .navbar a {
	color: white;
	text-decoration: none;
	font-size: 16px;
	padding: 10px;
	transition: background-color 0.3s;
}

header .navbar a:hover {
	background-color: #003399;
	border-radius: 4px;
}

/* Login Container Styling */
.login-container {
	background-color: #ffffff;
	padding: 30px 40px;
	border-radius: 10px;
	box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
	width: 100%;
	max-width: 400px;
	text-align: center;
}

.login-container h1 {
	font-size: 28px;
	margin-bottom: 20px;
	color: #0044cc;
}

.login-container input {
	width: 100%;
	padding: 12px 15px;
	margin: 10px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.login-container button {
	background-color: #007BFF;
	color: #ffffff;
	font-size: 18px;
	padding: 12px;
	width: 100%;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.login-container button:hover {
	background-color: #0056b3;
}

.error {
	color: #ff4d4d;
	font-size: 14px;
	margin-top: 10px;
}

/* Responsive Styling */
@media (max-width: 768px) {
	.login-container {
		padding: 20px;
	}
}
</style>
</head>
<body>
	<header>
		<jsp:include page="navbar.jsp"></jsp:include> 
	</header>
	<div class="login-container">
		<h1>Login</h1>
		<form action="login-page" method="post">
			<input type="email" name="email" placeholder="Enter your email" required>
			<input type="password" name="password" placeholder="Enter your password" required>
			<button type="submit">Login</button>
		</form>
		<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null) {
		%>
		<div class="error"><%=errorMessage%></div>
		<%
		}
		%>
	</div>
</body>
</html>
