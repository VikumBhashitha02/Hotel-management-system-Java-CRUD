<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Sign in</title>
 
 <style>
 
 body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #fff;
    padding: 2em;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

.sign-in-form {
    width: 300px;
    text-align: center;
}

.sign-in-form h2 {
    margin-bottom: 1em;
}

.input-group {
    margin-bottom: 1em;
    text-align: left;
}

.input-group label {
    display: block;
    margin-bottom: 0.5em;
    font-weight: bold;
}

.input-group input {
    width: 100%;
    padding: 0.5em;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    width: 100%;
    padding: 0.7em;
    border: none;
    background-color: #5cb85c;
    color: white;
    font-size: 1em;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #4cae4c;
}
 
.signup-button {
   margin-top: 1em;
   background-color: #007bff;
}

.signup-button:hover {
   background-color: #0056b3
}
 
 
 </style>
 
 <script>
 function validateForm() {
    var username = document.forms["signInForm"]["uid"].value;
    var password = document.forms["signInForm"]["pass"].value;
    if (username == "" || password == "") {
        alert("Username and Password must be filled out");
        return false;
    }
    return true;
 }
 </script>
 
</head>
<body>
 
  <div class="container">
   <div class="sign-in-form">
            <h2>Sign In</h2>
  
<form name="signInForm" action="log" method ="post" onsubmit="return validateForm()">
<div class="input-group">
<label for="username">Username</label>
<input type="text" name="uid"><br> 
</div>

<div class="input-group">
<label for="password">Password</label>
<input type ="password" name="pass"><br>
</div>

<button type="submit">Sign In</button>
</form>  
 <form action="customerinsert.jsp" method="get">
  <button type="submit" class="signup-button">Sign Up</button>
 </form>
 </div>
 </div>

</body> 
</html>

