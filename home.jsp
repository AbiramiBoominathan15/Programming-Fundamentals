<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
</head>
<body>
	<h1>SpringBoot Demo</h1>
	<!-- <form action="/save">
<input type="submit" value="click">
</form>
 -->
	<form action="/register" method="post">
		<lable for="username">Username:</lable>
		<input type="text" name="name" required>
		<lable for="password">Password:</lable>
		<input type="password" name="password" required> <input
			type="submit" value="Register">
	</form>
	<form action="/searchByName" method="get">
		<lable for="username">Username:</lable>
		<input type="text" name="name" required><br /> <input
			type="submit" value="Search">
	</form>
	<form action="/listofusers" method="get">
	 <input
			type="submit" value="ListOfUsers">
	</form>
	<br>
	<a href="success.jsp">To update</a>
	<br>
	<a href="finduser.jsp">To find a user</a>
</body>
</html>

 --%>
<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        padding: 20px;
    }
    h1 {
        text-align: center;
    }
    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    label {
        display: block;
        margin-bottom: 10px;
    }
    input[type="text"], input[type="password"], input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;  
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>
    <h1>SpringBoot Demo</h1>

    <form action="/register" method="post">
        <label for="username">Username:</label>
        <input type="text" name="name" required>
        <label for="password">Password:</label>
        <input type="password" name="password" required>
        <input type="submit" value="Register">
    </form>

    <form action="/searchByName" method="get">
        <label for="username">Search by Username:</label>
        <input type="text" name="name" required>
        <input type="submit" value="Search">
    </form>

    <form action="/listofusers" method="get">
        <input type="submit" value="List of Users">
    </form>

    <br>

    <a href="success.jsp">To update</a>
    <a href="finduser.jsp">To find a user</a>
</body>
</html> --%>
<!--  39125 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0; /* Light gray background */
        padding: 20px;
        margin: 0;
    }
    .container {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h1 {
        text-align: center;
    }
    form {
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-bottom: 10px;
    }
    input[type="text"], input[type="password"], input[type="submit"] {
        width: calc(85% - 22px); 
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        box-sizing: border-box;  
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <h3>User Details</h3>
        <form action="/register" method="post">
            <label for="username">Username:</label>
            <input type="text" name="name" pattern="[a-zA-Z0-9]+" required>
            <label for="password">Password:</label>
<!--              password title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
 -->            
            <input type="password" name="password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
required>
            <input type="submit" value="Register">
        </form>

        <form action="/searchByName" method="get">
            <label for="username">Search by Username:</label>
            <input type="text" name="name" pattern="[a-zA-Z0-9]+" required>
            <input type="submit" value="Search">
        </form>

<!--         <form action="/listofusers" method="get">
            <input type="submit" value="List of Users">
        </form>
 -->
        <br>

        <a href="success.jsp">To update</a>
        <a href="finduser.jsp">To find a user</a>
    </div>
</body>
</html>
