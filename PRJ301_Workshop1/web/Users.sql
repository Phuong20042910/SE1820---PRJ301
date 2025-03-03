/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  THANH PHUONG
 * Created: Feb 28, 2025
 */

Create database Workshop1_PRJ301
Use Workshop1_PRJ301

CREATE TABLE tblUsers (
    Username VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL CHECK (Role IN ('Founder', 'Team Member'))
);



INSERT INTO tblUsers(Username, Name, Password, Role)
VALUES
('admin', 'Admin123', '12345678', 'Founder'),
('Phuong2004', 'Phuong', '29102004', 'Founder'),
('User_1234', 'Main user', '12345', 'Team Member');

