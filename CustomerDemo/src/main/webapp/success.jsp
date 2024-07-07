<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Success</title>
<script type="text/javascript">
    // Function to show the alert and then redirect
    function showAlertAndRedirect() {
        alert("<%= request.getAttribute("message") %>");
        window.location.href = "login.jsp";
    }
</script>
</head>
<body onload="showAlertAndRedirect()">
    <!-- This body content will be replaced with the alert and redirection -->
</body>
</html>
