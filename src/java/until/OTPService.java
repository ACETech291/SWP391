/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package until;

import model.*;
import controller.*;
import java.time.LocalDateTime;
import java.util.Random;
import java.util.UUID;

/**
 *
 * @author Nguyen Ba Hien
 */
public class OTPService {
    private final int LIMIT_MINUS = 1;
    
    public String generateOtp() {
        Random random = new Random();
        int number = 10000 + random.nextInt(90000);
        String randomNumber = String.valueOf(number);
        return randomNumber;
    }
    
    public LocalDateTime expireDateTime() {
        return LocalDateTime.now().plusMinutes(LIMIT_MINUS);
    }
    
    public boolean isExpireTime(LocalDateTime time) {
        return LocalDateTime.now().isAfter(time);
    }
    
    
}
