<%-- 
    Document   : login
    Created on : Feb 13, 2025, 10:59:48 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN_PAGE</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div style="min-height: 600px; padding: 20px">
        <form action="MainController" method="post">
            <input type="hidden" name="action" value="login"/>
            UserId <input type="text" name="txtUserId"/><br/>
            Password <input type="password" name="txtPassword"/><br/>
            <input type="submit" value="login"/>
        </form>    
        </div>
    </body>
</html>
