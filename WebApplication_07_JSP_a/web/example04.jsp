<%-- 
    Document   : example04
    Created on : Feb 10, 2025, 10:31:45 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bảng cửu chương </title>
    </head>
    <body>
        <%
            for(int i = 2; i <= 9; i++){
                %>
                <hr/>
                <span style="color: gray"><b>Bảng cửu chương <%=i%></span></b><br/> 
                <%
                for(int j = 1; j <=10; j++){
                    %>
                <span style="color: red"><%=i%> * <%=j%> = <%=i * j%></span><br/>
                    <%
                }
                %>
                <%
            }
        %>
    
    </body>
</html>
