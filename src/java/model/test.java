/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhHieuPham
 */
import until.Encoding;
public class test {
    public static void main(String[] args) {
        String pass = "password456";
        String password = Encoding.toSHA1(pass);
        System.out.println(password);
    }
}
