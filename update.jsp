<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="/update" method="get">
  <lable for="username">Username:</lable>
<input type="text" name="username" required>
  <lable for="password">Password:</lable>
<input type="password" name="password" required>
<input type="submit" value="Register">
</form>

</body>
</html>