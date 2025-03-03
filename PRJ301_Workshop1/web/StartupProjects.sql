/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  THANH PHUONG
 * Created: Feb 28, 2025
 */

CREATE TABLE tblStartupProjects (
    project_id INT PRIMARY KEY Identity(1,1),
    project_name VARCHAR(100) NOT NULL,
    Description TEXT,
    Status VARCHAR(20) NOT NULL CHECK (Status IN ('Ideation', 'Development', 'Launch', 'Scaling')),
    estimated_launch DATE NOT NULL
);

INSERT INTO tblStartupProjects (project_name, Description, Status, estimated_launch)
VALUES 
('Smart Home Automation', 'An IoT-based home automation system for controlling lights and appliances.', 'Ideation', CONVERT(DATE, '20-07-2025', 105)),
('Online Learning Platform', 'A platform offering interactive courses and certifications.', 'Development', CONVERT(DATE, '05-10-2025', 105)),
('AI Resume Builder', 'An AI-powered resume builder that optimizes job applications.', 'Scaling', CONVERT(DATE, '15-11-2025', 105)),
('Blockchain Payment System', 'A secure payment system using blockchain technology.', 'Scaling', CONVERT(DATE, '01-12-2025', 105)),
('VR Fitness App', 'A virtual reality-based fitness training application.', 'Ideation', CONVERT(DATE, '12-08-2025', 105)),
('Freelance Marketplace', 'A job marketplace connecting freelancers with clients.', 'Development', CONVERT(DATE, '30-09-2025', 105)),
('Cryptocurrency Wallet', 'A secure digital wallet for storing and managing cryptocurrencies.', 'Launch', CONVERT(DATE, '18-05-2025', 105)),
('AI-Powered Language Translator', 'An AI-based real-time language translation app.', 'Scaling', CONVERT(DATE, '22-12-2025', 105));
