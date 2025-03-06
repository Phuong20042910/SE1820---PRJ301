<%-- 
    Document   : search
    Created on : Feb 13, 2025, 11:27:20 AM
    Author     : tungi
--%>

<%@page import="utils.AuthUtils"%>
<%@page import="dto.BookDTO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.List"%>
<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-16WWW">
        <title>JSP Page</title>

        <style>
            .book-table {
                width: 100%;
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 14px;
                font-family: Arial, sans-serif;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            }

            .book-table thead th {
                background-color: #009879;
                color: #ffffff;
                text-align: left;
                font-weight: bold;
                padding: 12px 15px;
            }

            .book-table tbody tr {
                border-bottom: 1px solid #dddddd;
            }

            .book-table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            .book-table tbody tr:last-of-type {
                border-bottom: 2px solid #009879;
            }

            .book-table tbody td {
                padding: 12px 15px;
            }

            .book-table tbody tr:hover {
                background-color: #f5f5f5;
                transition: 0.3s ease;
            }

            /* Responsive design */
            @media screen and (max-width: 600px) {
                .book-table {
                    font-size: 12px;
                }

                .book-table thead th,
                .book-table tbody td {
                    padding: 8px 10px;
                }
            }
        </style> 
    </head>
    <body> 
        <%@include file="header.jsp" %>
        <div style="min-height: 500px; padding: 10px">
            <%                if (session.getAttribute("user") != null) {
                    UserDTO user = (UserDTO) session.getAttribute("user");
            %>
            
            
           
          
            <%
                String searchTerm = request.getAttribute("searchTerm")+ "";
                searchTerm=searchTerm.equals("null")?"":searchTerm;
            %>
            <div class="search-section">
            <form action="MainController">
                <input type="hidden" name="action" value="search"/>
                    <label for="searchInput">Search Books:</label>
                    <input type="text" id="searchInput" name="searchTerm" value="<%=searchTerm%>" class="search-input" placeholder="Enter book title, author or ID..."/>
                    <input type="submit" value="Search" class="search-btn"/>
            </form>
            </div>   
                <% 
                    if(AuthUtils.isAdmin(session)){
            %>
            <a href="bookForm.jsp" class="add-btn">
                Add New Book    
            </a> 
            <%}
                %>

            <%
                if (request.getAttribute("books") != null) {
                    List<BookDTO> books = (List<BookDTO>) request.getAttribute("books");

            %>
            <table class="book-table">
                <thead>
                    <tr>
                        <th>BookID</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>PublishYear</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <% if(AuthUtils.isAdmin(session)){
                         %>   
                        <th>action</th>
                        <%}
                            %>
                    </tr>
                </thead>
                <tbody>
                    <%            for (BookDTO b : books) {
                    %>
                    <tr>
                        <td><%=b.getBookID()%></td>
                        <td><%=b.getTitle()%></td>
                        <td><%=b.getAuthor()%></td>
                        <td><%=b.getPublishYear()%></td>
                        <td><%=b.getPrice()%></td>
                        <td><%=b.getQuantity()%></td>
                        <%
                            if(AuthUtils.isAdmin(session)){
                            
                        %>
                        <td><a href="MainController?action=delete&id=<%=b.getBookID()%>&searchTerm=<%=searchTerm%>">
                               <img src="img/delete_icon.png" style="height: 30px"/>
                            
                            </a></td>
                    </tr>
                    <%}
                        %>   
                    <%
                       } 
                    %>
                </tbody>
            </table>
            <%    }
            } else { %>
            You do not have permission to access this content.
            <%}%>
        </div>
            <%@include file="footer.jsp" %>
    </body>
</html>