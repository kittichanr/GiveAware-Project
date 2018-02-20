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
import java.util.ArrayList;
import java.util.List;
import utils.ConnectionBuilder;

/**
 *
 * @author Praew
 */
public class Province {
    private int province_id;
    private String province_name;

    public Province() {
        
    }
    
    public Province(int province_id, String province_name) {
        this.province_id = province_id;
        this.province_name = province_name;
    }

    public Province(ResultSet rs) throws SQLException {
        this.province_id = rs.getInt("province_id");
        this.province_name = rs.getString("province_name");
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public String getProvince_name() {
        return province_name;
    }

    public void setProvince_name(String province_name) {
        this.province_name = province_name;
    }
    
     public static Province getProvinceById(int province_id) {
        Province province = null;
        Connection con = ConnectionBuilder.getConnection();

        String sql = "select * from Province where province_id = ?";

        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, province_id);

            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                province = new Province(rs);
            }

            rs.close();
            pstm.close();
            con.close();

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return province;
    }
     
    public static List<Province> getAllProvince(){
        List<Province> listProvince = null;
        Connection con = ConnectionBuilder.getConnection();
        
        String sql = "select * from Province";
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            Province province;
            while (rs.next()) {
                province = new Province(rs);
                if(listProvince == null){
                    listProvince = new ArrayList<>();
                }
                listProvince.add(province);
            }

            rs.close();
            pstm.close();
            con.close();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return listProvince;
    }
    
    public void orm(Province province, ResultSet rs) throws SQLException{
        province.setProvince_id(rs.getInt("province_id"));
        province.setProvince_name(rs.getString("province_name"));
    }

    @Override
    public String toString() {
        return "province_id: " + province_id + ", province_name: " + province_name;
    }
    
    public static void main(String[] args) {
        Connection con = ConnectionBuilder.getConnection();
//        Province p = Province.getProvinceById(1);
//        System.out.println(p);
        List<Province> pros = getAllProvince();       
        for (Province pro : pros) {
            System.out.println(pro+"\n");
        }
    }

    
    
    
}
