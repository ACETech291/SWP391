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
public class Comment {
    private int id_comment;
    private int voting_comment;
    private String content;
    private String name_customer;
    private Timestamp create_at;
    private int id_train_brand;

    public Comment() {
    }

    public Comment(int voting_comment, String content, String name_customer, Timestamp create_at, int id_train_brand) {
        this.voting_comment = voting_comment;
        this.content = content;
        this.name_customer = name_customer;
        this.create_at = create_at;
        this.id_train_brand = id_train_brand;
    }
    
    
    public Comment(int id_comment, int voting_comment, String content, String name_customer, Timestamp create_at, int id_train_brand) {
        this.id_comment = id_comment;
        this.voting_comment = voting_comment;
        this.content = content;
        this.name_customer = name_customer;
        this.create_at = create_at;
        this.id_train_brand = id_train_brand;
    }

    public int getId_comment() {
        return id_comment;
    }

    public void setId_comment(int id_comment) {
        this.id_comment = id_comment;
    }

    public int getVoting_comment() {
        return voting_comment;
    }

    public void setVoting_comment(int voting_comment) {
        this.voting_comment = voting_comment;
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

    public int getId_train_brand() {
        return id_train_brand;
    }

    public void setId_train_brand(int id_train_brand) {
        this.id_train_brand = id_train_brand;
    }

    @Override
    public String toString() {
        return "Comment{" + "id_comment=" + id_comment + ", voting_comment=" + voting_comment + ", content=" + content + ", name_customer=" + name_customer + ", create_at=" + create_at + ", id_train_brand=" + id_train_brand + '}';
    }
    
}
