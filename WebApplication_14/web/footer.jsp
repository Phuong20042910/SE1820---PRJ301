<%-- 
    Document   : footer
    Created on : Mar 6, 2025, 10:46:36 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .footer {
        background-color: #2c3e50;
        color: #fff;
        padding: 3rem 0;
        margin-top: 2rem;
    }

    .footer-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 1rem;
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 2rem;
    }

    .footer-section h3 {
        font-size: 1.2rem;
        margin-bottom: 1rem;
        color: #3498db;
    }

    .footer-section p {
        margin-bottom: 0.5rem;
        font-size: 0.9rem;
        line-height: 1.5;
    }

    .footer-links {
        list-style: none;
    }

    .footer-links li {
        margin-bottom: 0.5rem;
    }

    .footer-links a {
        color: #fff;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .footer-links a:hover {
        color: #3498db;
    }

    .social-links {
        display: flex;
        gap: 1rem;
        margin-top: 1rem;
    }

    .social-links a {
        color: #fff;
        text-decoration: none;
        font-size: 1.5rem;
    }

    .copyright {
        text-align: center;
        padding-top: 2rem;
        margin-top: 2rem;
        border-top: 1px solid #34495e;
        font-size: 0.9rem;
    }
</style>

<footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h3>Về StartupProjects</h3>
            <p>StartupProjects là nền tảng kết nối và hỗ trợ các startup phát triển mạnh mẽ với những công cụ, tài nguyên và cộng đồng sáng tạo.</p>
        </div>
        
        <div class="footer-section">
            <h3>Liên kết nhanh</h3>
            <ul class="footer-links">
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Dự án</a></li>
                <li><a href="#">Đầu tư</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </div>
        
        <div class="footer-section">
            <h3>Liên hệ</h3>
            <p>Địa chỉ: 456 Đường Khởi Nghiệp, Quận Start</p>
            <p>Email: contact@startupprojects.com</p>
            <p>Điện thoại: (84) 987-654-321</p>
        </div>
        
        <div class="footer-section">
            <h3>Theo dõi chúng tôi</h3>
            <p>Cập nhật tin tức và sự kiện mới nhất từ StartupProjects</p>
            <div class="social-links">
                <a href="#">📱</a>
                <a href="#">💬</a>
                <a href="#">📷</a>
            </div>
        </div>
    </div>
    
    <div class="copyright">
        <p>&copy; 2025 StartupProjects. Tất cả quyền được bảo lưu.</p>
    </div>
</footer>
