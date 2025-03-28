/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HieuPham
 */
public class DateTrip {

    private int id_date_trip;
    private int id_trip;
    private int id_date_of_trip;

    public DateTrip(int id_date_trip, int id_trip, int id_date_of_trip) {
        this.id_date_trip = id_date_trip;
        this.id_trip = id_trip;
        this.id_date_of_trip = id_date_of_trip;
    }

    public int getId_date_trip() {
        return id_date_trip;
    }

    public int getId_trip() {
        return id_trip;
    }

    public int getId_date_of_trip() {
        return id_date_of_trip;
    }

    public void setId_date_trip(int id_date_trip) {
        this.id_date_trip = id_date_trip;
    }

    public void setId_trip(int id_trip) {
        this.id_trip = id_trip;
    }

    public void setId_date_of_trip(int id_date_of_trip) {
        this.id_date_of_trip = id_date_of_trip;
    }

}
