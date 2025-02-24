<%-- 
    Document   : header
    Created on : Feb 23, 2025, 8:44:38 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    .header{
        background-color: #0000cc;
        padding: 3rem 0;
        width: 100%;
        top: 0;
    }
    
    .container{
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 2.5rem;
    }
    
    
    .nav{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .logo{
        color:  #ff4d4d;
        font-size: 2rem;
        font-weight: bold;
        text-decoration:none;
    }
    
    .menu{
        display: flex;
        list-style: none;
        gap: 2.5rem;
    }
    
    .menu-item a{
        color: #fff;
        text-decoration: none;
        font-size: 1.5rem;
        transition: color 0.5s ease;
    }
    
    .menu-item a:hover{
        color: #3498db;
    }
    
    .search-bar{
        display: flex;
        align-items: center;
        background: #fff;
        border-radius: 25px;
        padding: 0.5rem 1rem;
    }
    
    .search-input{
        border: none;
        outline: none;
        padding: 0.2rem;
        width: 200px;
    }
    
    .search-button{
        background:none;
        border:none;
        cursor: pointer;
        color:#2c3e50;
    }
</style>

<header class="header">
    <%
        int x = 100;
    %>
    <div class="container">
        <nav class="nav">
            <a href="#" class="logo">Sellgameshop.com</a>
            <ul class="menu">
                <li class="menu-item"><a href="#">Trang chủ</a></li>
                <li class="menu-item"><a href="#">Sản phẩm</a></li>
                <li class="menu-item"><a href="#">Thanh toán hoá đơn</a></li>
                <li class="menu-item"><a href="#">Liên hệ</a></li>
            </ul>
            <div class="search-bar">
                <input type="text" class="search-input" placeholder="Tìm kiếm...">
                <button class="search-button">🔎</button>
            </div>
        </nav>
    </div>
</header>
