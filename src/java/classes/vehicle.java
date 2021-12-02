/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author kevin
 */
public class vehicle {
    int idvehicle;
    String category;
    String name;
    String price;
    String image;
     int qty;

     public vehicle(int idvehicle,String category,String name,String price,String image,int qty){
         this.idvehicle=idvehicle;
         this.category=category;
         this.name=name;
         this.price=price;
         this.image=image;
         this.qty=qty;
     }

    public vehicle() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int getIdvehicle(){
        return idvehicle;
    }
    public void setIdvehicle(int idvehicle){
        this.idvehicle=idvehicle;
    }
    public String getCategory(){
        return category;
    }
    public void setCategory(String category){
        this.category=category;
    }
    
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getPrice(){
        return price;
    }
    public void setPrice(String price){
        this.price=price;
    }
    public String getImage(){
        return image;
    }
    public void setPhoto(String image){
        this.image=image;
    }
    public int getQty(){
        return qty;
    }
    public void setQty(int qty){
        this.qty=qty;
    }
}
