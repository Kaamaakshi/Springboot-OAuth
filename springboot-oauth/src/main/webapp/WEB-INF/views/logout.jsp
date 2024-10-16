<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout Successful</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            max-width: 400px;
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff;
            color: white;
            border-bottom: none;
        }

        .card-body p {
            margin-bottom: 20px;
        }
        .highlight {
            background-color: #e2f0d9; /* Light green background */
            border: 1px solid #c3e6cb; /* Green border */
            padding: 15px; /* Padding for better spacing */
            border-radius: 5px; /* Rounded corners */
            color: red; /* Dark green text */
            font-weight: bold; /* Bold text */
            margin: 20px 0; /* Space above and below the highlighted message */
            text-align: center; /* Center the text */
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .lead {
            color: #555;
            font-size: 1.1rem;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card text-center">
        <div class="card-header">
            <h2>Logged Out</h2>
        </div>
        <div class="card-body">
<%--            <p class="highlight">You have successfully logged out.</p>--%>
            ${message}
            <p class="lead">We hope to see you again soon!</p>
            <a href="/" class="btn btn-primary">Login Again</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
