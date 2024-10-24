<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | BloodLink</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #eef2f3;
            color: #444;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #b22222; /* Firebrick */
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            background-color: #444;
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
            padding: 30px 20px;
            max-width: 800px;
            margin: auto;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px 0;
            position: relative;
            bottom: 0;
            width: 100%;
        }
        h2 {
            color: #b22222; /* Firebrick */
            margin-top: 20px;
        }
        p {
            line-height: 1.6;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"],
        input[type="email"],
        textarea {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            background-color: #b22222;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            font-size: 1em;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #a00000;
        }
    </style>
</head>
<body>

<header>
    <h1>Contact BloodLink</h1>
    <p>We'd love to hear from you!</p>
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
<section>
    <h2>Get in Touch</h2>
    <form id="contactForm">
        <input type="text" id="name" placeholder="Your Name" required>
        <input type="email" id="email" placeholder="Your Email" required>
        <textarea id="message" rows="4" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
    </form>
    <p id="responseMessage" style="color: green; margin-top: 15px;"></p>
</section>
<br>
<br>
<footer>
    <p>&copy; 2024 BloodLink | Designed by <a href="https://github.com/iamkeerthy" style="color: white;">DunsanKeerthikan</a></p>
</footer>

<script>
    document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent the default form submission
        
        // Get form values
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const message = document.getElementById('message').value;

        // You can handle form submission logic here (e.g., send to server)
        // For this example, just show a confirmation message
        document.getElementById('responseMessage').innerText = 'Thank you, ' + name + '! We will conduct soon...';
        
        // Reset the form
        document.getElementById('contactForm').reset();
    });
</script>

</body>
</html>
