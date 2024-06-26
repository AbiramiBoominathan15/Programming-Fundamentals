<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<td>
                <form action="/delete" method="get">
                    <input type="hidden" name="id" value="<%=user.getId() %>">
                    <button>Delete</button>
                </form>
            </td>

</body>
</html>