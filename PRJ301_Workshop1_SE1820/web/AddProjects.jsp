<%-- 
    Document   : AddProjects
    Created on : Mar 5, 2025, 4:33:46 PM
    Author     : THANH PHUONG
--%>

<%@page import="DTO.UserDTO"%>
<%@page import="utils.AuthUtils"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DTO.StartupProjectsDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Information</title>
    </head>
    <body>
        <div class="page-content">
        <%
            if(AuthUtils.isLoggedIn(session)){
                UserDTO user = AuthUtils.getUser(session);
                if(AuthUtils.isFounder(session)){
        %>    
        <% 
            StartupProjectsDTO projects = new StartupProjectsDTO();
            try {
                projects = (StartupProjectsDTO) request.getAttribute("projects");
            }catch(Exception e){
                projects = new StartupProjectsDTO();
            }
            if(projects == null){
                projects = new StartupProjectsDTO();
            }
            
            String txtProjectId_error = request.getAttribute("txtProjectId_error")+"";
            txtProjectId_error = txtProjectId_error.equals("null")?"":txtProjectId_error;
            String txtProjectName_error = request.getAttribute("txtProjectName_error")+"";
            txtProjectName_error = txtProjectName_error.equals("null")?"":txtProjectName_error;
            String txtDescription_error = request.getAttribute("txtDescription_error")+"";
            txtDescription_error = txtDescription_error.equals("null")?"":txtDescription_error;
            String txtStatus_error = request.getAttribute("txtStatus_error")+"";
            txtStatus_error = txtStatus_error.equals("null")?"":txtStatus_error;
            String txtEstimatedLaunch_error = request.getAttribute("txtEstimatedLaunch_error")+"";
            txtEstimatedLaunch_error = txtEstimatedLaunch_error.equals("null")?"":txtEstimatedLaunch_error;
        %>
        <div class="container">
            <h1>PROJECT INFORMATION</h1>
            <input type="hidden" name="action" value="add"/>
            
            <form action="Main Controller" method="post">
                <div class="form-group">
                    <label for="txtProjectId">Project Id:</label>
                    <input type="text" id="txtProjectId" name="txtProjectId" value="<%=projects.getProjectId()%>"/>
                    <%
                        if(!txtProjectId_error.isEmpty()){%>
                        <div class="error-message"><%=txtProjectId_error%></div>
                    <%}%>
                    </div>
                    
                <div class="form-group">
                    <label for="txtProjectName">Project Name:</label>
                    <input type="text" id="txtProjectName" name="txtProjectName" value="<%=projects.getProjectName()%>"/>
                    <%
                        if(!txtProjectName_error.isEmpty()){%>
                        <div class="error-message"><%=txtProjectName_error%></div>
                    <%}%>
                    </div>
                   
                <div class="form-group">
                    <label for="txtDescription">Description:</label>
                    <input type="text" id="txtDescription" name="txtDescription" value="<%=projects.getDescription()%>"/>
                    <%
                        if(!txtDescription_error.isEmpty()){%>
                        <div class="error-message"><%=txtDescription_error%></div>
                    <%}%>
                </div>    
                    
                <div class="form-group">
                    <label for="txtStatus">Status:</label>
                    <select id="txtStatus" name="txtStatus">
                        <option value="Ideation" <%="Ideation".equals(projects.getStatus())?"selected":""%>>Ideation</option>
                        <option value="Development" <%="Development".equals(projects.getStatus())?"selected":""%>>Development</option>
                        <option value="Launch" <%="Launch".equals(projects.getStatus())?"selected":""%>>Launch</option>
                        <option value="Scaling" <%="Scaling".equals(projects.getStatus())?"selected":""%>>Scaling</option>
                    </select>
                    <%
                        if(!txtStatus_error.isEmpty()){%>
                        <div class="error-message"><%=txtStatus_error%></div>
                    <%}%>
                </div>   
                <%
                    SimpleDateFormat sdf;
                    sdf = new SimpleDateFormat("yyyy-mm-dd");
                    String EstimatedLaunchDate = (projects.getEstimatedLaunch()!=null)?sdf.format(projects.getEstimatedLaunch()):"";
                %>
                <div class="form-group">
                    <label for="txtEstimatedLaunch">Estimated_Launch:</label>
                    <input type="date" id="txtEstimatedLaunch" name="txtEstimatedLaunch" value="<%=EstimatedLaunchDate%>"/>
                    <%
                        if(!txtEstimatedLaunch_error.isEmpty()) {%>
                        <div class="error-message"><%=txtEstimatedLaunch_error%></div>
                        <%}%>
                </div>   
                <div class="button-group">
                    <input type="submit" value="SAVE"/>
                    <input type="reset" value="RESET"/>
                </div>
            < <a href="MainController?action=search" class="back-link">Back to Dash Board</a>
            </div>
            <%} 
                else {%>
            <div class="form-container error-container">
                <h1>403 Error</h1>
                <p>Your do not have permission to access this content</p>
                <a href="MainControler?action=dashboard" class="back-link">Back to Dash Board</a>
            </div>
            <%}
                } else {%>
            <div class="form-container error-container">
                <h1>Access Denied</h1>
                <p>Please log in to access this page.</p>
                <a href="login.jsp" class="back-link">Go to Login</a>
            </div>
            <%}%>    
        </div>
    </body>
</html>
