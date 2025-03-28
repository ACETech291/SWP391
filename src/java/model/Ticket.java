/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author HieuPham
 */
public class Ticket {

    private int id_ticket;
    private String name_ticket;
    private LocalDateTime booking_time_ticket;
    private int id_customer;
    private int id_train_seat;
    private int id_date_trip;
    private double total_bill;
    private String status;

    public Ticket() {
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public Ticket(int id_ticket, String name_ticket, LocalDateTime booking_time_ticket, int id_customer, int id_train_seat, int id_date_trip, double total_bill, String status) {
        this.id_ticket = id_ticket;
        this.name_ticket = name_ticket;
        this.booking_time_ticket = booking_time_ticket;
        this.id_customer = id_customer;
        this.id_train_seat = id_train_seat;
        this.id_date_trip = id_date_trip;
        this.total_bill = total_bill;
        this.status = status;
    }

    public Ticket(int id_ticket, String name_ticket, LocalDateTime booking_time_ticket, int id_customer, int id_train_seat, int id_date_trip, double total_bill) {
        this.id_ticket = id_ticket;
        this.name_ticket = name_ticket;
        this.booking_time_ticket = booking_time_ticket;
        this.id_customer = id_customer;
        this.id_train_seat = id_train_seat;
        this.id_date_trip = id_date_trip;
        this.total_bill = total_bill;
    }

    public Ticket(String name_ticket, LocalDateTime booking_time_ticket, int id_customer, int id_train_seat, int id_date_trip, double total_bill) {

        this.name_ticket = name_ticket;
        this.booking_time_ticket = booking_time_ticket;
        this.id_customer = id_customer;
        this.id_train_seat = id_train_seat;
        this.id_date_trip = id_date_trip;
        this.total_bill = total_bill;
    }

    public double getTotal_bill() {
        return total_bill;
    }

    public void setTotal_bill(double total_bill) {
        this.total_bill = total_bill;
    }

    public int getId_ticket() {
        return id_ticket;
    }

    public String getName_ticket() {
        return name_ticket;
    }

    public LocalDateTime getBooking_time_ticket() {
        return booking_time_ticket;
    }

    public int getId_customer() {
        return id_customer;
    }

    public int getId_train_seat() {
        return id_train_seat;
    }

    public int getId_date_trip() {
        return id_date_trip;
    }

    public void setId_ticket(int id_ticket) {
        this.id_ticket = id_ticket;
    }

    public void setName_ticket(String name_ticket) {
        this.name_ticket = name_ticket;
    }

    public void setBooking_time_ticket(LocalDateTime booking_time_ticket) {
        this.booking_time_ticket = booking_time_ticket;
    }

    public void setId_customer(int id_customer) {
        this.id_customer = id_customer;
    }

    public void setId_train_seat(int id_train_seat) {
        this.id_train_seat = id_train_seat;
    }

    public void setId_date_trip(int id_date_trip) {
        this.id_date_trip = id_date_trip;
    }

    @Override
    public String toString() {
        return "Ticket{"
                + "id_ticket=" + id_ticket
                + ", name_ticket='" + name_ticket + '\''
                + ", booking_time_ticket=" + booking_time_ticket
                + ", id_customer=" + id_customer
                + ", id_train_seat=" + id_train_seat
                + ", id_date_trip=" + id_date_trip
                + ", total_bill=" + total_bill
                + ", status='" + status + '\''
                + '}';
    }

}
