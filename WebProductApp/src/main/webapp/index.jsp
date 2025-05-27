<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management System</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f3e5f5, #ede7f6);
            text-align: center;
            margin: 0;
            padding: 50px 0;
        }

        h1 {
            color: #6a1b9a;
            font-size: 32px;
            margin-bottom: 40px;
            font-weight: bold;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .link {
            display: block;
            margin: 12px 0;
            padding: 14px 24px;
            background-color: #8e24aa; /* Purple */
            color: white;
            width: 280px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .link:hover {
            background-color: #6a1b9a;
            transform: scale(1.03);
        }

        @media (max-width: 480px) {
            .link {
                width: 80%;
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <h1>📦 Product Management System</h1>
    <div class="container">
        <a class="link" href="productadd.jsp">➕ Add Product</a>
        <a class="link" href="productupdate.jsp">✏️ Update Product</a>
        <a class="link" href="productdelete.jsp">🗑️ Delete Product</a>
        <a class="link" href="displayProducts">📋 Display All Products</a>
        <a class="link" href="report_form.jsp">📊 Generate Reports</a>
    </div>
</body>
</html>
