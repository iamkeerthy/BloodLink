<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BloodLink</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #8B0000; /* Dark red theme for BloodLink */
            color: white;
            padding: 15px 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        nav {
            background-color: #50C878;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }
        nav ul li {
            margin: 0 15px;
        }
        nav ul li a {
            display: block;
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        nav ul li a:hover {
            background-color: #555;
        }
        section {
            padding: 20px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        .cta-button {
            background-color: #8B0000;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 1.2em;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .cta-button:hover {
            background-color: #a00000;
        }
        .image-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .image-container img {
            width: 30%;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }
        .info-section {
            margin-top: 20px;
        }
        h3 {
            color: #8B0000;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to BloodLink</h1>
    <p>Your trusted partner in blood donation and management</p>
</header>

<nav>
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="donor/register.php">Donate Blood</a></li>
        <li><a href="patient/register.php">Request Blood</a></li>
        <li><a href="aboutus.php">About Us</a></li>
        <li><a href="contectus.php">Contact</a></li>
        <li><a href="admin/login.php">login</a></li>
    </ul>
</nav>
<br>
<br>
<section class="container">
    <h2>Why Blood Donation Matters</h2>
    <p>Blood donation is a noble cause that saves lives every day. At BloodLink, we connect donors with those in need, creating a life-saving network.</p>

    <div class="image-container">
        <img src="BD1.jpg" alt="Donate Blood">
        <img src="BD2.jpg" alt="Help Save Lives">
        <img src="BD3.jpg" alt="Blood Donation">
    </div>

    <div class="info-section">
        <h3>Become a Donor Today</h3>
        <p>By registering as a blood donor, you can make a direct impact on your community. Join BloodLink and help those in need of vital blood transfusions. Every donation can save up to three lives!</p>
        
        <h3>Our Impact</h3>
        <p>We collaborate with hospitals and medical facilities to ensure timely access to blood for patients requiring transfusions due to emergencies, surgeries, and chronic illnesses.</p>
    </div>

   <a href="donor/register.php"> <button class="cta-button" id="registerButton">Register Now</button></a>
</section>
<br>
<br>
<footer>
    <p>&copy; 2024 BloodLink | Designed by <a href="https://github.com/iamkeerthy" style="color: white;">DunsanKeerthikan</a></p>
</footer>

</body>
</html>
