/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;

/**
 *
 * @author NSBM
 */
public class Admin {
    private Connection con;
    private ResultSet rs;
    private PreparedStatement pst;
    private Statement st;
    private String sql;
    private Boolean i;
    int r;
    
    public int adminLogin(String user,String pass){
        try{
            ConnectionUtils c = new ConnectionUtils();
            con = c.getMyConnection();            
            sql = "SELECT un,pw FROM admin WHERE un=? AND pw=sha1(?)";            
            pst = con.prepareStatement(sql);
            pst.setString(1, user);
            pst.setString(2, pass);
            rs = pst.executeQuery();
            if(rs.next()){
                r = 1;
                System.out.println("admin login approved");
            } 
            else{
                System.out.println("incorrect user credentials");
            }
            
        }
        catch(Exception e){
            System.out.println("admin login class error");
            System.out.println(e);
        }
        return r;
    }
}
