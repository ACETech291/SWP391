/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author HieuPham
 */
public class InformationBooking {

    private int id_ticket;
    private String start_position;
    private String end_position;
    private String time_start;
    private Double price;
    private String status;
    private String date_start;

    public InformationBooking() {
    }

    public InformationBooking(int id_ticket, String start_position, String end_position, String time_start, Double price, String status, String date_start) {
        this.id_ticket = id_ticket;
        this.start_position = start_position;
        this.end_position = end_position;
        this.time_start = time_start;
        this.price = price;
        this.status = status;
        this.date_start = date_start;
    }

    public String getDate_start() {
        return date_start;
    }

    public void setDate_start(String date_start) {
        this.date_start = date_start;
    }

    public int getId_ticket() {
        return id_ticket;
    }

    public String getStart_position() {
        return start_position;
    }

    public String getEnd_position() {
        return end_position;
    }

    public String getTime_start() {
        return time_start;
    }

    public Double getPrice() {
        return price;
    }

    public String getStatus() {
        return status;
    }

    public void setId_ticket(int id_ticket) {
        this.id_ticket = id_ticket;
    }

    public void setStart_position(String start_position) {
        this.start_position = start_position;
    }

    public void setEnd_position(String end_position) {
        this.end_position = end_position;
    }

    public void setTime_start(String time_start) {
        this.time_start = time_start;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "InformationBooking{"
                + "id_ticket=" + id_ticket
                + ", start_position='" + start_position + '\''
                + ", end_position='" + end_position + '\''
                + ", time_start='" + time_start + '\''
                + ", price=" + price
                + ", status='" + status + '\''
                + ", date_start='" + date_start + '\''
                + '}';
    }

}
