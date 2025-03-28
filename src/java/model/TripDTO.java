/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.time.LocalTime;

/**
 *
 * @author Nguyen Ba Hien
 */
public class TripDTO {

    private int id_trip;
    private String start_station;
    private String end_station;
    private String name_train;
    private LocalTime start_time;
    private LocalTime end_time;
    private Double price_trip;

    public TripDTO() {
    }

    public TripDTO(int id_trip, String start_station, String end_station, String name_train, LocalTime start_time, LocalTime end_time, Double price_trip) {
        this.id_trip = id_trip;
        this.start_station = start_station;
        this.end_station = end_station;
        this.name_train = name_train;
        this.start_time = start_time;
        this.end_time = end_time;
        this.price_trip = price_trip;
    }

    public TripDTO(int id_trip, String start_station, String end_station, String name_train) {
        this.id_trip = id_trip;
        this.start_station = start_station;
        this.end_station = end_station;
        this.name_train = name_train;
    }

    public TripDTO(String start_station, String end_station, String name_train) {
        this.start_station = start_station;
        this.end_station = end_station;
        this.name_train = name_train;
    }

    public LocalTime getStart_time() {
        return start_time;
    }

    public void setStart_time(LocalTime start_time) {
        this.start_time = start_time;
    }

    public LocalTime getEnd_time() {
        return end_time;
    }

    public void setEnd_time(LocalTime end_time) {
        this.end_time = end_time;
    }

    public Double getPrice_trip() {
        return price_trip;
    }

    public void setPrice_trip(Double price_trip) {
        this.price_trip = price_trip;
    }

    public int getId_trip() {
        return id_trip;
    }

    public void setId_trip(int id_trip) {
        this.id_trip = id_trip;
    }

    public String getStart_station() {
        return start_station;
    }

    public void setStart_station(String start_station) {
        this.start_station = start_station;
    }

    public String getEnd_station() {
        return end_station;
    }

    public void setEnd_station(String end_station) {
        this.end_station = end_station;
    }

    public String getName_train() {
        return name_train;
    }

    public void setName_train(String name_train) {
        this.name_train = name_train;
    }

    @Override
    public String toString() {
        return "TripDTO{" + "id_trip=" + id_trip + ", start_station=" + start_station + ", end_station=" + end_station + ", name_train=" + name_train + ", start_time=" + start_time + ", end_time=" + end_time + ", price_trip=" + price_trip + '}';
    }
}
