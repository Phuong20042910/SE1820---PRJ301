<%-- 
    Document   : dashboard
    Created on : Mar 17, 2025, 10:19:25 AM
    Author     : THANH PHUONG
--%>

<%@page import="dto.ExamCategoriesDTO"%>
<%@page import="utils.AuthUtils"%>
<%@page import="java.util.List"%>
<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard_Page</title>
        <style>
            /* Reset mặc định */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

/* Căn chỉnh tổng thể */
body {
    background: linear-gradient(to right, #eef2f3, #8e9eab);
    text-align: left;
    padding: 20px;
}

/* Tiêu đề chính */
h1 {
    color: #333;
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

/* Khung chứa thông tin người dùng */
.user-container span {
    color: gray;
    font-size: 22px;
}

/* Tên người dùng với hiệu ứng đẹp */
.user-name {
    background: linear-gradient(to right, #f7971e, #ffd200);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    -webkit-text-fill-color: transparent;
    font-weight: bold;
    font-size: 20px;
}

/* Thanh chia cắt */
.divider {
    border: none;
    height: 8px;
    background: linear-gradient(to right, #ff5722, #007bff);
    margin: 15px auto;
    width: 100%;
    opacity: 0.8;
    border-radius: 5px;
}

/* Nút Thêm */
.add-btn {
    display: inline-block;
    background: linear-gradient(to right, #007bff, #0056b3);
    color: white;
    border-radius: 6px;
    padding: 12px 18px;
    margin-bottom: 15px;
    margin-top: 10px;
    font-weight: bold;
    transition: all 0.3s ease-in-out;
    box-shadow: 2px 4px 8px rgba(0, 0, 0, 0.2);
}

.add-btn:hover {
    background: linear-gradient(to right, #0056b3, #004080);
    transform: scale(1.05);
}

/* Thêm icon vào nút */
.add-btn::before {
    content: "+ ";
    font-size: 18px;
    font-weight: bold;
}

/* Input */
input[type="text"] {
    width: 80%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
}

input[type="text"]:focus {
    border-color: #007bff;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    outline: none;
}

/* Nút Submit */
input[type="submit"] {
    background: linear-gradient(to right, #28a745, #218838);
    color: white;
    border: none;
    padding: 12px 16px;
    border-radius: 6px;
    cursor: pointer;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
    box-shadow: 2px 4px 8px rgba(0, 0, 0, 0.2);
}

input[type="submit"]:hover {
    background: linear-gradient(to right, #218838, #1e7e34);
    transform: scale(1.05);
}

/* Nút Đăng xuất */
.logout-btn {
    background: linear-gradient(to right, #dc3545, #c82333);
}

.logout-btn:hover {
    background: linear-gradient(to right, #c82333, #a71d2a);
}

/* Bảng */
.form-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 2px 4px 10px rgba(0, 0, 0, 0.1);
}

/* Định dạng tiêu đề bảng */
.form-table th {
    background: linear-gradient(to right, #007bff, #0056b3);
    color: white;
    font-weight: bold;
    padding: 12px;
    text-align: left;
}

/* Ô trong bảng */
.form-table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

/* Dòng xen kẽ màu */
.form-table tr:nth-child(even) {
    background: #f8f9fa;
}

/* Hover dòng */
.form-table tr:hover {
    background: #e9ecef;
    transition: 0.3s ease-in-out;
}

        </style>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <div style="min-height: 500px; padding: 10px">
            <%
                UserDTO user = (session != null) ? (UserDTO) session.getAttribute("user") : null;
                if (user != null) {
                    String searchTerm = (request.getAttribute("searchTerm") != null) ? request.getAttribute("searchTerm").toString() : "";
                    List<ExamCategoriesDTO> examsCategories = (List<ExamCategoriesDTO>) request.getAttribute("examsCategories");
                    if (examsCategories != null && AuthUtils.isLoggedIn(session)) {
                        UserDTO role = AuthUtils.getUser(session);
            %>
            <div class="user-container">
                <h1>Welcome <%=user.getFullName()%></h1>
                <span class="welcome-text">You are logged in as: <span style="color: blue" class="user-name"><%= role.getRoleID() %></span>!</span>
            </div>
            <hr class="divider">
            <h1 class="Exams-Categories-Title">Exams Categories</h1>
            <table class="form-table">
                <thead>
                    <tr>
                        <th>Category_ID</th>
                        <th>Category_Name</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (ExamCategoriesDTO exct : examsCategories) {
                    %>
                        <tr>
                            <td><%= exct.getCategoryID() %></td>
                            <td><%= exct.getCategoryName() %></td>
                            <td><%= exct.getDescription() %></td>
                            <td>
                                <a href="ExamController?action=viewExams&categoryID=<%= exct.getCategoryID() %>">View Exams</a>
                            </td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <%
                    } else {
            %>
                <p>No projects found.</p>
            <%
                    }
                } else {
            %>
                <p>You do not have permission to access this content.</p>
            <%
                }
            %>

        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
