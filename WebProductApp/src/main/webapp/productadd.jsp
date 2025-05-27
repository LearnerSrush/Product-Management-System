<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #e0f7fa, #e1bee7);
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .form-container {
            width: 100%;
            max-width: 420px;
            background: rgba(255, 255, 255, 0.85);
            padding: 40px 35px;
            border-radius: 18px;
            backdrop-filter: blur(12px);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.3s;
        }

        .form-container:hover {
            transform: scale(1.01);
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 30px;
            font-size: 24px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #333;
            font-weight: 500;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 18px;
            border: none;
            border-radius: 10px;
            background-color: #f3e5f5;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            background-color: #e1bee7;
            box-shadow: 0 0 5px rgba(106, 27, 154, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            background: linear-gradient(to right, #7b1fa2, #512da8);
            color: white;
            border: none;
            padding: 14px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 10px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #512da8, #311b92);
            transform: translateY(-1px);
            box-shadow: 0 8px 16px rgba(81, 45, 168, 0.3);
        }

        .message {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
            font-weight: 500;
            padding: 10px 14px;
            border-radius: 8px;
        }

        .success {
            background-color: #e8f5e9;
            color: #2e7d32;
            border: 1px solid #81c784;
        }

        .error {
            background-color: #ffebee;
            color: #c62828;
            border: 1px solid #ef9a9a;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>➕ Add New Product</h2>
        <form action="addProduct" method="post">
            <label for="productID">Product ID</label>
            <input type="number" name="productID" id="productID" required>

            <label for="productName">Name</label>
            <input type="text" name="productName" id="productName" required>

            <label for="category">Category</label>
            <input type="text" name="category" id="category" required>

            <label for="price">Price</label>
            <input type="number" step="0.01" name="price" id="price" required>

            <label for="quantity">Quantity</label>
            <input type="number" name="quantity" id="quantity" required>

            <input type="submit" value="Add Product">
        </form>

        <div class="message 
            <%= (request.getAttribute("status") != null && request.getAttribute("status").equals("error")) ? "error" : 
                  (request.getAttribute("status") != null ? "success" : "") %>">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
    </div>
</body>
</html>
