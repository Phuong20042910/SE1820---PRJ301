<%-- 
    Document   : header
    Created on : Feb 17, 2025, 10:46:28 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    .header {
        background-color: black;
        padding: 1rem 0;
        width: 100%;
        top: 0;
    }
    
    .container {
        max-width: 2000px;
        margin: 0 auto;
        padding: 0 1rem;
    }
    
    .nav {
        display: flex;
        justify-content: space-around;
        align-items: flex-start;
    }
    
    .logo {
        color:#e60000 ;
        font-size: 3.0rem;
        font-weight: bold;
        text-decoration: none;
    }
    
    .menu {
        display: flex;
        list-style:  none;
        gap: 3.5rem;
    }    
    
    .menu-item a{
        color: #66a3ff;
        text-decoration: none;
        font-size: 2.0rem;
        transition: color 1.0s ease;
    }
    
    .menu-item a:hover{
        color: #1aff66;
    }
    
    .search-bar{
        display: flex;
        align-items: center;
        background: #f2f2f2;
        border-radius: 30px;
        padding: 0.8rem 1.2rem;
    }
    
    .search-input {
        border: none;
        outline: none;
        padding: 1.2rem;
        width: 250px;
    }
    
    .search-button {
        background: none;
        border: none;
        cursor: pointer;
        color: #808000;
    }

</style>

<header class="header">
    <%
        int x = 100;
    %>
    <div class="container">
        <nav class="nav">
            <a href="#" class="logo">Bán game online</a>
            <ul class="menu">
                <li class="menu-item"><a href="#">Trang chủ</a></li>
                <li class="menu-item"><a href="#">Sản phẩm</a></li>
                <li class="menu-item"><a href="#">Giỏ hàng </a></li>
                <li class="menu-item"><a href="#">Liên hệ</a></li>
            </ul>
            <div clas="search-bar">
                <input type="text" class="search-input" placeholder="Tìm kiếm...">
                <button class="search-button">🔍</button>
            </div>
        </nav>
    </div>
</header>
