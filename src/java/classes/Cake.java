/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.io.InputStream;
import java.sql.*;

/**
 *
 * @author NSBM
 */
public class Cake {
    
    
    private String name;
    private double uprice;
    private int qty;
    private String cate;
    private String dis;
    
    private Connection con;
    private Statement st;
    private PreparedStatement pst;
    private ResultSet rs;
    private String sql;
    private int ans;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUprice() {
        return uprice;
    }

    public void setUprice(double uprice) {
        this.uprice = uprice;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public String getCate() {
        return cate;
    }

    public void setCate(String cate) {
        this.cate = cate;
    }

    public String getDis() {
        return dis;
    }

    public void setDis(String dis) {
        this.dis = dis;
    }
    
    public int addCake(String na,double p,int q,String ca,String dis,InputStream is){
        try{
            ConnectionUtils c = new ConnectionUtils();
            con = c.getMyConnection();
            sql = "INSERT INTO cake(name,price,qty,category,discription,img) VALUES (?,?,?,?,?,?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, na);
            pst.setDouble(2, p);
            pst.setInt(3, q);
            pst.setString(4, ca);
            pst.setString(5, dis);
            pst.setBlob(6, is);
            ans = pst.executeUpdate();
            System.out.println("Cake inserted succes (clz)");
        }
        catch(Exception e){
            System.out.println("Cake insert class error");
        }
        return ans;
    }
}
