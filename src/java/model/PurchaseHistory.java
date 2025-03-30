package model;

/**
 *
 * @author HieuPham
 */
public class PurchaseHistory {

    private int id_purchase_history;
    private int id_ticket;
    private String name_banking;
    private int account_number;
    private int id_customer;
    private int id_payment_method;
    private String name_user;
    private int cusomter_require;
    private String name_customer;

    public String getName_customer() {
        return name_customer;
    }

    public void setName_customer(String name_customer) {
        this.name_customer = name_customer;
    }

    public int getCusomter_require() {
        return cusomter_require;
    }

    public void setCusomter_require(int cusomter_require) {
        this.cusomter_require = cusomter_require;
    }

    public PurchaseHistory(int id_ticket, String name_banking, int account_number, int id_customer, int id_payment_method, String name_user, int cusomter_require) {
        this.id_ticket = id_ticket;
        this.name_banking = name_banking;
        this.account_number = account_number;
        this.id_customer = id_customer;
        this.id_payment_method = id_payment_method;
        this.name_user = name_user;
        this.cusomter_require = cusomter_require;
        //this.name_customer = name_customer;
    }
    
    

    public PurchaseHistory(int id_ticket, String name_banking, int account_number, int id_customer, int id_payment_method, String name_user) {

        this.id_ticket = id_ticket;
        this.name_banking = name_banking;
        this.account_number = account_number;
        this.id_customer = id_customer;
        this.id_payment_method = id_payment_method;
        this.name_user = name_user;
    }

    public int getId_purchase_history() {
        return id_purchase_history;
    }

    public int getId_ticket() {
        return id_ticket;
    }

    public String getName_banking() {
        return name_banking;
    }

    public int getAccount_number() {
        return account_number;
    }

    public int getId_customer() {
        return id_customer;
    }

    public int getId_payment_method() {
        return id_payment_method;
    }

    public String getName_user() {
        return name_user;
    }

    public void setId_purchase_history(int id_purchase_history) {
        this.id_purchase_history = id_purchase_history;
    }

    public void setId_ticket(int id_ticket) {
        this.id_ticket = id_ticket;
    }

    public void setName_banking(String name_banking) {
        this.name_banking = name_banking;
    }

    public void setAccount_number(int account_number) {
        this.account_number = account_number;
    }

    public void setId_customer(int id_customer) {
        this.id_customer = id_customer;
    }

    public void setId_payment_method(int id_payment_method) {
        this.id_payment_method = id_payment_method;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    @Override
    public String toString() {
        return "PurchaseHistory{"
                + "id_purchase_history=" + id_purchase_history
                + ", id_ticket=" + id_ticket
                + ", name_banking='" + name_banking + '\''
                + ", account_number=" + account_number
                + ", id_customer=" + id_customer
                + ", id_payment_method=" + id_payment_method
                + ", name_user='" + name_user + '\''
                + '}';
    }
}
