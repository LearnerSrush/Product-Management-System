<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #fde0dc, #ffebee);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
        }

        .form-container {
            width: 340px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 14px;
            box-shadow: 0 12px 25px rgba(244, 67, 54, 0.15);
            backdrop-filter: blur(8px);
        }

        h2 {
            text-align: center;
            color: #c62828;
            margin-bottom: 20px;
            font-size: 22px;
        }

        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            margin-bottom: 18px;
            border: none;
            border-radius: 8px;
            font-size: 15px;
        }

        input[type="number"] {
            background-color: #fff5f5;
        }

        input[type="number"]:focus {
            outline: none;
            background-color: #ffebee;
            box-shadow: 0 0 6px rgba(198, 40, 40, 0.3);
        }

        input[type="submit"] {
            background: linear-gradient(to right, #e53935, #c62828);
            color: white;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #c62828, #b71c1c);
            transform: translateY(-2px);
        }

        .message {
            margin-top: 15px;
            text-align: center;
            font-weight: 500;
            font-size: 14px;
            padding: 10px;
            border-radius: 8px;
        }

        .success {
            color: #1b5e20;
            background-color: #e8f5e9;
            border-left: 5px solid #43a047;
        }

        .error {
            color: #b71c1c;
            background-color: #fce4ec;
            border-left: 5px solid #e53935;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>🗑️ Delete Product</h2>
        <form action="deleteProduct" method="post">
            <label for="productID">Product ID</label>
            <input type="number" name="productID" id="productID" required>
            <input type="submit" value="Delete Product">
        </form>

        <div class="message 
            <%= (request.getAttribute("status") != null && request.getAttribute("status").equals("error")) ? "error" : "success" %>">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
    </div>
</body>
</html>
