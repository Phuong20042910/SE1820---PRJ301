/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.UserDAO;
import dto.UserDTO;

/**
 *
 * @author THANH PHUONG
 */
public class UserTest {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

//      UserDTO udl = new UserDTO("TLN01", "Le Nhat Tung", "AD", "khong_co_password");
//        userDAO.create(udl);
       for(int i = 0; i < 10; i++){
           UserDTO ud_i = new UserDTO("USER"+i, "Nguyen Van "+i, "US", "_"+i);
           userDAO.create(ud_i);
        }
    }
}    
