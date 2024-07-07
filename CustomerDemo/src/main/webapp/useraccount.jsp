<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>user</title>

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

.customer-details-container {
    background-color: #ffffff;
    padding: 2.5em;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    border-radius: 12px;
    width: 500px;
    text-align: left;
    transition: all 0.3s ease;
}

.customer-details-container:hover {
    transform: translateY(-5px);
}

.customer-details-container h2 {
    margin-bottom: 1.5em;
    color: #333;
    text-align: center;
    font-size: 1.8em;
    position: relative;
}

.customer-details-container h2::after {
    content: '';
    display: block;
    width: 60px;
    height: 3px;
    background-color: #5cb85c;
    margin: 0.5em auto 0;
    border-radius: 3px;
}

.details-table {
    width: 100%;
    border-collapse: collapse;
}

.details-table tr {
    border-bottom: 1px solid #e0e0e0;
    padding: 0.5em 0;
}

.details-table tr:last-child {
    border-bottom: none;
}

.label {
    font-weight: bold;
    color: #555;
    padding: 0.8em 0;
}

.value {
    color: #777;
    text-align: right;
    padding: 0.8em 0;
}

.buttons {
    margin-top: 2em;
    display: flex;
    justify-content: space-between;
}

.button {
    background-color: #5cb85c;
    color: white;
    text-decoration: none;
    padding: 0.7em 1.5em;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.button:hover {
    background-color: #4cae4c;
}

.delete {
    background-color: #d9534f;
}

.delete:hover {
    background-color: #c9302c;
}
   
.logout {
    background-color: #337ab7;
}

.logout:hover {
    background-color: #286090;
}

</style>

</head>
<body>
   <div class="customer-details-container">
        <h2>Profile Details</h2>
 <table class="details-table">           
<c:forEach var="cus" items="${cusDetails}">

<c:set var="id" value="${cus.id}"/>
<c:set var="name" value="${cus.name}"/>
<c:set var="email" value="${cus.email}"/>
<c:set var="phone" value="${cus.phone}"/>
<c:set var="username" value="${cus.userName}"/>
<c:set var="password" value="${cus.password}"/>



 <tr>
 <td class="label">Customer ID:</td>
 <td>${cus.id}</td>
 </tr>
 
 <tr>
  <td class="label">Customer Full Name:</td>
 <td>${cus.name}</td>
 </tr>
 
  <tr>
 <td class="label">Customer Email:</td>
 <td>${cus.email}</td>
 </tr>
 
  <tr>
 <td class="label">Customer Phone:</td>
 <td>${cus.phone}</td>
 </tr>
 
  <tr>
 <td class="label">Customer UserName:</td>
 <td>${cus.userName}</td>
 </tr>
 
 <tr>
 <td class="label">Customer Password:</td>
 <td>${cus.password}</td>
 </tr>
 
</c:forEach>
</table>

<div class="buttons">
<c:url value="updatecustomer.jsp" var="cusupdate" >
              
<c:param name="id" value="${id}"/>
<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="phone" value="${phone}"/>
<c:param name="uname" value="${username}"/>
<c:param name="pass" value="${password}"/>

</c:url>


<a href="${cusupdate}" class="button">Update My Data</a>



<br>


<c:url value ="deletecustomer.jsp" var="cusdelete">

<c:param name="id" value="${id}"></c:param>
<c:param name="name" value="${name}"></c:param>
<c:param name="email" value="${email}"></c:param>
<c:param name="uname" value="${username}"></c:param>
<c:param name="pass" value="${password}"></c:param>

</c:url>

<a href="${cusdelete}" class="button delete">Delete My Account</a>
<br>

<a href="login.jsp" class="button logout">Logout</a>
   </div>
 </div>
</body>
</html>