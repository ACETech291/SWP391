package model;

import java.sql.Timestamp;

/**
 *
 * @author Nguyen Ba Hien
 */
public class Advertising {
    private int id_advertising;
    private String image_advertising;
    private String description_advertising;
    private String content;
    private String managerName;
    private Timestamp create_at;
    private int is_delete;

    public Advertising() {
    }

    public Advertising(int id_advertising, String image_advertising, String description_advertising, String content, String managerName, Timestamp create_at) {
        this.id_advertising = id_advertising;
        this.image_advertising = image_advertising;
        this.description_advertising = description_advertising;
        this.content = content;
        this.managerName = managerName;
        this.create_at = create_at;
    }

    public Advertising(int id_advertising, String image_advertising, String description_advertising, String content, String managerName, Timestamp create_at, int is_delete) {
        this.id_advertising = id_advertising;
        this.image_advertising = image_advertising;
        this.description_advertising = description_advertising;
        this.content = content;
        this.managerName = managerName;
        this.create_at = create_at;
        this.is_delete = is_delete;
    }

    public int getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(int is_delete) {
        this.is_delete = is_delete;
    }
    
    
    
    public int getId_advertising() {
        return id_advertising;
    }

    public void setId_advertising(int id_advertising) {
        this.id_advertising = id_advertising;
    }

    public String getImage_advertising() {
        return image_advertising;
    }

    public void setImage_advertising(String image_advertising) {
        this.image_advertising = image_advertising;
    }

    public String getDescription_advertising() {
        return description_advertising;
    }

    public void setDescription_advertising(String description_advertising) {
        this.description_advertising = description_advertising;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public Timestamp getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Timestamp create_at) {
        this.create_at = create_at;
    }

    @Override
    public String toString() {
        return "Advertising{" + 
                "id_advertising=" + id_advertising + 
                ", image_advertising='" + image_advertising + '\'' +
                ", description_advertising='" + description_advertising + '\'' +
                ", content='" + content + '\'' +
                ", managerName='" + managerName + '\'' +
                ", create_at=" + create_at + 
                '}';
    }
}