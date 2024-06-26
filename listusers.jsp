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
