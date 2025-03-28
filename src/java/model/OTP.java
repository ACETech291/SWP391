/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Nguyen Ba Hien
 */
public class OTP {

    private int id;
    private String email;
    private boolean isUsed;
    private String code;
    private LocalDateTime expiryTime;

    public OTP() {
    }

    public OTP(String email, boolean isUsed, String code, LocalDateTime expiryTime) {
        this.email = email;
        this.isUsed = isUsed;
        this.code = code;
        this.expiryTime = expiryTime;
    }

    public OTP(int id, String email, boolean isUsed, String code, LocalDateTime expiryTime) {
        this.id = id;
        this.email = email;
        this.isUsed = isUsed;
        this.code = code;
        this.expiryTime = expiryTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isIsUsed() {
        return isUsed;
    }

    public void setIsUsed(boolean isUsed) {
        this.isUsed = isUsed;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public LocalDateTime getExpiryTime() {
        return expiryTime;
    }

    public void setExpiryTime(LocalDateTime expiryTime) {
        this.expiryTime = expiryTime;
    }

    @Override
    public String toString() {
        return "OTP{" + "id=" + id + ", email=" + email + ", isUsed=" + isUsed + ", code=" + code + ", expiryTime=" + expiryTime + '}';
    }

}
