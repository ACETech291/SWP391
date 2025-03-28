/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author HieuPham
 */
public class DateOfTrip {
    private int id_date_of_trip;
    private Date date_details;

    public DateOfTrip(int id_date_of_trip, Date date_details) {
        this.id_date_of_trip = id_date_of_trip;
        this.date_details = date_details;
    }

    public int getId_date_of_trip() {
        return id_date_of_trip;
    }

    public Date getDate_details() {
        return date_details;
    }

    public void setId_date_of_trip(int id_date_of_trip) {
        this.id_date_of_trip = id_date_of_trip;
    }

    public void setDate_details(Date date_details) {
        this.date_details = date_details;
    }
    
}
