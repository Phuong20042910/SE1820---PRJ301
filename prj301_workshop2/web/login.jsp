<%-- 
    Document   : login
    Created on : Mar 17, 2025, 10:19:02 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN_PAGE</title>
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
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: linear-gradient(to right, #74ebd5, #acb6e5);
    padding-top: 80px;
}

/* Container chính */
.login-container {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
    text-align: center;
    width: 400px;
    transition: transform 0.3s ease-in-out;
}

.login-container:hover {
    transform: translateY(-3px);
}

/* Tiêu đề */
.Login-Title {
    color: #34495e;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
}

/* Căn chỉnh input */
.form-group {
    text-align: left;
    margin-bottom: 15px;
}

.form-group label {
    font-weight: 600;
    color: #2c3e50;
}

.form-group input {
    width: 100%;
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 15px;
    transition: all 0.3s ease;
}

.form-group input:focus {
    border-color: #74ebd5;
    box-shadow: 0 0 6px rgba(116, 235, 213, 0.5);
    outline: none;
}

/* Nút đăng nhập */
.submit-btn {
    background: linear-gradient(to right, #ff758c, #ff7eb3);
    color: white;
    font-size: 16px;
    font-weight: bold;
    border: none;
    padding: 12px;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.3s ease;
    width: 100%;
}

.submit-btn:hover {
    background: linear-gradient(to right, #ff7eb3, #ff758c);
    transform: scale(1.03);
}

/* Footer */
.footer {
    background: #34495e;
    color: white;
    width: 100%;
    text-align: center;
    padding: 20px;
    position: relative;
    margin-top: 40px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
}

.footer-container {
    display: flex;
    justify-content: space-between;
    max-width: 900px;
    margin: 0 auto;
    text-align: left;
    flex-wrap: wrap;
}

.footer-column {
    flex: 1;
    padding: 15px;
}

.footer-column h3 {
    font-size: 17px;
    font-weight: bold;
    color: #f1c40f;
    margin-bottom: 8px;
}

.footer-column p {
    font-size: 14px;
    color: #ddd;
    line-height: 1.5;
}

    </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
                    <div class="login-container">
                <form action="MainController" method="post">
                    <h2 class="Login-Title">Đăng Nhập</h2>
                    <div class="login-form">
                        <input type="hidden" name="action" id="action" value="login"/>
                        <div class="form-group">
                            <label for="userid">Tên Đăng Nhập</label>
                            <input type="text" name="txtUserName" id="txtUserName" required/> 
                        </div>

                        <div class="form-group">
                            <label for="password">Mật Khẩu</label>
                            <input type="password" name="txtPassword" id="txtPassword" required/> 
                        </div>
                        <button type="submit" class="submit-btn">Đăng nhập</button>
                        <%
                            String message = request.getAttribute("message")+"";
                        %>
                        <%=message.equals("null")?"":message%>
                    </div>
                </form>
            </div>
            <%@include file="footer.jsp"%>
    </body>
</html>
