/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author THANH PHUONG
 */
public class UserDTO {
    private String UserId;
    private String Fullname;
    private String roleId;
    private String password;

    public UserDTO(String UserId, String Fullname, String roleId, String password) {
        this.UserId = UserId;
        this.Fullname = Fullname;
        this.roleId = roleId;
        this.password = password;
    }

    public String getUserId() {
        return UserId;
    }

    public void setUserId(String UserId) {
        this.UserId = UserId;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "UserId=" + UserId + ", Fullname=" + Fullname + ", roleId=" + roleId + ", password=" + password + '}';
    }
    
    
}
