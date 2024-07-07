<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>

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

.input-group .error {
    color: red;
    font-size: 0.9em;
    margin-top: 0.5em;
    display: none;
}

.submit-button, .signin-button {
    width: 100%;
    padding: 0.7em;
    border: none;
    background-color: #007bff;
    color: white;
    font-size: 1em;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.submit-button:hover , .signin-button:hover {
    background-color: #4cae4c;
}


</style>

<script>
function validateForm() {
    var isValid = true;

    // Clear previous error messages
    var errorElements = document.querySelectorAll(".error");
    errorElements.forEach(function(element) {
        element.style.display = "none";
    });

    var name = document.forms["signUpForm"]["name"].value;
    var email = document.forms["signUpForm"]["email"].value;
    var phone = document.forms["signUpForm"]["phone"].value;
    var username = document.forms["signUpForm"]["uid"].value;
    var password = document.forms["signUpForm"]["psw"].value;

    if (name == "") {
        document.getElementById("nameError").style.display = "block";
        isValid = false;
    }
    if (email == "" || !email.includes("@")) {
        document.getElementById("emailError").style.display = "block";
        isValid = false;
    }
    if (phone == "" || phone.length != 10 || isNaN(phone)) {
        document.getElementById("phoneError").style.display = "block";
        isValid = false;
    }
    if (username == "") {
        document.getElementById("usernameError").style.display = "block";
        isValid = false;
    }
    if (password == "" || password.length < 6) {
        document.getElementById("passwordError").style.display = "block";
        isValid = false;
    }

    return isValid;
}
</script>

</head>
<body>
 <div class="form-container">
     <h2>Sign Up</h2>
<form name="signUpForm" action="insert" method="post" onsubmit="return validateForm()">
  <div class="input-group">
    <label for="name">Full Name</label>
     <input type="text" name="name">
     <span id="nameError" class="error">Name must be filled out</span>
  </div>
     
  <div class="input-group">
    <label for="email">Email</label>
     <input type="text" name="email">
     <span id="emailError" class="error">Please enter a valid email</span>
  </div>
     
  <div class="input-group">
    <label for="phone">Phone Number</label>
     <input type="text" name="phone">
     <span id="phoneError" class="error">Phone number must be 10 digits</span>
  </div>
     
  <div class="input-group">
    <label for="uid">User Name</label>
     <input type="text" name="uid">
     <span id="usernameError" class="error">Username must be filled out</span>
  </div>

  <div class="input-group">
    <label for="psw">Password</label>
     <input type="password" name="psw">
     <span id="passwordError" class="error">Password must be at least 6 characters</span>
  </div>
     
  <div class="input-group">
    <input type="submit" name="submit" value="Sign Up" class="submit-button">
  </div>
</form>

<div class="input-group">
  <form action="login.jsp" method="get">
    <input type="submit" value="Sign In" class="signin-button">
  </form>
</div>

</div>
</body>
</html>
