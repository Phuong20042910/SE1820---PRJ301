/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  THANH PHUONG
 * Created: Mar 6, 2025
 */

CREATE database Prj301_WORKSHOP1_SE1820
Use Prj301_WORKSHOP1_SE1820
CREATE TABLE tblUsers (
    Username VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL CHECK (Role IN ('Founder', 'Team Member'))
);

CREATE TABLE tblStartupProjects (
    project_id INT IDENTITY(1,1) PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    Description TEXT NULL,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Ideation', 'Development', 'Launch', 'Scaling')),
    estimated_launch DATE NOT NULL
);

INSERT INTO tblUsers (Username, Name, Password, Role) VALUES
-- 9 Founder
('founder01', 'Pham Duc Thanh Phuong', '123456789', 'Founder'),
('founder02', 'Bui Ngoc Thien Ngan', 'ABC123', 'Founder'),
('founder03', 'Tran Hoang Dat', 'abc123', 'Founder'),
('founder04', 'Pham Hoang Giang', 'securepass', 'Founder'),
('founder05', 'Doan Ngoc Son', 'son123', 'Founder'),
('founder06', 'Pham Tran Trung Thien', '1234567abc', 'Founder'),
('founder07', 'Bui Ngoc Thien Ngan', 'ABC123', 'Founder'),
('founder08', 'Tran Hoang Dat', 'abc123', 'Founder'),
('founder09', 'Pham Hoang Giang', 'tuimuxin', 'Founder');

-- 20 Team Team Member
INSERT INTO tblUsers (Username, Name, Password, Role) VALUES
('nguyenanh', 'Nguyen Van Anh', 'hashed_password_1', 'Team Member'),
('tranthuy', 'Tran Thi Thuy', 'hashed_password_2', 'Team Member'),
('phamhoang', 'Pham Hoang Nam', 'hashed_password_3', 'Team Member'),
('leduy', 'Le Duy Khanh', 'hashed_password_4', 'Team Member'),
('dangquynh', 'Dang Thi Quynh', 'hashed_password_5', 'Team Member'),
('buitrung', 'Bui Trung Hieu', 'hashed_password_6', 'Team Member'),
('doanminh', 'Doan Minh Tuan', 'hashed_password_7', 'Team Member'), 
('hoangha', 'Hoang Hai Dang', 'hashed_password_8', 'Team Member'),
('vuonglinh', 'Vuong Thi Linh', 'hashed_password_9', 'Team Member'),
('ngothao', 'Ngo Thao Vy', 'hashed_password_10', 'Team Member'),
('phunglam', 'Phung Lam Bao', 'hashed_password_11', 'Team Member'),
('maianh', 'Mai Anh Thu', 'hashed_password_12', 'Team Member'),
('truongson', 'Truong Son Ha', 'hashed_password_13', 'Team Member'),
('huynhphuc', 'Huynh Phuc Khang', 'hashed_password_14', 'Team Member'),
('dinhkhoi', 'Dinh Khoi Nguyen', 'hashed_password_15', 'Team Member'),
('luongtuan', 'Luong Tuan Kiet', 'hashed_password_16', 'Team Member'),
('tonnhi', 'Ton Nu Bao Nhi', 'hashed_password_17', 'Team Member'),
('hoanglong', 'Hoang Long Vu', 'hashed_password_18', 'Team Member'),
('khuongbinh', 'Khuong Binh An', 'hashed_password_19', 'Team Member'),
('chithanh', 'Chi Thanh Cong', 'hashed_password_20', 'Team Member');

INSERT INTO tblStartupProjects (project_name, Description, Status, estimated_launch)  
VALUES  
('EcoEats', 'Nen tang ket noi nguoi dung voi cac nha hang su dung thuc pham huu co va ben vung.', 'Development', '2025-07-15'),  
('SmartPark', 'Ung dung giup tim bai do xe trong theo thoi gian thuc, su dung cam bien IoT.', 'Ideation', '2026-01-10'),  
('MedAI', 'Tro ly AI ho tro chan doan benh dua tren du lieu suc khoe cua nguoi dung.', 'Development', '2025-12-01'),  
('EduVerse', 'Nen tang hoc tap ao su dung cong nghe VR/AR de nang cao trai nghiem giao duc.', 'Scaling', '2024-11-20'),  
('GreenCharge', 'He thong tram sac nhanh cho xe dien, su dung nang luong mat troi.', 'Launch', '2025-06-30'),  
('AgriTechHub', 'Mang luoi ket noi nong dan voi nha phan phoi, toi uu chuoi cung ung.', 'Development', '2025-09-05'),  
('CyberShield', 'Dich vu bao mat AI giup doanh nghiep chong lai cac cuoc tan cong mang.', 'Ideation', '2026-03-18'),  
('AI Recruit', 'Nen tang tuyen dung AI giup phan tich va de xuat ung vien phu hop.', 'Scaling', '2024-10-12'),  
('FitTrack', 'Ung dung theo doi suc khoe ca nhan dua tren AI va cam bien deo tay.', 'Launch', '2025-04-25'),  
('ArtFusion', 'Cho NFT danh cho nghe si va nha suu tam, tap trung vao nghe thuat so.', 'Development', '2025-08-22');  