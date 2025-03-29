package model;

import java.text.SimpleDateFormat;

public class Trip implements SQLInsert {

    private int id_trip;
    private int id_station_start;
    private int id_station_end;
    private String time_start_ticket;
    private String time_end_ticket;
    private int id_train;
    private int ordered_seat;
    private String name_train;
    private String name_station_start;
    private String name_station_end;
    private String image_train;
    private float price_trip;
    private String date_trip;
    private int trip_status;

    public int getTrip_status() {
        return trip_status;
    }

    public void setTrip_status(int trip_status) {
        this.trip_status = trip_status;
    }

    public float getPrice_trip() {
        return price_trip;
    }

    public String getDate_trip() {
        return date_trip;
    }

    public void setDate_trip(String date_trip) {
        this.date_trip = date_trip;
    }

    public void setPrice_trip(float price_trip) {
        this.price_trip = price_trip;
    }

    // Format ngày thành String khi trả về JSON
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public Trip(String name_train, String time_start_ticket, String time_end_ticket, String name_station_start, String name_station_end, String image_train) {
        this.name_train = name_train;
        this.time_start_ticket = time_start_ticket;
        this.time_end_ticket = time_end_ticket;
        this.name_station_start = name_station_start;
        this.name_station_end = name_station_end;
        this.image_train = image_train;
    }

    public Trip(int id_trip, int id_station_start, int id_station_end, String time_start_ticket, String time_end_ticket, int id_train, int ordered_seat) {
        this.id_trip = id_trip;
        this.id_station_start = id_station_start;
        this.id_station_end = id_station_end;
        this.time_start_ticket = time_start_ticket;
        this.time_end_ticket = time_end_ticket;
        this.id_train = id_train;
        this.ordered_seat = ordered_seat;
    }

    public Trip() {
    }

    public Trip(int id_trip, int id_station_start, int id_station_end, String time_start_ticket, String time_end_ticket, int id_train, int ordered_seat, String name_train, String name_station_start, String name_station_end, String image_train) {
        this.id_trip = id_trip;
        this.id_station_start = id_station_start;
        this.id_station_end = id_station_end;
        this.time_start_ticket = time_start_ticket;
        this.time_end_ticket = time_end_ticket;
        this.id_train = id_train;
        this.ordered_seat = ordered_seat;
        this.name_train = name_train;
        this.name_station_start = name_station_start;
        this.name_station_end = name_station_end;
        this.image_train = image_train;
    }

    public Trip(int id_trip, int id_station_start, int id_station_end, String time_start_ticket, String time_end_ticket, int id_train, int ordered_seat, String name_train, String name_station_start, String name_station_end) {
        this.id_trip = id_trip;
        this.id_station_start = id_station_start;
        this.id_station_end = id_station_end;
        this.time_start_ticket = time_start_ticket;
        this.time_end_ticket = time_end_ticket;
        this.id_train = id_train;
        this.ordered_seat = ordered_seat;
        this.name_train = name_train;
        this.name_station_start = name_station_start;
        this.name_station_end = name_station_end;
    }

    // Getter & Setter
    public int getId_trip() {
        return id_trip;
    }

    public int getId_station_start() {
        return id_station_start;
    }

    public int getId_station_end() {
        return id_station_end;
    }

    public String getTime_start_ticket() {
        return time_start_ticket;
    }

    public String getTime_end_ticket() {
        return time_end_ticket;
    }

    public int getId_train() {
        return id_train;
    }

    public int getOrdered_seat() {
        return ordered_seat;
    }

    public String getName_train() {
        return name_train;
    }

    public String getName_station_start() {
        return name_station_start;
    }

    public String getName_station_end() {
        return name_station_end;
    }

    public String getImage_train() {
        return image_train;
    }

    public void setId_trip(int id_trip) {
        this.id_trip = id_trip;
    }

    public void setId_station_start(int id_station_start) {
        this.id_station_start = id_station_start;
    }

    public void setId_station_end(int id_station_end) {
        this.id_station_end = id_station_end;
    }

    public void setTime_start_ticket(String time_start_ticket) {
        this.time_start_ticket = time_start_ticket;
    }

    public void setTime_end_ticket(String time_end_ticket) {
        this.time_end_ticket = time_end_ticket;
    }

    public void setId_train(int id_train) {
        this.id_train = id_train;
    }

    public void setOrdered_seat(int ordered_seat) {
        this.ordered_seat = ordered_seat;
    }

    public void setName_train(String name_train) {
        this.name_train = name_train;
    }

    public void setName_station_start(String name_station_start) {
        this.name_station_start = name_station_start;
    }

    public void setName_station_end(String name_station_end) {
        this.name_station_end = name_station_end;
    }

    public void setImage_train(String image_train) {
        this.image_train = image_train;
    }  // Fix lỗi setter

    @Override
    public String toSQLInsert() {
        return null;
    }
}
