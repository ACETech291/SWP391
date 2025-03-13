/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Ba Hien
 */
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;

public class Feedback {
    private int id_feedback;
    private int voting_feedback;
    private String content;
    private String name_customer;
    private Timestamp create_at;
    private int id_advertising;

    // Constructor mặc định
    public Feedback() {
    }

    // Constructor có tham số

    public Feedback(int id_feedback, int voting_feedback, String content, String name_customer, Timestamp create_at) {
        this.id_feedback = id_feedback;
        this.voting_feedback = voting_feedback;
        this.content = content;
        this.name_customer = name_customer;
        this.create_at = create_at;
    }

    public Feedback(int id_feedback, int voting_feedback, String content, String name_customer, Timestamp create_at, int id_advertising) {
        this.id_feedback = id_feedback;
        this.voting_feedback = voting_feedback;
        this.content = content;
        this.name_customer = name_customer;
        this.create_at = create_at;
        this.id_advertising = id_advertising;
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

    public Timestamp getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Timestamp create_at) {
        this.create_at = create_at;
    }

    

    public int getId_advertising() {
        return id_advertising;
    }

    public void setId_advertising(int id_advertising) {
        this.id_advertising = id_advertising;
    }

    @Override
    public String toString() {
        return "Feedback{" + "id_feedback=" + id_feedback + ", voting_feedback=" + voting_feedback + ", content=" + content + ", name_customer=" + name_customer + ", create_at=" + create_at + ", id_advertising=" + id_advertising + '}';
    }
    
    

    
    
}

