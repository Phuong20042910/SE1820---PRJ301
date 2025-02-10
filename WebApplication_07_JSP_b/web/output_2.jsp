<%-- 
    Document   : output_2
    Created on : Feb 10, 2025, 11:20:01 AM
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
            int n = (int) request.getAttribute("n");
        %>
        <%
            if(n%2==0){
                %>
                <b><%=n%> là số chẵn!<b/>
                <%
            }else{
                %>
                <b><%=n%> là số lẻ!<b/>
                <%
            }
        %><br/>
    </body>
</html>
