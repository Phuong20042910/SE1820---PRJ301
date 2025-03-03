<%-- 
    Document   : header
    Created on : Mar 3, 2025, 4:22:20 PM
    Author     : THANH PHUONG
--%>

<%@page import="DTO.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    .header {
        background-color: #1a1a2e;
        padding: 1rem 0;
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 1rem;
    }

    .nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .logo {
        color: #f9ca24;
        font-size: 1.8rem;
        font-weight: bold;
        text-decoration: none;
        transition: color 0.3s;
    }

    .logo:hover {
        color: #f39c12;
    }

    .menu {
        display: flex;
        list-style: none;
        gap: 1.5rem;
    }

    .menu-item a {
        color: #fff;
        text-decoration: none;
        font-size: 1rem;
        transition: color 0.3s ease;
        padding: 0.5rem 1rem;
        border-radius: 5px;
    }

    .menu-item a:hover {
        background: #f9ca24;
        color: #1a1a2e;
    }

    .search-bar {
        display: flex;
        align-items: center;
        background: #fff;
        border-radius: 20px;
        padding: 0.5rem 1rem;
    }

    .search-input {
        border: none;
        outline: none;
        padding: 0.3rem;
        width: 180px;
    }

    .search-button {
        background: none;
        border: none;
        cursor: pointer;
        color: #1a1a2e;
    }

    .user-section {
        display: flex;
        align-items: center;
        gap: 1rem;
        margin-left: 1.5rem;
    }

    .welcome-text {
        color: #fff;
        font-size: 1rem;
    }

    .user-name {
        color: #f9ca24;
        font-weight: bold;
    }

    .logout-btn {
        background-color: #e74c3c;
        color: white;
        border: none;
        border-radius: 4px;
        padding: 0.5rem 1rem;
        font-size: 0.9rem;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .logout-btn:hover {
        background-color: #c0392b;
    }

    .right-section {
        display: flex;
        align-items: center;
    }
</style>

<header class="header">
    <div class="container">
        <nav class="nav">
            <a href="#" class="logo">Startup Projects</a>
            <ul class="menu">
                <li class="menu-item"><a href="#">Trang chủ</a></li>
                <li class="menu-item"><a href="#">Thông tin dự án</a></li>
                <li class="menu-item"><a href="#">Về chúng tôi</a></li>
                <li class="menu-item"><a href="#">Liên hệ</a></li>
            </ul>
            <div class="right-section">
                <div class="search-bar">
                    <input type="text" class="search-input" placeholder="Tìm kiếm...">
                    <button class="search-button">🔍</button>
                </div>
                <% if (session.getAttribute("user") != null) {
                    UserDTO userHeader = (UserDTO) session.getAttribute("user");
                %>
                <div class="user-section">
                    <span class="welcome-text">Xin chào, <span class="user-name"><%=userHeader.getName()%></span>!</span>
                    <form action="MainController" method="post" style="margin: 0;">
                        <input type="hidden" name="action" value="logout"/>
                        <input type="submit" value="Đăng xuất" class="logout-btn"/>
                    </form>
                </div>
                <% } %>
            </div>
        </nav>
    </div>
</header>
