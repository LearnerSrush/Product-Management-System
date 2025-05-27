<%@ page import="java.util.*, com.model.Product, com.dao.ProductDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report Result</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f3e5f5, #e8f5e9);
            margin: 0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #333;
        }

        h3 {
            margin-top: 30px;
            color: #6a1b9a;
            font-size: 22px;
            font-weight: bold;
            text-align: center;
        }

        ul {
            list-style-type: none;
            padding-left: 0;
            width: 80%;
            max-width: 700px;
            margin: 15px auto;
        }

        li {
            background-color: #ffffff;
            padding: 14px 20px;
            margin-bottom: 12px;
            border-left: 6px solid #8e24aa;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #333;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.08);
            transition: transform 0.2s ease;
        }

        li:hover {
            transform: scale(1.02);
            background-color: #f3e5f5;
        }

        .no-results {
            font-style: italic;
            font-size: 15px;
            color: #888;
            margin-top: 20px;
            background-color: #fff3e0;
            padding: 12px 18px;
            border: 1px solid #ffcc80;
            border-radius: 8px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%
    ProductDAO dao = new ProductDAO();
    String priceStr = (String) request.getAttribute("price");
    String category = (String) request.getAttribute("category");
    String topNStr = (String) request.getAttribute("topN");
%>

<% if (priceStr != null && !priceStr.isEmpty()) {
    double price = Double.parseDouble(priceStr);
    List<Product> result = dao.getProductsAbovePrice(price);
%>
    <h3>📈 Products with price &gt; ₹<%= String.format("%.2f", price) %></h3>
    <% if (!result.isEmpty()) { %>
        <ul>
            <% for (Product p : result) { %>
                <li>🛒 <strong><%= p.getProductName() %></strong> – ₹<%= String.format("%.2f", p.getPrice()) %></li>
            <% } %>
        </ul>
    <% } else { %>
        <div class="no-results">No products found above this price.</div>
    <% } %>
<% } %>

<% if (category != null && !category.isEmpty()) {
    List<Product> result = dao.getProductsByCategory(category);
%>
    <h3>📂 Products in category "<%= category %>"</h3>
    <% if (!result.isEmpty()) { %>
        <ul>
            <% for (Product p : result) { %>
                <li>🗂️ <strong><%= p.getProductName() %></strong> – Quantity: <%= p.getQuantity() %></li>
            <% } %>
        </ul>
    <% } else { %>
        <div class="no-results">No products found in this category.</div>
    <% } %>
<% } %>

<% if (topNStr != null && !topNStr.isEmpty()) {
    int topN = Integer.parseInt(topNStr);
    List<Product> result = dao.getTopNProducts(topN);
%>
    <h3>🏆 Top <%= topN %> Products by Quantity</h3>
    <% if (!result.isEmpty()) { %>
        <ul>
            <% for (Product p : result) { %>
                <li>🥇 <strong><%= p.getProductName() %></strong> – Quantity: <%= p.getQuantity() %></li>
            <% } %>
        </ul>
    <% } else { %>
        <div class="no-results">No top products available.</div>
    <% } %>
<% } %>

</body>
</html>
