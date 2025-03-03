/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.StartupProjectsDAO;
import DTO.StartupProjectsDTO;
import DTO.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.AuthUtils;

/**
 *
 * @author THANH PHUONG
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {
    
    private StartupProjectsDAO strDAO = new StartupProjectsDAO();
    
    private static final String LOGIN_PAGE = "login.jsp";
    
    private String processLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        //
        String strUsername = request.getParameter("txtUsername");
        String strPassword = request.getParameter("txtPassword");
        if(AuthUtils.isValidLogin(strUsername, strPassword)){
            url = "search.jsp";
            UserDTO user = AuthUtils.getUser(strUsername);
            request.getSession().setAttribute("user", user);
            
            //search
            processSearch(request, response);
        } else {
            request.setAttribute("message", "Incorrect Username or Password");
            url = "login.jsp";
        }
        return url;
    }
    
    private String processLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        //
        HttpSession session = request.getSession();
        if(AuthUtils.isLoggedIn(session)){
            request.getSession().invalidate();
            url = "login.jsp";
        }
        
        return url;
    }
    
    
   public String processSearch(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String url = LOGIN_PAGE;
       HttpSession session = request.getSession();
       if(AuthUtils.isLoggedIn(session)){
           String searchTerm = request.getParameter("searchTerm");
           if(searchTerm == null){
               searchTerm = "";
           }
           List<StartupProjectsDTO> projects = strDAO.searchByTitle2(searchTerm);
           request.setAttribute("projects", projects);
           request.setAttribute("searchTerm", searchTerm);
       }
       return url;
   }
   
    public String processDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = LOGIN_PAGE;
        HttpSession session = request.getSession();
        if(AuthUtils.isAdmin(session)){
            String username = request.getParameter("username");
            strDAO.updateQuantityToZero(username);
            
            processSearch(request,response);
            url = "search.jsp";
        }
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
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
