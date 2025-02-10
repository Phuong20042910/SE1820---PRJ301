<%-- 
    Document   : example01
    Created on : Feb 10, 2025, 9:59:16 AM
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
        <%! int a = 9; %>
        
        <%
            double b;
            b = Math.sqrt(a);
        %>
        
        <%
            double c;
            c = Math.pow(a, 2);
        %>
    Kết quả: sqrt(<--=a%>) = <span style="color: red"><%=b%></span><br>
    Kết quả : pow(<--=a%>) = <span style="color: blue"><%=c%></span>
    
    
    <!--<%
    //        double c;
    //        c = Math.pow(a, 2);
        %>
    Kết quả: sqrt(<%=a%>) = <span style="color: red"><%=b%></span><br>
    Kết quả : pow(<%=a%>) = <span style="color: blue"><%=c%></span>
    -->
    </body>
</html>
