package model;

public class Admin {

    private int id_admin;
    private String username_admin;
    private String password_admin;
    private String email_admin;
    private String image_admin;
    private Role role;

    public Admin() {
    }

    public Admin(int id_admin, String username_admin, String password_admin, String email_admin, String image_admin, Role role) {
        this.id_admin = id_admin;
        this.username_admin = username_admin;
        this.password_admin = password_admin;
        this.email_admin = email_admin;
        this.image_admin = image_admin;
        this.role = role;
    }

    public int getId_admin() {
        return id_admin;
    }

    public void setId_admin(int id_admin) {
        this.id_admin = id_admin;
    }

    public String getUsername_admin() {
        return username_admin;
    }

    public void setUsername_admin(String username_admin) {
        this.username_admin = username_admin;
    }

    public String getPassword_admin() {
        return password_admin;
    }

    public void setPassword_admin(String password_admin) {
        this.password_admin = password_admin;
    }

    public String getEmail_admin() {
        return email_admin;
    }

    public void setEmail_admin(String email_admin) {
        this.email_admin = email_admin;
    }

    public String getImage_admin() {
        return image_admin;
    }

    public void setImage_admin(String image_admin) {
        this.image_admin = image_admin;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Admin{" + "id_admin=" + id_admin + ", username_admin=" + username_admin + ", password_admin=" + password_admin + ", email_admin=" + email_admin + ", image_admin=" + image_admin + ", role=" + role + '}';
    }

}
