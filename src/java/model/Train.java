/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MinhHieuPham
 */
public class Train implements SQLInsert {

    private int id_train;
    private String name_train;
    private String image_train;
    private String description_train;
    private int id_train_brand;
    private int id_status;

    public Train(int id_train, String name_train, String image_train, String description_train, int id_train_brand, int id_status) {
        this.id_train = id_train;
        this.name_train = name_train;
        this.image_train = image_train;
        this.description_train = description_train;
        this.id_train_brand = id_train_brand;
        this.id_status = id_status;
    }

    public Train(String name_train, String description_train, int id_train_brand, int id_status) {
        this.name_train = name_train;
        this.description_train = description_train;
        this.id_train_brand = id_train_brand;
        this.id_status = id_status;
    }

    public int getId_train() {
        return id_train;
    }

    public String getName_train() {
        return name_train;
    }

    public String getImage_train() {
        return image_train;
    }

    public String getDescription_train() {
        return description_train;
    }

    public int getId_train_brand() {
        return id_train_brand;
    }

    public int getId_status() {
        return id_status;
    }

    public void setId_train(int id_train) {
        this.id_train = id_train;
    }

    public void setName_train(String name_train) {
        this.name_train = name_train;
    }

    public void setImage_train(String image_train) {
        this.image_train = image_train;
    }

    public void setDescription_train(String description_train) {
        this.description_train = description_train;
    }

    public void setId_train_brand(int id_train_brand) {
        this.id_train_brand = id_train_brand;
    }

    public void setId_status(int id_status) {
        this.id_status = id_status;
    }

    @Override
    public String toSQLInsert() {
        return String.format(
                "INSERT INTO `Train` (name_train, image_train, description_train, id_train_brand, id_status) "
                + "VALUES ('%s', %s, '%s', %d, %d);",
                name_train,
                (image_train != null) ? String.format("'%s'", image_train) : "NULL", // Xử lý ảnh (blob)
                description_train,
                id_train,
                id_status
        );
    }

    @Override
    public String toString() {
        return "Train{" + "id_train=" + id_train + ", name_train=" + name_train + ", image_train=" + image_train + ", description_train=" + description_train + ", id_train_brand=" + id_train_brand + ", id_status=" + id_status + '}';
    }

}
