<%-- 
    Document   : search
    Created on : Mar 5, 2025, 11:14:12 AM
    Author     : THANH PHUONG
--%>

<%@page import="DTO.UserDTO"%>
<%@page import="utils.AuthUtils"%>
<%@page import="DTO.StartupProjectsDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DashBoard_PAGE</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
                text-align: left;
            }
            .container {
                width: 50%;
                margin: 50px auto;
                background: white;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            h1 {
                color: #333;
            }
            form {
                margin-top: 20px;
            }
            .add-btn {
                display: inline-block;
                background-color: #007bff;
                color: white;
                text-decoration: none;
                border-radius: 4px;
                padding: 10px 15px;
                margin-bottom: 20px;
                margin-top: 10px;
                font-weight: bold;
                transition: background-color 0.3s;
            }

            .add-btn:hover {
                background-color: #0069d9;
                text-decoration: none;
            }

            /* Add a nice icon to the add button */
            .add-btn::before {
                content: "+";
                margin-right: 5px;
                font-weight: bold;
            }
            
            input[type="text"] {
                width: 80%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 16px;
            }
            input[type="submit"] {
                background: #28a745;
                color: white;
                border: none;
                padding: 10px 15px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: 0.3s;
            }
            input[type="submit"]:hover {
                background: #218838;
            }
            .logout-btn {
                background: #dc3545;
            }
            .logout-btn:hover {
                background: #c82333;
            }
            .project-table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            .project-table th, .project-table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            .project-table th {
                background-color: #f2f2f2;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <%@include file = "header.jsp" %>
        <div style="min-height: 500px; padding: 10px">
            <% 
                UserDTO user = (session != null) ? (UserDTO) session.getAttribute("user") : null;
                if (user != null) {
            %>
            <h1> Welcome <%= user.getName() %> </h1>
            <form action="MainController" method="post">
                <input type="hidden" name="action" value="logout"/>
                <input type="submit" value="Logout" class="logout-btn"/>
            </form>
            <br/>
            
            <% 
                String searchTerm = request.getAttribute("searchTerm")+"";
                if (searchTerm == null) searchTerm = "";
            %>
            <form action="MainController">
                <input type="hidden" name="action" value="search"/>
                Search Here: <input type="text" name="searchTerm" value="<%= searchTerm %>"/>
                <input type="submit" value="Search"/>
            </form>
            <%
                if(AuthUtils.isFounder(session)){
            %>
                <a href="AddProjects.jsp" class="add-btn">Add Project</a>
            <% }%>
            <% 
                List<StartupProjectsDTO> projects = (List<StartupProjectsDTO>) request.getAttribute("projects");
                if (request.getAttribute("projects") != null) {

            %>
            <table class="project-table">
                <thead>
                    <tr>
                        <th>Project ID</th>
                        <th>Project Name</th>
                        <th>Description</th>
                        <th>Status</th>
                        <th>Estimated Launch</th>
                        <% if(AuthUtils.isFounder(session)){
                        %>
                        <th>Action</th>
                        <% } %>
                    </tr>
                </thead>
                <tbody>
                    <% for (StartupProjectsDTO spDTO : projects) { 
                    %>
                    <tr>
                        <td><%= spDTO.getProjectId() %></td>
                        <td><%= spDTO.getProjectName() %></td>
                        <td><%= spDTO.getDescription() %></td>
                        <td><%= spDTO.getStatus() %></td>
                        <td><%= spDTO.getEstimatedLaunch() %></td>
                        <%
                            if(AuthUtils.isFounder(session)){
                        %>
                        <td>
                            <a href="MainController?action=delete&name=<%= spDTO.getProjectName() %>&searchTerm=<%= searchTerm %>">
                                <img src="img/delete_icon.png" style="height: 35px">
                            </a>
                        </td>
                        
                        <% }%>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <% } else { %>
                <p>No projects found.</p>
            <% } %>
            
            <% } else { %>
                <p>You do not have permission to access this content.</p>
            <% } %>
        </div>
            <%@include file="footer.jsp" %>
    </body>
</html>

