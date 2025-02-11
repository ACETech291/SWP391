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
    private int id, userId;
    private boolean isUsed;
    private String code;
    private LocalDateTime expiryTime;

    public OTP() {
    }

    public OTP(int userId, boolean isUsed, String code, LocalDateTime expiryTime) {
        this.userId = userId;
        this.isUsed = isUsed;
        this.code = code;
        this.expiryTime = expiryTime;
    }
    
    
    
    public OTP(int id, int userId, boolean isUsed, String code, LocalDateTime expiryTime) {
        this.id = id;
        this.userId = userId;
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

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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
        return "OTP{" + "id=" + id + ", userId=" + userId + ", isUsed=" + isUsed + ", code=" + code + ", expiryTime=" + expiryTime + '}';
    }
    
    
    
    
}
