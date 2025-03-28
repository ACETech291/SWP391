/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Ba Hien
 */
//implements SQLInsert
public class Customer implements SQLInsert {

    private int id_customer;
    private String userName;
    private String phoneNumber;
    private String email;
    private String password;

    private int status;
    private String image_url;
    private Role role;

    public Customer() {
    }

    public Customer(int id_customer, String userName, String phoneNumber, String email, String password, int status, Role role) {
        this.id_customer = id_customer;
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
        this.role = role;
    }

    public Customer(String userName, String phoneNumber, String email, String password, int status) {
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
    }

    public Customer(String userName, String phoneNumber, String email, String password, int status, Role role) {
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
        this.role = role;
    }

    public Customer(int id_customer, String userName, String phoneNumber, String email, String password, int status, String image_url, Role role) {
        this.id_customer = id_customer;
        this.userName = userName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.password = password;
        this.status = status;
        this.image_url = image_url;
        this.role = role;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public int getId_customer() {
        return id_customer;
    }

    public void setId(int id_customer) {
        this.id_customer = id_customer;
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
        return "Customer{" + "id_customer=" + id_customer + ", userName=" + userName + ", phoneNumber=" + phoneNumber + ", email=" + email + ", password=" + password + ", status=" + status + ", image_url=" + image_url + ", role=" + role + '}';
    }

    @Override
    public String toSQLInsert() {
        return String.format("INSERT INTO `customer` (name_customer, email_customer, password_customer, phone_number_customer, id_role, status_customer)"
                + " VALUES ('%s','%s','%s','%s',3,%d); ", userName, email, password, phoneNumber, status);
    }

}
