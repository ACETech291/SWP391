/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Ba Hien
 */
import java.time.LocalDateTime;
import java.util.Date;

public class Feedback {
    private int id_feedback;
    private int voting_feedback;
    private String content;
    private String name_customer;
    private Date created_at;

    // Constructor mặc định
    public Feedback() {
    }

    // Constructor có tham số

    public Feedback(int id_feedback, int voting_feedback, String content, String name_customer, Date created_at) {
        this.id_feedback = id_feedback;
        this.voting_feedback = voting_feedback;
        this.content = content;
        this.name_customer = name_customer;
        this.created_at = created_at;
    }

    public int getId_feedback() {
        return id_feedback;
    }

    public void setId_feedback(int id_feedback) {
        this.id_feedback = id_feedback;
    }

    public int getVoting_feedback() {
        return voting_feedback;
    }

    public void setVoting_feedback(int voting_feedback) {
        this.voting_feedback = voting_feedback;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getName_customer() {
        return name_customer;
    }

    public void setName_customer(String name_customer) {
        this.name_customer = name_customer;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    @Override
    public String toString() {
        return "Feedback{" + "id_feedback=" + id_feedback + ", voting_feedback=" + voting_feedback + ", content=" + content + ", id_customer=" + name_customer + ", created_at=" + created_at + '}';
    }
    
}

