/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Introduction {
    private int id_introduction;
    private String content;    
    private Timestamp create_at;
    private int status_introduction;

    public Introduction() {
    }

    public Introduction(int id_introduction, String content, Timestamp create_at, int status_introduction) {
        this.id_introduction = id_introduction;
        this.content = content;
        this.create_at = create_at;
        this.status_introduction = status_introduction;
    }

    public int getId_introduction() {
        return id_introduction;
    }

    public void setId_introduction(int id_introduction) {
        this.id_introduction = id_introduction;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Timestamp create_at) {
        this.create_at = create_at;
    }

    public int getStatus_introduction() {
        return status_introduction;
    }

    public void setStatus_introduction(int status_introduction) {
        this.status_introduction = status_introduction;
    }
    
    
}
