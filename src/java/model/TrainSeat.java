package model;

/**
 *
 * @author dinhphu
 */
public class TrainSeat {
    private int id_train_seat;
    private String code_train_seat;
    private int price_seat;
    private int id_train_carriage;
    private int id_status;

    public TrainSeat(int id_train_seat, String code_train_seat, int price_seat, int id_train_carriage, int id_status) {
        this.id_train_seat = id_train_seat;
        this.code_train_seat = code_train_seat;
        this.price_seat = price_seat;
        this.id_train_carriage = id_train_carriage;
        this.id_status = id_status;
    }

    public TrainSeat(String code_train_seat, int price_seat, int id_train_carriage, int id_status) {
        this.code_train_seat = code_train_seat;
        this.price_seat = price_seat;
        this.id_train_carriage = id_train_carriage;
        this.id_status = id_status;
    }

    public TrainSeat() {
    }

    public int getId_train_seat() {
        return id_train_seat;
    }

    public void setId_train_seat(int id_train_seat) {
        this.id_train_seat = id_train_seat;
    }

    public String getCode_train_seat() {
        return code_train_seat;
    }

    public void setCode_train_seat(String code_train_seat) {
        this.code_train_seat = code_train_seat;
    }

    public int getPrice_seat() {
        return price_seat;
    }

    public void setPrice_seat(int price_seat) {
        this.price_seat = price_seat;
    }


    public int getId_train_carriage() {
        return id_train_carriage;
    }

    public void setId_train_carriage(int id_train_carriage) {
        this.id_train_carriage = id_train_carriage;
    }

    public int getId_status() {
        return id_status;
    }

    public void setId_status(int id_status) {
        this.id_status = id_status;
    }
    
}
