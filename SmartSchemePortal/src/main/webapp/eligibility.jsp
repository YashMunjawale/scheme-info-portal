<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eligibility Checker</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="eligibility-bg">

    <div class="container">
        <h2>Check Scheme Eligibility</h2>

        <form action="eligibility" method="post">

            <label>Age:</label>
            <input type="number" name="age" required>

            <label>Family Income:</label>
            <input type="number" name="income" required>

            <label>Percentage:</label>
            <input type="number" name="percentage" required>

            <label>Education:</label>
            <select name="education" required>
                <option value="12th">12th</option>
                <option value="Undergraduate">Undergraduate</option>
                <option value="Postgraduate">Postgraduate</option>
                <option value="PhD">PhD</option>
            </select>

            <input type="submit" value="Check Eligibility">
        </form>
    </div>

</body>
</html>