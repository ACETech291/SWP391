/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dinhphu
 */
public class Manager {

    private int id_manager;
    private String username_manager;
    private String password_manager;
    private String email_manager;
    private Role role;
    private String image_manager;
    private int status;

    public Manager() {
    }

    public Manager(int id_manager, String username_manager, String password_manager, String email_manager, Role role, int status) {
        this.id_manager = id_manager;
        this.username_manager = username_manager;
        this.password_manager = password_manager;
        this.email_manager = email_manager;
        this.role = role;
        this.status = status;
    }

    public Manager(int id_manager, String username_manager, String password_manager, String email_manager, Role role, String image_manager, int status) {
        this.id_manager = id_manager;
        this.username_manager = username_manager;
        this.password_manager = password_manager;
        this.email_manager = email_manager;
        this.role = role;
        this.image_manager = image_manager;
        this.status = status;
    }

    public int getId_manager() {
        return id_manager;
    }

    public void setId_manager(int id_manager) {
        this.id_manager = id_manager;
    }

    public String getUsername_manager() {
        return username_manager;
    }

    public void setUsername_manager(String username_manager) {
        this.username_manager = username_manager;
    }

    public String getPassword_manager() {
        return password_manager;
    }

    public void setPassword_manager(String password_manager) {
        this.password_manager = password_manager;
    }

    public String getEmail_manager() {
        return email_manager;
    }

    public void setEmail_manager(String email_manager) {
        this.email_manager = email_manager;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getImage_manager() {
        return image_manager;
    }

    public void setImage_manager(String image_manager) {
        this.image_manager = image_manager;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Manager{" + "id_manager=" + id_manager + ", username_manager=" + username_manager + ", password_manager=" + password_manager + ", email_manager=" + email_manager + ", role=" + role + ", image_manager=" + image_manager + ", status=" + status + '}';
    }

}
