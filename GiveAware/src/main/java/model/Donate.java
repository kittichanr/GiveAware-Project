/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.ConnectionBuilder;

/**
 *
 * @author Suparerk
 */
public class Donate {
    
    
    public static <List>Donate getAllDonatePost(int start,int total) {
        Donate post = null;
        String SQL = "SELECT * FROM Donate_Post WHERE donate_post_id limit "+(start-1)+","+total;
        Connection con = null;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
            //    post = new Donate(rs); don't have Result rs
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return post;
    }
}
