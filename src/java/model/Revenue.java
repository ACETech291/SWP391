package model;

import java.util.Date;

/**
 *
 * @author dinhphu
 */
public class Revenue {

    private Date date;
    private int quantity;
    private float revenue;

    public Revenue(Date date, int quantity, float revenue) {
        this.date = date;
        this.quantity = quantity;
        this.revenue = revenue;
    }

    public Revenue() {
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getRevenue() {
        return revenue;
    }

    public void setRevenue(float revenue) {
        this.revenue = revenue;
    }
}
