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
public class Policy {

    private int id_policy;
    private String content;
    private Timestamp create_at;
    private int status_policy;

    public Policy() {
    }

    public Policy(int id_policy, String content, Timestamp create_at, int status_policy) {
        this.id_policy = id_policy;
        this.content = content;
        this.create_at = create_at;
        this.status_policy = status_policy;
    }

    public int getId_policy() {
        return id_policy;
    }

    public void setId_policy(int id_policy) {
        this.id_policy = id_policy;
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

    public int getStatus_policy() {
        return status_policy;
    }

    public void setStatus_policy(int status_policy) {
        this.status_policy = status_policy;
    }

}
