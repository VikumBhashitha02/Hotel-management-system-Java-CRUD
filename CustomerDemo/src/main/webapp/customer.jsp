<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details - Cafena</title>
    
    <style>
    
    body {
    font-family: 'Roboto', sans-serif;
    background-color: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.table-container {
    background-color: #ffffff;
    padding: 2.5em;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    width: 80%;
    max-width: 1000px;
    text-align: left;
    transition: all 0.3s ease;
}

.table-container h2 {
    margin-bottom: 1.5em;
    color: #333;
    text-align: center;
    font-size: 1.8em;
    position: relative;
}

.table-container h2::after {
    content: '';
    display: block;
    width: 60px;
    height: 3px;
    background-color: #5cb85c;
    margin: 0.5em auto 0;
    border-radius: 3px;
}

.styled-table {
    width: 100%;
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 1em;
    text-align: left;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
    background-color: #5cb85c;
    color: #ffffff;
    text-align: left;
    font-weight: bold;
}

.styled-table th,
.styled-table td {
    padding: 12px 15px;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #5cb85c;
}
    
    
    </style>
</head>
<body>
    <div class="table-container">
        <h2>Customer Details</h2>
        <table class="styled-table">
            <thead>
                <tr>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>User Name</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= request.getParameter("cusid") %></td>
                    <td><%= request.getParameter("name") %></td>
                    <td><%= request.getParameter("email") %></td>
                    <td><%= request.getParameter("phone") %></td>
                    <td><%= request.getParameter("uid") %></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
