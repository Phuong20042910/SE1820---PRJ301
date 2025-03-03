<%-- 
    Document   : StartupProjects_Form
    Created on : Mar 3, 2025, 3:28:44 PM
    Author     : THANH PHUONG
--%>

<%@page import="DTO.StartupProjectsDTO"%>
<%@page import="DTO.UserDTO"%>
<%@page import="utils.AuthUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
        </style>
    
    </head>
    <body>
        
        <div class="page-content">
            <%
                if(AuthUtils.isLoggedIn(session)){
                    UserDTO user = AuthUtils.getUser(session);
                    if(AuthUtils.isAdmin(session)){
            %>
            <%
                StartupProjectsDTO projects = new StartupProjectsDTO();
                try {
                    projects = (StartupProjectsDTO)request.getAttribute("project");
                } catch (Exception e){
                    projects = new StartupProjectsDTO();
                }
                if(projects == null){
                    projects = new StartupProjectsDTO();
                }
                
                //get error information
                String txtproject_id_error = request.getAttribute("txtproject_id_error")+"";
                txtproject_id_error = txtproject_id_error.equals("null")?"":txtproject_id_error;
                String txtproject_name_error = request.getAttribute("txtproject_name_error")+"";
                txtproject_name_error = txtproject_name_error.equals("null")?"":txtproject_name_error;
            %>    
            <div class="form-container">
                <h1>Startup Project Information</h1>
                <form action="MainController" method="post">
                    <input type="hidden" name="action" value="add"/>
                    
                     <div class="form-group">
                        <label for="txtproject_id">Project ID:</label>
                        <input type="number" id="txtproject_id" name="txtproject_id" value="<%=project.getProject_id()%>"/>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtproject_name">Project Name:</label>
                        <input type="text" id="txproject_name" name="txtproject_name" value="<%=project.getProject_name()%>"/>
                        <% if(!txtproject_name_error.isEmpty()){%>
                        <div class="error-message"><%=txtproject_name_error%></div>
                        <% } %>
                    </div>
                    
                    <div class="form-group">
                        <label for="txtDescription">Description:</label>
                        <input type="text" id="txtDescription" name="txtDescription" value="<%=project.getDescription()%>"/>
                    </div>

                    <div class="form-group">
                         <label for="txtStatus">Status:</label>
                         <input type="text" id="txtStatus" name="txtStatus" value="<%= project.getStatus()%>"/>
                         
                    </div>
                   <div class="form-group">
                    <label for="txtEstimatedLaunch">Estimated Launch:</label>
                    <input type="date" id="txtEstimatedLaunch" name="txtEstimatedLaunch"
                           value="<%= (project.getEstimated_launch() != null) ? new java.text.SimpleDateFormat("yyyy-MM-dd").format(project.getEstimated_launch()) : "" %>"/></div>
                        <% } %>
                   </div>
                   <div class="button-group">
                       <input type="submit" value="Save"/>
                       <input type="reset" value="Rese"/>
                    </div>
                </form>
                
            </div>
        </div>
    </body>
</html>
