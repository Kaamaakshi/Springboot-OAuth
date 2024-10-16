<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.02); /* Slight zoom on hover */
        }

        .btn-google {
            color: #fff;
            background-color: #db4437;
            padding: 10px 20px;
            width: 100%; /* Full-width button */
            border-radius: 30px;
        }

        .btn-google i {
            margin-right: 8px;
        }

        .btn-google:hover {
            background-color: #c23321;
        }

        .card-header {
            background-color: #4285f4;
            color: white;
            border-bottom: none;
        }

        .card-body h5 {
            color: #333;
            margin-bottom: 20px;
        }

        .card-footer {
            background-color: #fff;
            border-top: none;
        }

        .container {
            max-width: 400px;
        }

        .footer-text {
            font-size: 0.85rem;
            color: #666;
        }

        .alert {
            margin-bottom: 20px; /* Space below the alert */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card text-center">
        <div class="card-header">

            <h2>Welcome to Our Application!</h2>
        </div>
        <div class="card-body">


            <h5 class="card-title">Sign up to get started</h5>
            <!-- Google OAuth button -->
            <a href="<%= request.getContextPath() %>/oauth2/authorization/google" class="btn btn-google" aria-label="Sign up with Google">
                <i class="fab fa-google"></i> Sign Up with Google
            </a>
        </div>

    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
