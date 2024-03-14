<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shape Cloning Demo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }
        h2 {
            color: #333;
            text-align: center;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }
        .shape {
            width: 150px;
            height: 150px;
            margin: 10px;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 24px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            cursor: pointer;
            transition: transform 0.3s;
        }
        .shape:hover {
            transform: scale(1.1);
        }
        .rectangle {
            background-color: #FF5733;
        }
        .circle {
            background-color: #3370FF;
            border-radius: 50%;
        }
        .copy {
            margin: 20px auto;
            text-align: center;
        }
        .copied {
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
     <h2>Shape Cloning Demo</h2>
    <div class="container">
        <div class="shape rectangle" onclick="copyShape('rectangle')">
            <div>Rectangle</div>
        </div>
        <div class="shape circle" onclick="copyShape('circle')">
            <div>Circle</div>
        </div>
    </div>
        </div>
    <% } %>
</body>
</html>
