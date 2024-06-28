<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.chainsys.demo2.model.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of user</title>
</head>
<a href="home.jsp">Home</a>
<body>
	<%
	User namesearched = (User) request.getAttribute("searchName");
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-6"></div>
		</div>
		<div class="row">
			<div class="col-sm-6">
				<table id="userTable"
					class="table table-bordered table-condensed table-striped"
					border="2">
					<thead>
						<tr>
							<th>UserId</th>
							<th>UserName</th>
							<th>Password</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><%=namesearched.getId()%></td>
							<td><%=namesearched.getUsername()%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>