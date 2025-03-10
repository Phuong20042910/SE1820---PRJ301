<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .footer {
        background: linear-gradient(135deg, #FF6F00, #D32F2F);
        color: #fff;
        padding: 4rem 0;
        margin-top: 3rem;
        font-family: 'Poppins', sans-serif;
    }

    .footer-container {
        max-width: 1200px;
        margin: auto;
        padding: 0 1rem;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 2rem;
    }

    .footer-section h3 {
        font-size: 1.4rem;
        margin-bottom: 1rem;
        position: relative;
        display: inline-block;
    }

    .footer-section h3::after {
        content: '';
        display: block;
        width: 50px;
        height: 3px;
        background: #FFD54F;
        margin-top: 5px;
    }

    .footer-section p {
        font-size: 0.95rem;
        line-height: 1.6;
        opacity: 0.8;
    }

    .footer-links {
        list-style: none;
        padding: 0;
    }

    .footer-links li {
        margin-bottom: 0.7rem;
    }

    .footer-links a {
        color: rgba(255, 255, 255, 0.9);
        text-decoration: none;
        font-size: 0.95rem;
        transition: color 0.3s ease-in-out;
    }

    .footer-links a:hover {
        color: #FFD54F;
    }

    .social-links {
        display: flex;
        gap: 1rem;
        margin-top: 1rem;
    }

    .social-links a {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 40px;
        height: 40px;
        background: rgba(255, 255, 255, 0.2);
        border-radius: 50%;
        color: white;
        font-size: 1.4rem;
        transition: 0.3s ease;
    }

    .social-links a:hover {
        background: #FFD54F;
    }

    .copyright {
        text-align: center;
        padding-top: 2rem;
        margin-top: 3rem;
        border-top: 1px solid rgba(255, 255, 255, 0.2);
        font-size: 0.9rem;
        opacity: 0.8;
    }
</style>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h3>Về Chúng Tôi</h3>
            <p>Chúng tôi cung cấp nền tảng thương mại điện tử hiện đại, kết nối người bán và người mua dễ dàng hơn.</p>
        </div>
        
        <div class="footer-section">
            <h3>Liên Kết</h3>
            <ul class="footer-links">
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Sản phẩm</a></li>
                <li><a href="#">Giỏ hàng</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </div>
        
        <div class="footer-section">
            <h3>Liên Hệ</h3>
            <p>Địa chỉ: 123 Đường ABC, Thành phố XYZ</p>
            <p>Email: support@shoponline.com</p>
            <p>Điện thoại: (84) 123-456-789</p>
        </div>
        
        <div class="footer-section">
            <h3>Theo Dõi Chúng Tôi</h3>
            <p>Kết nối với chúng tôi trên các nền tảng mạng xã hội:</p>
            <div class="social-links">
                <a href="#">📘</a>
                <a href="#">🐦</a>
                <a href="#">📷</a>
            </div>
        </div>
    </div>
    
    <div class="copyright">
        <p>&copy; 2025 ShopOnline. Tất cả quyền được bảo lưu.</p>
    </div>
</footer>
