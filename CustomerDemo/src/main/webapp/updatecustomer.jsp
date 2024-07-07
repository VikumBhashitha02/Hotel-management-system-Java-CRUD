<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

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

.form-container {
    background-color: #ffffff;
    padding: 2.5em;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    width: 400px;
    text-align: left;
    transition: all 0.3s ease;
}

.form-container:hover {
    transform: translateY(-5px);
}

.form-container h2 {
    margin-bottom: 1.5em;
    color: #333;
    text-align: center;
    font-size: 1.8em;
    position: relative;
}

.form-container h2::after {
    content: '';
    display: block;
    width: 60px;
    height: 3px;
    background-color: #5cb85c;
    margin: 0.5em auto 0;
    border-radius: 3px;
}

.input-group {
    margin-bottom: 1.2em;
    text-align: left;
}

.input-group label {
    display: block;
    margin-bottom: 0.5em;
    font-weight: bold;
    color: #555;
}

.input-group input {
    width: 100%;
    padding: 0.7em;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.submit-button {
    width: 100%;
    padding: 0.7em;
    border: none;
    background-color: #5cb85c;
    color: white;
    font-size: 1em;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.submit-button:hover {
    background-color: #4cae4c;
}

</style>
</head>
<body>

<%                                         //(5) catch krgatta value tika ctrl eken enne
           String id = request.getParameter("id");
           String name = request.getParameter("name");
           String email = request.getParameter("email");
           String phone = request.getParameter("phone");
           String userName = request.getParameter("uname");
           String password = request.getParameter("pass");
           
%>

<div class="form-container">
   <h2>Update Profile Details</h2>
<form action ="update" method ="post">
 <div class="input-group">
                <label for="cusid">Customer ID</label>
                <input type="text" id="cusid" name="cusid" value="<%= id %>" readonly>
            </div>
            <div class="input-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" value="<%= name %>" required>
            </div>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" value="<%= email %>" required>
            </div>
            <div class="input-group">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" name="phone" value="<%= phone %>" required>
            </div>
            <div class="input-group">
                <label for="uname">User Name</label>
                <input type="text" id="uname" name="uname" value="<%= userName %>" required>
            </div>
            <div class="input-group">
                <label for="pass">Password</label>
                <input type="password" id="pass" name="pass" value="<%= password %>" required>
            </div>
            <div class="input-group">
                <input type="submit" name="submit" value="Update My Data" class="submit-button">
            </div>
        </form>
        </div>
</body>
</html>