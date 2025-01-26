<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Multi-Role Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f9f9f9;
}

header {
	background-color: #1abc9c;
	color: white;
	padding: 1rem;
	text-align: center;
}

nav {
	background-color: #333;
	padding: 1rem;
	display: flex;
	justify-content: space-around;
	position: sticky;
	top: 0;
	z-index: 1000;
	transition: background-color 0.5s, box-shadow 0.5s;
}

nav.scrolled {
	background-color: #444;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

nav a {
	color: white;
	text-decoration: none;
	padding: 0.5rem 1rem;
	border-radius: 5px;
	transition: background-color 0.3s, transform 0.3s;
}

nav a:hover {
	background-color: #575757;
	transform: scale(1.1);
}

.container {
	display: flex;
	flex-wrap: wrap;
	padding: 2rem;
}

.card {
	background-color: white;
	margin: 1rem;
	padding: 2rem;
	border-radius: 10px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	width: 30%;
	transition: transform 0.3s;
}

.card:hover {
	transform: translateY(-5px);
}

.card h3 {
	margin-top: 0;
	color: #0044cc;
}

.card p {
	color: #555;
}

button {
	background-color: #0044cc;
	color: white;
	border: none;
	padding: 0.5rem 1rem;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #003399;
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
</style>
<script>
window.addEventListener('scroll', () => {
	const nav = document.querySelector('nav');
	if (window.scrollY > 50) {
		nav.classList.add('scrolled');
	} else {
		nav.classList.remove('scrolled');
	}
});
</script>
</head>
<jsp:include page="navbar.jsp"></jsp:include> 
<body>
	<a href="index" style="position: absolute; top: 10px; right: 10px; color: white; text-decoration: none;">Logout</a>
	<header>
		<h1>Welcome, ${username}!</h1>
		<h1>Welcome to the Multi-Role Dashboard</h1>
		<p>You're successfully logged in.</p>
	</header>
	<nav>
		<a href="#admin">Admin</a>
		<a href="#user">User</a>
		<a href="#manager">Manager</a>
	</nav>
	<div class="container">
		<div class="card" id="admin">
			<h3>Admin Section</h3>
			<p>Manage users, view analytics, and oversee the platform's overall performance.</p>
			<button onclick="alert('Admin-specific action!')">Admin Action</button>
		</div>
		<div class="card" id="user">
			<h3>User Section</h3>
			<p>Access your profile, view reports, and manage personal settings.</p>
			<button onclick="alert('User-specific action!')">User Action</button>
		</div>
		<div class="card" id="manager">
			<h3>Manager Section</h3>
			<p>View team performance, assign tasks, and oversee projects.</p>
			<button onclick="alert('Manager-specific action!')">Manager Action</button>
		</div>
	</div>
	<footer>
		<p>&copy; 2024 Multi-Role Dashboard. All rights reserved.</p>
	</footer>
</body>
</html>
