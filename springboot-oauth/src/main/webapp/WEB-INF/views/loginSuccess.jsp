<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            max-width: 400px;
            width: 100%;
            transition: all 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.2);
        }

        .card img {
            border-radius: 50%;
            width: 130px;
            height: 130px;
            object-fit: cover;
            margin-bottom: 20px;
            border: 4px solid #e0e0e0;
        }

        .card h2 {
            margin: 15px 0;
            font-size: 1.75em;
            color: #333;
        }

        .card p {
            font-size: 1em;
            color: #777;
            margin: 5px 0;
        }

        .card .email {
            font-size: 0.95em;
            color: #555;
        }

        .card .logout-btn {
            background-color: #4285f4;
            color: #fff;
            border: none;
            padding: 12px 25px;
            border-radius: 8px;
            font-size: 1em;
            cursor: pointer;
            margin-top: 25px;
            transition: background-color 0.3s ease;
        }

        .card .logout-btn:hover {
            background-color: #357ae8;
        }

        .card .logout-btn:focus {
            outline: none;
        }
    </style>
</head>
<body>

<div class="card">
    <!-- Display user photo -->
    <img src="${photo}" alt="User Photo">
    <!-- Display user name -->
    <h2>${name}</h2>
    <!-- Display user email -->
    <p class="email">${email}</p>

    <!-- Logout button -->
    <form action="/logout">
        <button type="submit" class="logout-btn">Logout</button>
    </form>
</div>

</body>
</html>
