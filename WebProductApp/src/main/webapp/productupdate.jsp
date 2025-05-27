<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f3e5f5, #ede7f6); /* Soft purple gradient */
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            width: 100%;
            max-width: 420px;
            background: rgba(255, 255, 255, 0.95);
            padding: 40px 30px;
            border-radius: 16px;
            box-shadow: 0 12px 28px rgba(103, 58, 183, 0.2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.3s ease;
        }

        .form-container:hover {
            transform: scale(1.01);
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 25px;
            font-size: 24px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
            color: #4a148c;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px 14px;
            margin-bottom: 18px;
            border: none;
            border-radius: 10px;
            background-color: #f8f5fc;
            font-size: 15px;
            transition: border 0.3s, background 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            background-color: #ede7f6;
            box-shadow: 0 0 6px rgba(106, 27, 154, 0.3);
        }

        input[type="submit"] {
            width: 100%;
            background: linear-gradient(to right, #ab47bc, #8e24aa);
            color: white;
            border: none;
            padding: 14px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #8e24aa, #6a1b9a);
            transform: translateY(-2px);
        }

        .message {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
            font-weight: 500;
            color: #4a148c;
            background-color: #f3e5f5;
            padding: 10px 15px;
            border-radius: 8px;
            border-left: 5px solid #8e24aa;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>🛠️ Update Product Details</h2>
        <form action="updateProduct" method="post">
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

            <input type="submit" value="Update Product">
        </form>

        <div class="message">
            <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
        </div>
    </div>
</body>
</html>
