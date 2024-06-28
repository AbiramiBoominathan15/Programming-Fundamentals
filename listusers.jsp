<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List"%>
    <%@ page import=" com.chainsys.demo2.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
List<User>users=(List<User>)request.getAttribute("USER_LIST"); %>
<div class="container">
<div class="row">
<div class="col-sm-6"></div>
</div>
<div class="row">
<div class="col-sm-6">
<table id="userTable" class="table table-bordered table-condensed table-striped" border="1">
<thead>
<tr>
<th>UserID<th>
<th>UserName</th>
<th colspan="2" >Update</th>
</tr>
</thead>
<tbody>
<%

for (User user:users){
	%>
	<tr>
	<td><%=user.getId() %></td>
	<td><%=user.getUsername() %></td>
	<td>
	<a href="update.jsp"><button>Edit</button></td></a>
<td>
                <form action="/delete" method="get">
                    <input type="hidden" name="id" value="<%=user.getId() %>">
                    <button>Delete</button>
                </form>
            </td>
	
	<td></td>
	</tr>
	<%
}
	%>
</tbody>
</table>
</div>
</div>
</div>
</body>
</html> --%>

<%-- 59 164
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.demo2.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        padding: 20px;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    .btn-edit, .btn-delete {
        padding: 5px 10px;
        border: none;
        cursor: pointer;
        border-radius: 3px;
    }
    .btn-edit {
        background-color: #007bff;
        color: #fff;
    }
    .btn-delete {
        background-color: #dc3545;
        color: #fff;
    }
</style>

</head>
<body>
        <form action="/searchByName" method="get">
            <label for="username">Search by Username:</label>
            <input type="text" name="name" required>
            <input type="submit" value="Search">
        </form>

<%
List<User> users = (List<User>) request.getAttribute("USER_LIST");
%>
<div class="container">
    <div class="row">
        <div class="col-sm-6"></div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <table id="userTable" class="table table-bordered table-condensed table-striped">
                <thead>
                    <tr>
                        <th>UserID</th>
                        <th>UserName</th>
                        <th colspan="2">Update</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for (User user : users) {
                    %>
                    <tr>
                        <td><%=user.getId() %></td>
                        <td><%=user.getUsername() %></td>
                        <td>
                            <a href="update.jsp" class="btn-edit">Edit</a>
                        </td>
                        <td>
                            <form action="/delete" method="get">
                                <input type="hidden" name="id" value="<%=user.getId() %>">
                                <button type="submit" class="btn-delete">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.chainsys.demo2.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        padding: 20px;
    }
    .container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    .btn-edit, .btn-delete {
        padding: 5px 10px;
        border: none;
        cursor: pointer;
        border-radius: 3px;
        text-decoration: none;
        display: inline-block;
        text-align: center;
    }
    .btn-edit {
        background-color: #007bff;
        color: #fff;
    }
    .btn-delete {
        background-color: #dc3545;
        color: #fff;
    }
    .search-form {
        margin-bottom: 20px;
    }
    .search-form input[type="text"] {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 3px;
        width: 200px;
    }
    .search-form input[type="submit"] {
        padding: 8px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }
</style>

</head>
<body>
    <div class="container">
        <form class="search-form" action="/searchByName" method="get">
            <label for="username"></label>
            <input type="text" name="name" id="username" required>
            <input type="submit" value="Search">
        </form>

        <table id="userTable" class="table table-bordered table-condensed table-striped">
            <thead>
                <tr>
                    <th>UserID</th>
                    <th>UserName</th>
                    <th colspan="2">Update</th>
                </tr>
            </thead>
            <tbody>
                <% 
                List<User> users = (List<User>) request.getAttribute("USER_LIST");
                if (users != null && !users.isEmpty()) {
                    for (User user : users) {
                %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getUsername() %></td>
                    <td>
                        <a href="update.jsp?id=<%= user.getId() %>" class="btn-edit">Edit</a>
                    </td>
                    <td>
                        <form action="/delete" method="get">
                            <input type="hidden" name="id" value="<%= user.getId() %>">
                            <button type="submit" class="btn-delete">Delete</button>
                        </form>
                    </td>
                </tr>
                <% 
                    }
                } else {
                %>
                <tr>
                    <td colspan="4">No users found.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
 