/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;

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
    
    public void orm(Province province, ResultSet rs) throws SQLException{
        province.setProvince_id(rs.getInt("province_id"));
        province.setProvince_name(rs.getString("province_name"));
    }

    @Override
    public String toString() {
        return "province_id: " + province_id + ", province_name: " + province_name;
    }
    
    

    
    
    
}
