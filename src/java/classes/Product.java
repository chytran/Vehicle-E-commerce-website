package classes;

import java.io.Serializable;
import java.text.NumberFormat;

public class Product implements Serializable {
    private String code;
    private String description;
//    private int quantity;
    private double price;
    private String fullPrice;

    public Product() {
        description = "";
        code = "";
        price = 0;
        fullPrice = "";
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
    
    public void setFullprice(String fullPrice) {
        this.fullPrice = fullPrice;
    }

    public String getFullprice() {
        return fullPrice;
    }

//    public void setQuantity(int quantity) {
//        this.quantity = quantity;
//    }
//
//    public int getQuantity() {
//        return quantity;
//    }
    
    public void setCode(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(price);
    }
}