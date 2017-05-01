/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import classes.ConnectionUtils;
import java.sql.*;
import java.util.List;

/**
 *
 * @author NSBM
 */
public class Customer {
    
    private String fname;
    private String lname;
    private String address;
    private String pno;
    private String email;
    private String password;
    private String vpasswrd;
    private List lg;
    private boolean an;
    
    Connection con;
    ResultSet rs;
    PreparedStatement pst;
    Statement st;
    int ans;

    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the pno
     */
    public String getPno() {
        return pno;
    }

    /**
     * @param pno the pno to set
     */
    public void setPno(String pno) {
        this.pno = pno;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the vpasswrd
     */
    public String getVpasswrd() {
        return vpasswrd;
    }

    /**
     * @param vpasswrd the vpasswrd to set
     */
    public void setVpasswrd(String vpasswrd) {
        this.vpasswrd = vpasswrd;
    }
    public int register(String fname,String lname,String address,String pno,String email,String password,String vpassword){
     try{
         ConnectionUtils c = new ConnectionUtils();
         con = c.getMyConnection();
         String sql = "INSERT INTO customer(fname,lname,address,pno,email,password,vpassword) VALUES (?,?,?,?,?,sha1(?),sha1(?))";
         pst = con.prepareStatement(sql);
         pst.setString(1, fname);
         pst.setString(2, lname);
         pst.setString(3, address);
         pst.setString(4, pno);
         pst.setString(5, email);
         pst.setString(6, password);
         pst.setString(7, vpassword);
         ans = pst.executeUpdate();
         System.out.println("Registered...!");
     }
     catch(Exception e){
         System.out.println("Customer Registration Error"+e);
     }
     return ans;
    }
    
    public boolean loginUser(String un,String pw){
        try{
            ConnectionUtils c = new ConnectionUtils();
            con = c.getMyConnection();
            String sql="SELECT email,password FROM customer WHERE email=? AND password=sha1(?)";
            pst = con.prepareStatement(sql);
            pst.setString(1, un);
            pst.setString(2, pw);
//            rs = pst.executeQuery();
//            List lg = (List)rs;
            an = pst.execute();
            System.out.println("User login success");
        }
        catch(Exception e){
            System.out.println("User login error"+e);
        }
        return an;
    }
}
