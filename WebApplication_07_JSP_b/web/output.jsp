<%-- 
    Document   : output
    Created on : Feb 10, 2025, 11:06:00 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int n = (int)request.getAttribute("n");
                %>
                <span style="color: gray"><b>Bảng cửu chương <%=n%></span></b><br/> 
                <%
                for(int j = 1; j <=10; j++){
                %>
                <span style="color: red"><%=n%> * <%=j%> = <%=n * j%></span><br/>
                <%
                }
        %>
    </body>
</html>
