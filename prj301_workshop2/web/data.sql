/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  THANH PHUONG
 * Created: Mar 17, 2025
 */

Create database prj301_workshop2
Use prj301_workshop2;


CREATE TABLE tblUsers (
    username VARCHAR(50) PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    roleid VARCHAR(20) NOT NULL CHECK (roleid IN ('Instructor', 'Student'))
);

-- Create Exam Categories Table
CREATE TABLE tblExamCategories (
    categoryid INT IDENTITY(1,1) PRIMARY KEY,
    categoryname VARCHAR(50) NOT NULL,
    description TEXT
);


-- Create Exams Table
CREATE TABLE tblExams (
    examid INT IDENTITY(1,1) PRIMARY KEY,
    examtitle VARCHAR(100) NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    categoryid INT NOT NULL,
    totalmarks INT NOT NULL,
    Duration INT NOT NULL, -- Duration in minutes
    FOREIGN KEY (categoryid) REFERENCES tblExamCategories(categoryid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Create Questions Table
CREATE TABLE tblQuestions (
    questionid INT IDENTITY(1,1) PRIMARY KEY,
    examid INT NOT NULL,
    question_text TEXT NOT NULL,
    option_a VARCHAR(100) NOT NULL,
    option_b VARCHAR(100) NOT NULL,
    option_c VARCHAR(100) NOT NULL,
    option_d VARCHAR(100) NOT NULL,
    correct_option CHAR(1) NOT NULL CHECK (correct_option IN ('A', 'B', 'C', 'D')),
    FOREIGN KEY (examid) REFERENCES tblExams(examid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Create Exam Results Table (Optional for storing student scores)
CREATE TABLE tblExamResults (
    resultid INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    examid INT NOT NULL,
    score INT NOT NULL,
    taken_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (username) REFERENCES tblUsers(username)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (examid) REFERENCES tblExams(examid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO tblUsers (username, fullname, password, roleid) 
VALUES 
('inst01', 'Pham Duc Thanh Phuong', 'phuong2004', 'Instructor'),
('inst02', 'Ly Anh Khoa', 'anhkhoa2004', 'Instructor'),
('inst03', 'Vu Chi Bao', 'chibao2004','Instructor');


-- Insert Sample Students
INSERT INTO tblUsers (username, fullname, password, roleid) 
VALUES 
('stud01', 'Mai Nhat Thong', 'thong1234567', 'Student'),
('stud02', 'Nguyen Tran Phong Van', 'Van012345', 'Student'),
('stud03', 'Lam Chi Thang', 'Thang1234', 'Student'),
('stud04', 'Nguyen Ngoc Tuong Vy', 'Vy19052024', 'Student'),
('stud05', 'Bui Hoang Bao Tram' ,  'Tram102134', 'Student');

-- Insert Default Categories
INSERT INTO tblExamCategories (categoryname, description) 
VALUES 
('Progress Test', 'Short tests to track progress'),
('Pop Quiz', 'Unannounced short quizzes to check understanding'),
('Unit Test', 'Tests at the end of each unit or chapter'),
('Final Exam', 'Comprehensive test covering the entire course'),
('Mock Test', 'Simulated test for exam preparation'),
('Placement Test', 'Test to determine skill level before a course');



