<%-- 
    Document   : search
    Created on : Mar 3, 2025, 9:41:02 AM
    Author     : THANH PHUONG
--%>

<%@page import="DTO.StartupProjectsDTO"%>
<%@page import="DTO.UserDTO"%>
<%@page import="dto.DTO"%>
<%@page import="java.awt.print.Book"%>
<%@page import="java.util.List"%>
<%@page import="dto.DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div style="min-height: 500px; padding: 10px">
            <%                if (session.getAttribute("user") != null) {
                    UserDTO user = (UserDTO) session.getAttribute("user");
            %>
            <h1> Welcome <%=user.getName()%> </h1>
            <form action="MainController">
                <input type="hidden" name="action" value="logout"/>
                <input type="submit" value="Logout"/>
            </form>

            <br/>
            
            <%
                String searchTerm = request.getAttribute("searchTerm")+ "";
                searchTerm=searchTerm.equals("null")?"":searchTerm;
            %>
           <form action="MainController">
    <input type="hidden" name="action" value="search"/>
    Search Projects: <input type="text" name="searchTerm" value="<%=request.getAttribute("searchTerm")%>"/>
    <input type="submit" value="Search"/>
</form>

<%
    if (request.getAttribute("projects") != null) {
        List<StartupProjectsDTO> projects = (List<StartupProjectsDTO>) request.getAttribute("projects");
%>
<table class="project-table">
    <thead>
        <tr>
            <th>Project ID</th>
            <th>Project Name</th>
            <th>Description</th>
            <th>Status</th>
            <th>Estimated Launch</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <% for (StartupProjectsDTO project : projects) { %>
        <tr>
            <td><%= project.getProject_id() %></td>
            <td><%= project.getProject_name() %></td>
            <td><%= project.getDescription() %></td>
            <td><%= project.getStatus() %></td>
            <td><%= project.getEstimated_launch() %></td>
            <td>
                <a href="MainController?action=delete&id=<%= project.getProject_id() %>&searchTerm=<%= request.getAttribute("searchTerm") %>">
                    <img src="img/delete_icon.png" style="height: 30px"/>
                </a>
            </td>
        </tr>
        <% } %>
    </tbody>
</table>
<% } else { %>
<p>No projects found.</p>
<% } %>

    </body>
</html>
