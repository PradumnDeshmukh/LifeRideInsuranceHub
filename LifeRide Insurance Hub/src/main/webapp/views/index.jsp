<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Life Insurance Portal</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f8fa;
	color: #333;
	
}

nav a {
	color: white;
	text-decoration: none;
	padding: 10px 20px;
	font-weight: bold;
	transition: background-color 0.3s;
}

nav a:hover {
	background-color: #002266;
	border-radius: 5px;
}

.hero {
	text-align: center;
	padding: 60px 20px;
	background: linear-gradient(90deg, #0044cc, #66a3ff);
	color: white;
}

.hero h1 {
	font-size: 3rem;
	margin-bottom: 20px;
}

.hero p {
	font-size: 1.5rem;
	margin-bottom: 30px;
}

.cta-buttons {
	display: flex;
	justify-content: center;
	gap: 20px;
}

.cta-button {
	display: inline-block;
	padding: 15px 30px;
	font-size: 1rem;
	font-weight: bold;
	color: white;
	background-color: #002266;
	text-decoration: none;
	border-radius: 5px;
	transition: transform 0.3s, background-color 0.3s;
}

.cta-button:hover {
	background-color: #001144;
	transform: scale(1.05);
}

main {
	padding: 20px;
	text-align: center;
}

.card-section {
	display: flex;
	justify-content: center;
	gap: 20px;
	flex-wrap: wrap;
	padding: 20px;
}

.card {
	background: white;
	border: 1px solid red;
	border-radius: 10px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	width: 300px;
	text-align: center;
	overflow: hidden;
	margin:30px;
}

.card img {
	width: 100%;
	height: auto;
	border-bottom: 1px solid #ddd;
}

.card h3 {
	font-size: 1.5rem;
	margin: 15px 0;
}

.card p {
	font-size: 1rem;
	padding: 0 15px 15px;
	color: #555;
}

footer {
	text-align: center;
	padding: 20px;
	background-color: #002266;
	color: white;
}

footer p {
	margin: 0;
}
</style>
</head>
<body>
	<section class="hero">
		<h1>Secure Your Future with Confidence</h1>
		<p>Join thousands of families who trust us for a safer tomorrow.</p>
		<div class="cta-buttons">
			<a href="ragister" class="cta-button">Register</a> 
			<a href="login-page" class="cta-button">Login</a>
		</div>
	</section>

	<main>
		<h2>Why Choose Us?</h2>
		<p>We provide tailored insurance solutions to protect what matters most to you.</p>
		<p>Explore our wide range of plans and enjoy peace of mind knowing you're covered.</p>
	</main>

	<section class="card-section">
		<div class="card">
			<img src="image/1.webp" alt="Home Insurance">
			<h3>Life Insurance</h3>
			<p>Protect your loved ones with comprehensive life insurance plans tailored to your needs.</p>
		</div>
		<div class="card">
			<img src="image/2.webp" alt="Car Insurance">
			<h3>Car Insurance</h3>
			<p>Drive with confidence knowing your car is covered for any unforeseen events.</p>
		</div>
		<div class="card">
			<img src="image/3.webp" alt="Home Insurance">
			<h3>Home Insurance</h3>
			<p>Secure your home and belongings with our reliable insurance plans.</p>
		</div>
	</section>

	<footer>
		<p>&copy; 2024 Life Insurance Portal. All rights reserved.</p>
	</footer>
</body>
</html>
