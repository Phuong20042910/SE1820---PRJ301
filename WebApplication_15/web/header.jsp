<%@page import="utils.AuthUtils"%>
<%@page import="dto.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }
    
    .header {
        background: linear-gradient(135deg, #FF6F00, #D32F2F);
        padding: 1rem 0;
        width: 100%;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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
        transition: 0.3s;
    }
    
    .logo:hover {
        color: #FFD54F;
    }
    
    .menu {
        display: flex;
        list-style: none;
        gap: 2rem;
    }
    
    .menu-item a {
        color: #fff;
        text-decoration: none;
        font-size: 1rem;
        font-weight: 500;
        transition: 0.3s;
        padding: 0.5rem 0.8rem;
        border-radius: 4px;
    }
    
    .menu-item a:hover {
        background: rgba(255, 255, 255, 0.2);
        color: #FFD54F;
    }
    
    .search-bar {
        display: flex;
        align-items: center;
        background: #fff;
        border-radius: 25px;
        padding: 0.5rem 1rem;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    .search-input {
        border: none;
        outline: none;
        padding: 0.3rem;
        width: 200px;
        font-size: 0.9rem;
    }
    
    .search-button {
        background: none;
        border: none;
        cursor: pointer;
        font-size: 1.2rem;
        color: #D32F2F;
        transition: 0.3s;
    }
    
    .search-button:hover {
        color: #FF6F00;
    }
    
    .user-section {
        display: flex;
        align-items: center;
        gap: 1rem;
    }
    
    .welcome-text {
        color: #fff;
        font-size: 1rem;
    }
    
    .user-name {
        color: #FFD54F;
        font-weight: bold;
    }
    
    .logout-btn {
        background: #e74c3c;
        color: white;
        border: none;
        border-radius: 20px;
        padding: 0.5rem 1rem;
        font-size: 0.85rem;
        cursor: pointer;
        transition: 0.3s;
    }
    
    .logout-btn:hover {
        background: #c0392b;
    }
    
    @media (max-width: 768px) {
        .container {
            flex-direction: column;
            text-align: center;
        }
        .menu {
            flex-direction: column;
            gap: 1rem;
            margin-top: 1rem;
        }
        .search-bar {
            margin-top: 1rem;
        }
    }
</style>

<header class="header">
    <div class="container">
        <a href="#" class="logo">SHOP ONLINE</a>
        <ul class="menu">
            <li class="menu-item"><a href="#">Trang chủ</a></li>
            <li class="menu-item"><a href="#">Sản phẩm</a></li>
            <li class="menu-item"><a href="#">Giỏ hàng</a></li>
            <li class="menu-item"><a href="#">Liên hệ</a></li>
        </ul>
        <div class="right-section">
            <div class="search-bar">
                <input type="text" class="search-input" placeholder="Tìm kiếm...">
                <button class="search-button">🔍</button>
            </div>
            <c:if test="${not empty sessionScope.user}">
                <div class="user-section">
                    <span class="welcome-text">Xin chào, <span class="user-name">${user.fullName}</span>!</span>
                    <form action="MainController" method="post" style="margin: 0;">
                        <input type="hidden" name="action" value="logout"/>
                        <input type="submit" value="Đăng xuất" class="logout-btn"/>
                    </form>
                </div>
            </c:if>
        </div>
    </div>
</header>
