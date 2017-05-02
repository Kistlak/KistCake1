/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author NSBM
 */
public class ConnectionUtils {
    private Connection con = null;
    private String dri="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/test";
    private String user="root";
    private String pass="";
    
    public Connection getMyConnection(){
        try{
            Class.forName(dri);
            con = DriverManager.getConnection(url,user,pass);
            System.out.println("DB Connected...!");
        }
        catch(Exception e){
            System.out.println("DB Not Connected.."+e);
        }
        return con;
    }
}
