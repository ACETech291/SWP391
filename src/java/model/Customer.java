/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Customer {

    private int id;
    private String userName;
    private String phoneNumber;
    private String email;
    private String password;
    private int status;
    private Role role;

    public Customer() {
    }

    public Customer(int id, String userName, String phoneNumber, String email, String password, int status, Role role) {
        this.id = id;
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
        this.role = role;
    }
    public Customer( String userName, String phoneNumber, String email, String password, int status) {
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
    }
    public Customer( String userName, String phoneNumber, String email, String password, int status, Role role) {
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", userName=" + userName + ", phoneNumber=" + phoneNumber + ", email=" + email + ", password=" + password + ", status=" + status + ", role=" + role + '}';
    }

    
    
    

    
    
}
