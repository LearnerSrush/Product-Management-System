<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.model.Product" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f3e5f5, #e8f5e9);
            margin: 0;
            padding: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: #6a1b9a;
            font-size: 30px;
            margin-bottom: 25px;
            font-weight: bold;
        }

        .message {
            background-color: #ede7f6;
            color: #4a148c;
            padding: 12px 20px;
            border-left: 5px solid #ab47bc;
            border-radius: 8px;
            font-size: 16px;
            margin-bottom: 20px;
            font-weight: bold;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        table {
            width: 90%;
            max-width: 1000px;
            border-collapse: collapse;
            background-color: #ffffff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px 20px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
        }

        th {
            background-color: #8e24aa;
            color: white;
            position: sticky;
            top: 0;
            z-index: 1;
        }

        td {
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f3e5f5;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        tr:hover {
            background-color: #ce93d8;
            transition: background 0.3s ease;
        }

        .no-products {
            font-size: 16px;
            color: #777;
            margin-top: 25px;
            padding: 12px 18px;
            background-color: #fff3e0;
            border: 1px solid #ffcc80;
            border-radius: 8px;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            table, th, td {
                font-size: 13px;
                padding: 10px;
            }

            h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <h2>📦 Product Inventory</h2>

    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <div class="message"><%= message %></div>
    <%
        }
    %>

    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        if (products != null && !products.isEmpty()) {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price (₹)</th>
                <th>Quantity</th>
            </tr>
            <%
                for (Product product : products) {
            %>
                <tr>
                    <td><%= product.getProductID() %></td>
                    <td><%= product.getProductName() %></td>
                    <td><%= product.getCategory() %></td>
                    <td>₹<%= String.format("%.2f", product.getPrice()) %></td>
                    <td><%= product.getQuantity() %></td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        } else {
    %>
        <div class="no-products">⚠️ No products found.</div>
    <%
        }
    %>
</body>
</html>
