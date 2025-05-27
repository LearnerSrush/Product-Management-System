<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Report Criteria</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #f3e5f5, #e8f5e9);
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 16px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #6a1b9a;
            margin-bottom: 25px;
            font-size: 24px;
            font-weight: bold;
        }

        h3 {
            font-size: 15px;
            color: #333;
            margin-bottom: 6px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #8e24aa;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #8e24aa;
            color: white;
            border: none;
            padding: 14px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 25px 20px;
            }

            h2 {
                font-size: 20px;
            }

            input[type="submit"] {
                font-size: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>📊 Generate Reports</h2>
        <form action="reportCriteria" method="post">
            <h3>💰 Products with price greater than:</h3>
            <input type="number" step="0.01" name="price" placeholder="e.g. 500.00" />

            <h3>📁 Products in category:</h3>
            <input type="text" name="category" placeholder="e.g. Electronics" />

            <h3>🏆 Top N products by quantity:</h3>
            <input type="number" name="topN" placeholder="e.g. 5" />

            <input type="submit" value="Generate Report" />
        </form>
    </div>
</body>
</html>
