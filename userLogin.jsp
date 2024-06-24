<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.chainsys.model.UserDetails" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
    <h2>User List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Phone Number</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<UserDetails> userList = (List<UserDetails>) request.getAttribute("userList");
                for (UserDetails user : userList) {
            %>
            <tr>
                <td><%= user.getName() %></td>
                <td><%= user.getPhonenumber() %></td>
                <td><%= user.getEmail() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.chainsys.model.UserDetails" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        form {
            display: inline;
        }
    </style>
</head>
<body>
    <h2>User List</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<UserDetails> userList = (List<UserDetails>) request.getAttribute("userList");
                if (userList != null) {
                    for (UserDetails user : userList) {
            %>
            <tr>
                <td><%= user.getName() %></td>
                <td><%= user.getPhonenumber() %></td>
                <td><%= user.getEmail() %></td>
                <td>
                    <form action="UpdateUserServlet" method="post">
                        <input type="hidden" name="email" value="<%= user.getEmail() %>">
                        <input type="text" name="newName" placeholder="New Name" required>
                        <input type="text" name="newPhoneNumber" placeholder="New Phone Number" required>
                        <input type="text" name="newEmail" placeholder="New Email" required>
                        <button type="submit">Update</button>
                    </form>
                    <form action="DeleteUserServlet" method="post">
                        <input type="hidden" name="name" value="<%= user.getName() %>">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
            <% 
                    }
                } else {
            %>
            <% } %>
        </tbody>
    </table>
</body>
</html>

 