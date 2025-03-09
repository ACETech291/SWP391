/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Authorization {
    private int id_authorization;
    private int role_id;
    private String url_authorization;
    private String feature_authorization;
    private int status_authorization;

    public Authorization() {
    }

    public Authorization(int id_authorization, int role_id, String url_authorization, String feature_authorization, int status_authorization) {
        this.id_authorization = id_authorization;
        this.role_id = role_id;
        this.url_authorization = url_authorization;
        this.feature_authorization = feature_authorization;
        this.status_authorization = status_authorization;
    }
    
    
    public int getId_authorization() {
        return id_authorization;
    }

    public void setId_authorization(int id_authorization) {
        this.id_authorization = id_authorization;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getUrl_authorization() {
        return url_authorization;
    }

    public void setUrl_authorization(String url_authorization) {
        this.url_authorization = url_authorization;
    }

    public String getFeature_authorization() {
        return feature_authorization;
    }

    public void setFeature_authorization(String feature_authorization) {
        this.feature_authorization = feature_authorization;
    }

    public int getStatus_authorization() {
        return status_authorization;
    }

    public void setStatus_authorization(int status_authorization) {
        this.status_authorization = status_authorization;
    }

    

    
    
    
}
