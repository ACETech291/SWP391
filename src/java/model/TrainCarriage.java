/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dinhphu
 */
public class TrainCarriage implements SQLInsert{

    private int id_train_carriage;
    private String name_train_carriage;
    private String description_train_carriage;
    private int id_train;
    private int id_status;
    private int total_seat;

    public TrainCarriage(int id_train_carriage, String name_train_carriage, String description_train_carriage, int id_train, int id_status, int total_seat) {
        this.id_train_carriage = id_train_carriage;
        this.name_train_carriage = name_train_carriage;
        this.description_train_carriage = description_train_carriage;
        this.id_train = id_train;
        this.id_status = id_status;
        this.total_seat = total_seat;
    }

    public TrainCarriage(String name_train_carriage, String description_train_carriage, int id_train, int id_status, int total_seat) {
        this.name_train_carriage = name_train_carriage;
        this.description_train_carriage = description_train_carriage;
        this.id_train = id_train;
        this.id_status = id_status;
        this.total_seat = total_seat;
    }

    
    public TrainCarriage() {
    }

    public int getId_train_carriage() {
        return id_train_carriage;
    }

    public void setId_train_carriage(int id_train_carriage) {
        this.id_train_carriage = id_train_carriage;
    }

    public String getName_train_carriage() {
        return name_train_carriage;
    }

    public void setName_train_carriage(String name_train_carriage) {
        this.name_train_carriage = name_train_carriage;
    }

    public String getDescription_train_carriage() {
        return description_train_carriage;
    }

    public void setDescription_train_carriage(String description_train_carriage) {
        this.description_train_carriage = description_train_carriage;
    }

    public int getId_train() {
        return id_train;
    }

    public void setId_train(int id_train) {
        this.id_train = id_train;
    }

    public int getId_status() {
        return id_status;
    }

    public void setId_status(int id_status) {
        this.id_status = id_status;
    }

    public int getTotal_seat() {
        return total_seat;
    }

    public void setTotal_seat(int total_seat) {
        this.total_seat = total_seat;
    }

    @Override
    public String toSQLInsert() {
        return String.format(
                "INSERT INTO `Train_carriage` (name_train_carriage, description_train_carriage, id_train, id_status, total_seat) "
                + "VALUES ('%s', %s, '%d', %d, %d);",
                name_train_carriage,
                description_train_carriage,
                id_train,
                id_status,
                total_seat
        );
    }

}
