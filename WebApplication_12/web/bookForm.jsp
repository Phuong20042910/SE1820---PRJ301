<%-- 
    Document   : bookForm
    Created on : Feb 27, 2025, 10:33:43 AM
    Author     : THANH PHUONG
--%>

<%@page import="dto.BookDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Management</title>
    </head>
    <body>
        <%
            BookDTO book = new BookDTO();
            try {
                book = (BookDTO)request.getAttribute("book");
            }catch(Exception e){
                book = new BookDTO();
            }
            if(book == null){
                book = new BookDTO();
            }
            String txtBookID_error = request.getAttribute("txtBookID_error") + "";
            txtBookID_error = txtBookID_error.equals("null")?"":txtBookID_error;
            String txtTitle_error = request.getAttribute("txtTitle_error")+ "";
            txtTitle_error = txtTitle_error.equals("null") ? "" : txtTitle_error;
            String txtQuantity_error = request.getAttribute("txtQuantity_error") + "";
            txtQuantity_error = txtQuantity_error.equals("null") ? "" : txtQuantity_error;
        %>    
        <div class="container">
            <h1>Book Information</h1>
            <form action="MainController" method="post">
                <input type="hidden" name="action" value="add"/>
                
                <div class="form-group">
                    <label for="txtBookID">Book ID:</label>
                    <input type="text" id="txtBookID" name="txtBookID" value="<%=book.getBookID()%>"/> 
                    <% if(!txtBookID_error.isEmpty()){ %>
                    <div class="error-message"><%=txtBookID_error%></div>
                    <%}    %>
                </div>
                
                <div class="form-group">
                    <label for="txtTitle">Title:</label>
                    <input type="text" id="txtTitle" name="txtTitle" value="<%=book.getTitle()%>"/>
                    <% if(!txtTitle_error.isEmpty()){ %>
                    <div class="error-message"><%=txtTitle_error%></div>
                    <%}    %>
                </div>
                
                <div class="form-group">
                    <label for="txtPublishYear">Publish Year:</label>
                    <input type="number" id="txtPublishYear" name="txtPublishYear" value="<%=book.getPublishYear()%>"/>
                </div>
                
                <div class="form-group">
                    <label for="txtPrice">Price:</label>
                    <input type="number" id="txtPrice" name="txtPrice" value="<%=book.getPrice()%>"/>
                </div>    
                <div class="form-group">
                    <label for="txtQuantity">Quantity:</label>
                    <input type="number" id="txtQuantity" name="txtQuantity" value="<%=book.getQuantity()%>"/>
                    <% if(!txtQuantity_error.isEmpty()){ %>
                    <div class="error-message"><%=txtQuantity_error%></div>
                    <%}    %>    
                </div>
                
                <div class="button-group">
                    <input type="submit" value="Save"/>
                    <input type="reset" value="Reset"/>
                </div>    
            </form>
        </div>
    </body>
</html>
