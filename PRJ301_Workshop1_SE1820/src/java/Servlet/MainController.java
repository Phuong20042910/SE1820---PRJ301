/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.UserDAO;
import DAO.StartupProjectsDAO;
import DTO.UserDTO;
import DTO.StartupProjectsDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import javax.servlet.RequestDispatcher;
//import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.AuthUtils;

/**
 *
 * @author LENOVO
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {
    private static final String LOGIN_PAGE = "login.jsp";
    private static final String DASHBOARD_PAGE = "search.jsp";
    private StartupProjectsDAO spDAO = new StartupProjectsDAO();
    
    private String processLogin (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url=LOGIN_PAGE;
        String strUserName = request.getParameter("txtUserName");
        String strPassword = request.getParameter("txtPassword");
        if(AuthUtils.isValidLogin(strUserName, strPassword)){
            url="search.jsp";
            UserDTO user = AuthUtils.getUser(strUserName);
            request.getSession().setAttribute("user",user); 
            
            //Search
            processSearch(request, response);
        } else {
            request.setAttribute("message", "Incorrect UserID or Password");
            url="login.jsp";  
        }
        return url;
    }
    
    private String processLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        HttpSession session = request.getSession();
        if(AuthUtils.isLoggedIn(session)){
            request.getSession().invalidate();
            url = "login.jsp";
        }
        return url;
    }
    
    //Need to be fix or wrong logic
    public String processSearch(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        HttpSession session = request.getSession();
        if(AuthUtils.isLoggedIn(session)){
            String searchTerm = request.getParameter("searchTerm");
            if(searchTerm == null){
                searchTerm = "";
            } else {
                searchTerm = searchTerm.trim();
            }
            url = "search.jsp";
            List<StartupProjectsDTO> projects = spDAO.searchByProjectName(searchTerm);
            request.setAttribute("projects", projects);
            request.setAttribute("searchTerm", searchTerm);
        }
        return url;
    }
    
    public String processDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        HttpSession session = request.getSession();
        if(AuthUtils.isFounder(session)){
            String id = request.getParameter("name");
            spDAO.deleteProject(id);
            //search for delete
            processSearch(request, response);
            url="search.jsp";
        }
        return url;
    }
    
    public String processAdd(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        HttpSession session = request.getSession();
        if(AuthUtils.isFounder(session)){
            try{
                boolean checkError = false;
                
               
                String project_Name = request.getParameter("txtProjectName");
                String description = request.getParameter("txtDescription");
                String status = request.getParameter("txtStatus");
                String estimatedLaunchstr = request.getParameter("txtEstimatedLaunch");
                Date estimatedLaunch = null;
                
                if(project_Name == null || project_Name.trim().isEmpty()){
                    checkError = true;
                    request.setAttribute("txtProjectID_error", "Project ID cannot be empty");
                }
                List<String> validStatus = Arrays.asList("Ideation","Development","Launch","Scaling");
                if(status == null || !validStatus.contains(status)){
                    checkError = true;
                    request.setAttribute("txtStatus_error", "Not valid");
                }
                
                if(estimatedLaunchstr!= null && !estimatedLaunchstr.isEmpty()){
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
                    java.util.Date parsedDate = sdf.parse(estimatedLaunchstr);
                    estimatedLaunch = new java.sql.Date(parsedDate.getTime());  
                }
                
                StartupProjectsDTO projects= new StartupProjectsDTO(project_Name,description,status,estimatedLaunch);
                
                if(!checkError){
                    spDAO.addProjects(projects);
                    url = processSearch(request, response);
                    
                } else {
                    url = "AddProjects.jsp";
                    request.setAttribute("projects", projects);
                }
            }catch(Exception e){
            }
        
    }
        return url;
}    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = LOGIN_PAGE;
        try{
            String action = request.getParameter("action");
            System.out.println("action" + action);
            if(action == null){
                url = LOGIN_PAGE;
            } else {
                if(action.equals("login")){
                    url = processLogin(request, response);
                } else  if (action.equals("logout")) {
                    url = processLogout(request, response);
                } else if (action.equals("search")){
                    url = processSearch(request, response);
                } else if (action.equals("delete")){
                    url = processDelete(request, response);
                } else if (action.equals("add")){
                    url = processAdd(request, response);
                }
            } 
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}