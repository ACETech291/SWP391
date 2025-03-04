/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dinhphu
 */
public class TrainBrand {

    private int id_train_brand;
    private Manager manager;
    private String name_train_brand;
    private String description_train_brand;

    public TrainBrand(int id_train_brand, Manager manager, String name_train_brand, String description_train_brand) {
        this.id_train_brand = id_train_brand;
        this.manager = manager;
        this.name_train_brand = name_train_brand;
        this.description_train_brand = description_train_brand;
    }

    public TrainBrand() {
    }

    public int getId_train_brand() {
        return id_train_brand;
    }

    public void setId_train_brand(int id_train_brand) {
        this.id_train_brand = id_train_brand;
    }

    public Manager getManager() {
        return manager;
    }

    public void setManager(Manager manager) {
        this.manager = manager;
    }

    public String getName_train_brand() {
        return name_train_brand;
    }

    public void setName_train_brand(String name_train_brand) {
        this.name_train_brand = name_train_brand;
    }

    public String getDescription_train_brand() {
        return description_train_brand;
    }

    public void setDescription_train_brand(String description_train_brand) {
        this.description_train_brand = description_train_brand;
    }

}
