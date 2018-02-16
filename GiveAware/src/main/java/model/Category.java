/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionBuilder;

/**
 *
 * @author Preaw-NB
 */
public class Category {

    private int category_id;
    private String category_name;

    public Category() {

    }

    public Category(int category_id, String category_name) {
        this.category_id = category_id;
        this.category_name = category_name;
    }
    
    public Category(ResultSet rs) throws SQLException {
        this.category_id  = rs.getInt("category_id");
        this.category_name = rs.getString("category_name");
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public static Category getCategoryById(int category_id) {
        Category category = null;
        Connection con = ConnectionBuilder.getConnection();
        String sql = "select * from Category where category_id = ?";

        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, category_id);

            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                category = new Category(rs);
            }

            rs.close();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return category;
    }

    public void orm(Category category, ResultSet rs) throws SQLException {
        category.setCategory_id(rs.getInt("category_id"));
        category.setCategory_name(rs.getString("category_name"));
    }

    @Override
    public String toString() {
        return "category_id: " + category_id + ", category_name: " + category_name;
    }
    
    public static void main(String[] args) {
        Category cat = Category.getCategoryById(1);
        System.out.println(cat);
    }

}
