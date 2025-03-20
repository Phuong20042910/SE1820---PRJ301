<%-- 
    Document   : header
    Created on : Mar 17, 2025, 10:19:10 AM
    Author     : THANH PHUONG
--%>

<%@page import="dto.UserDTO"%>
<%@page import="utils.AuthUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        padding-top: 80px; /* Để tránh bị header che nội dung */
        font-family: Arial, sans-serif;
    }

    .header {
        background: linear-gradient(90deg, #ff416c, #ff4b2b);
        padding: 1rem 0;
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 1rem;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo {
        color: #fff;
        font-size: 1.8rem;
        font-weight: bold;
        text-decoration: none;
        transition: transform 0.3s ease;
    }

    .logo:hover {
        transform: scale(1.1);
    }

    .nav {
        display: flex;
        flex: 1;
        justify-content: space-between;
        align-items: center;
    }

    .menu {
        display: flex;
        list-style: none;
        gap: 2rem;
        flex: 1;
        justify-content: center;
    }

    .menu-item a {
        color: #fff;
        text-decoration: none;
        font-size: 1rem;
        font-weight: bold;
        transition: color 0.3s ease, transform 0.2s;
    }

    .menu-item a:hover {
        color: #ffeb3b;
        transform: translateY(-2px);
    }

    .user-section {
        display: flex;
        align-items: center;
        gap: 1.5rem;
        margin-left: auto;
    }

    .welcome-text {
        color: #fff;
        font-size: 1rem;
    }

    .user-name {
        color: #ffeb3b;
        font-weight: bold;
    }

    .logout-btn {
        background-color: #222;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        font-weight: bold;
        transition: background-color 0.3s ease, transform 0.2s;
    }

    .logout-btn:hover {
        background-color: #555;
        transform: scale(1.05);
    }
</style>

<header class="header">
    <div class="container">
        <!-- Logo -->
        <a href="#" class="logo">DethiOnline</a>

        <!-- Menu -->
        <nav class="nav">
            <ul class="menu">
                <li class="menu-item"><a href="#">Trang chủ</a></li>
                <li class="menu-item"><a href="#">Thể loại đề thi</a></li>
                <li class="menu-item"><a href="#">Các bài thi mẫu</a></li>
                <li class="menu-item"><a href="#">Liên hệ</a></li>
            </ul>
        </nav>

        <!-- Phần User -->
        <% if (AuthUtils.isLoggedIn(session)) {
            UserDTO userHeader = AuthUtils.getUser(session);
        %>
            <div class="user-section">
                <span class="welcome-text">Xin chào, <span class="user-name"><%=userHeader.getFullName()%></span>!</span>
                <form action="MainController" method="post" style="margin: 0;">
                    <input type="hidden" name="action" value="logout"/>
                    <button type="submit" class="logout-btn">Đăng xuất</button>
                </form>
            </div>
        <% } %>
    </div>
</header>