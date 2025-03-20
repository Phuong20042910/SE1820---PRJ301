<%-- 
    Document   : footer
    Created on : Mar 17, 2025, 10:19:17 AM
    Author     : THANH PHUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .footer {
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364); /* Gradient xanh tím đậm */
    color: #f1f1f1;
    padding: 4rem 0;
    margin-top: 2rem;
    font-family: 'Poppins', sans-serif;
    box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.3); /* Đổ bóng nhẹ */
    border-radius: 20px 20px 0 0; /* Bo góc trên */
}

.footer-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1.5rem;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* Responsive linh hoạt */
    gap: 2rem;
}

.footer-section h3 {
    font-size: 1.5rem;
    margin-bottom: 1.2rem;
    color: #ffcc00; /* Màu vàng nổi bật */
    font-weight: bold;
    text-transform: uppercase;
    text-shadow: 0 0 10px rgba(255, 204, 0, 0.7); /* Hiệu ứng Glow */
}

.footer-section p {
    font-size: 1rem;
    line-height: 1.8;
    opacity: 0.9;
}

.footer-links {
    list-style: none;
    padding: 0;
}

.footer-links li {
    margin-bottom: 0.8rem;
}

.footer-links a {
    color: #f1f1f1;
    text-decoration: none;
    font-size: 1rem;
    transition: all 0.4s ease-in-out;
    display: inline-block;
}

.footer-links a:hover {
    color: #ffcc00;
    transform: translateX(8px); /* Hiệu ứng hover đẩy mạnh hơn */
    text-shadow: 0 0 12px rgba(255, 204, 0, 0.8); /* Glow khi hover */
}

.social-links {
    display: flex;
    gap: 1.2rem;
    margin-top: 1rem;
}

.social-links a {
    background: rgba(255, 255, 255, 0.15);
    padding: 10px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s ease-in-out;
    box-shadow: 0 0 8px rgba(255, 255, 255, 0.2);
}

.social-links a:hover {
    background: #ffcc00;
    transform: scale(1.15); /* Phóng to mạnh hơn khi hover */
    box-shadow: 0 0 15px rgba(255, 204, 0, 0.9); /* Hiệu ứng glow mạnh */
}

.social-links img {
    width: 35px;
    height: 35px;
}

.copyright {
    text-align: center;
    padding-top: 2rem;
    margin-top: 2.5rem;
    border-top: 1px solid rgba(255, 255, 255, 0.3);
    font-size: 1.1rem;
    color: #dcdde1;
    opacity: 0.85;
    font-weight: bold;
}

</style>


<footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h3>Về chúng tôi</h3>
            <p>DethiOnline là nơi tạo ra hình thức thi trực tuyến hiện đại, giúp giáo viên và học sinh, sinh viên dễ dàng quản lý các bài thi và tham gia một cách nhanh chóng mà không cần mất quá nhiều thời gian. Chúng tôi luôn muốn mang đến trải nghiệm thi an toàn, nhanh chóng và đạt hiệu quả cho tất cả người dùng trên toàn lãnh thổ Việt Nam.</p>
        </div>
        
        <div class="footer-section">
            <h3>Liên kết nhanh</h3>
            <ul class="footer-links">
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Thể loại đề thi</a></li>
                <li><a href="#">Các bài thi mẫu</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>
        </div>
        
        <div class="footer-section">
            <h3>Liên hệ với chúng tôi qua:</h3>
            <p>Địa chỉ: 345 Đường Lê Đức Thọ, phường 17, Quận Gò Vấp</p>
            <p>Email: DethiOnline@gmail.com</p>
            <p>Điện thoại: (84) 987-654-3210</p>
        </div>
        
        <div class="footer-section">
    <h3>Theo dõi chúng tôi</h3>
    <p>Cập nhật các tin tức về đề thi mới nhất từ chúng tôi</p>
    <div class="social-links">
        <a href="#">
            <img src="img/icons8-facebook-logo-48.png" alt="Facebook" width="40">
        </a>
        <a href="#">
            <img src="img/icons8-instagram-logo-48.png" alt="Instagram" width="40">
        </a>
        <a href="#">
            <img src="img/icons8-twitter-50.png" alt="Twitter" width="40">
        </a>
    </div>
</div>

    </div>
    
    <div class="copyright">
        <p>&copy; 2025 Online Examination. Tất cả quyền được bảo lưu.</p>
    </div>
</footer>
