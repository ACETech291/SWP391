/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Station implements SQLUpdate {

    private int id_station;
    private String name_station;
    private String image_station;
    private String description_station;
    private String content;
    private int is_delete;

    public Station(String name_station, String description_station) {
        this.name_station = name_station;
        this.description_station = description_station;
    }

    public Station(int id_station, String name_station, String image_station, String description_station) {
        this.id_station = id_station;
        this.name_station = name_station;
        this.image_station = image_station;
        this.description_station = description_station;
    }

    public Station(int id_station, String name_station, String description_station) {
        this.id_station = id_station;
        this.name_station = name_station;
        this.description_station = description_station;
    }

    public Station(String name_station, String image_station, String description_station) {
        this.name_station = name_station;
        this.image_station = image_station;
        this.description_station = description_station;
    }

    public Station(int id_station, String name_station, String image_station, String description_station, String content) {
        this.id_station = id_station;
        this.name_station = name_station;
        this.image_station = image_station;
        this.description_station = description_station;
        this.content = content;
    }

    public Station(int id_station, String name_station, String image_station, String description_station, String content, int is_delete) {
        this.id_station = id_station;
        this.name_station = name_station;
        this.image_station = image_station;
        this.description_station = description_station;
        this.content = content;
        this.is_delete = is_delete;
    }

    public int getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(int is_delete) {
        this.is_delete = is_delete;
    }
    
    

    public Station() {
    }

    public int getId_station() {
        return id_station;
    }

    public void setId_station(int id_station) {
        this.id_station = id_station;
    }

    public String getName_station() {
        return name_station;
    }

    public void setName_station(String name_station) {
        this.name_station = name_station;
    }

    public String getImage_station() {
        return image_station;
    }

    public void setImage_station(String image_station) {
        this.image_station = image_station;
    }

    public String getDescription_station() {
        return description_station;
    }

    public void setDescription_station(String description_station) {
        this.description_station = description_station;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Station{" + "id_station=" + id_station + ", name_station=" + name_station + ", image_station=" + image_station + ", description_station=" + description_station + '}';
    }

    @Override
    public String toSQLUpdate() {
        return String.format("UPDATE `station` SET "
                + "`image_station` = '%s'"
                + "WHERE `id_station` = %d;",
                image_station, id_station);
    }

}
