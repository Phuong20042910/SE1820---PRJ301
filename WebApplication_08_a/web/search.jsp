<%-- 
    Document   : search
    Created on : Feb 13, 2025, 11:28:16 AM
    Author     : THANH PHUONG
--%>

<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO)request.getAttribute("user");
        %>
        <h1>Welcome <%=user.getFullname()%></h1>
        
        <form action="#">
            Search value: <input type="submit" name="txtSearchValue"/><br/>
            <input type="submit" name="Search"/>
        </form> <h1>hello world</h1>
    </body>
</html>
