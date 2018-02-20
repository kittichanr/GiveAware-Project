/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionBuilder;

/**
 *
 * @author Suparerk
 */
public class DonatePost {

    private int donate_post_id;
    private int donator_role_id;
    private Object donator;
    private int donator_id;
    private int status_id;
    private String thing_name;
    private String post_detail;
    private Category category;
    private Province province;
    private String area;
    private Date date_create;
    private String image_list_str;
    private List<String> image_list;
    private int image_amount;

    public DonatePost() {
    }

    public DonatePost(int donate_post_id, int donator_role_id, Object donator, int donator_id,
            int status_id, String thing_name, String post_detail, Category category, Province province,
            String area, Date date_create, String image_list_str, List<String> image_list, int image_amount) {
        this.donate_post_id = donate_post_id;
        this.donator_role_id = donator_role_id;
        this.donator = donator;
        this.donator_id = donator_id;
        this.status_id = status_id;
        this.thing_name = thing_name;
        this.post_detail = post_detail;
        this.category = category;
        this.province = province;
        this.area = area;
        this.date_create = date_create;
        this.image_list_str = image_list_str;
        this.image_list = image_list;
        this.image_amount = image_amount;
    }

    public DonatePost(ResultSet rs) throws SQLException {
        this.donate_post_id = rs.getInt("donate_post_id");
        this.donator_role_id = rs.getInt("role_id");
        this.donator_id = rs.getInt("donator_id");
        this.donator = getDonator(donator_role_id, donator_id);
        this.status_id = rs.getInt("status_id");
        this.thing_name = rs.getString("thing_name");
        this.post_detail = rs.getString("post_detail");
        this.category = Category.getCategoryById(rs.getInt("category_id"));
        this.province = Province.getProvinceById(rs.getInt("province_id"));
        this.area = rs.getString("area");
        this.date_create = rs.getDate("date_create");
        if (rs.getString("image_list") != null) {
            this.image_list_str = rs.getString("image_list");
            this.image_list = getImageListFromStr(image_list_str);
        }
        this.image_amount = rs.getInt("image_amount");
    }

    public int getDonate_post_id() {
        return donate_post_id;
    }

    public void setDonate_post_id(int donate_post_id) {
        this.donate_post_id = donate_post_id;
    }

    public int getDonator_role_id() {
        return donator_role_id;
    }

    public void setDonator_role_id(int donator_role_id) {
        this.donator_role_id = donator_role_id;
    }

    public Object getDonator() {
        return donator;
    }

    public void setDonator(Object donator) {
        this.donator = donator;
    }

    public int getDonator_id() {
        return donator_id;
    }

    public void setDonator_id(int donator_id) {
        this.donator_id = donator_id;
    }

    public int getStatus_id() {
        return status_id;
    }

    public void setStatus_id(int status_id) {
        this.status_id = status_id;
    }

    public String getThing_name() {
        return thing_name;
    }

    public void setThing_name(String thing_name) {
        this.thing_name = thing_name;
    }

    public String getPost_detail() {
        return post_detail;
    }

    public void setPost_detail(String post_detail) {
        this.post_detail = post_detail;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Province getProvince() {
        return province;
    }

    public void setProvince(Province province) {
        this.province = province;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Date getDate_create() {
        return date_create;
    }

    public void setDate_create(Date date_create) {
        this.date_create = date_create;
    }

    public String getImage_list_str() {
        return image_list_str;
    }

    public void setImage_list_str(String image_list_str) {
        this.image_list_str = image_list_str;
    }

    public List<String> getImage_list() {
        return image_list;
    }

    public void setImage_list(List<String> image_list) {
        this.image_list = image_list;
    }

    public int getImage_amount() {
        return image_amount;
    }

    public void setImage_amount(int image_amount) {
        this.image_amount = image_amount;
    }

    public static List<DonatePost> getAllDonatePost(int iPageNo, int iShowRows) {
        List<DonatePost> listDonatePost = null;
        DonatePost donatePost = null;
        String SQL = "SELECT SQL_CALC_FOUND_ROWS * FROM Donate_Post limit " + iPageNo + "," + iShowRows + "";
        Connection con = null;
        try {
            con = ConnectionBuilder.getConnection();
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                donatePost = new DonatePost(rs);
                if (listDonatePost == null) {
                    listDonatePost = new ArrayList<>();
                }
                listDonatePost.add(donatePost);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(DonatePost.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listDonatePost;
    }

    private Object getDonator(int donator_role_id, int donator_id) {
        Object donator = null;
        if (donator_role_id == 1) {
            donator = Member.getMemberById(donator_id);
        }
        if (donator_role_id == 2) {
            // donator = Foundation.getFoundationById(donator_id);
        }
        return donator;
    }

    public static List<String> getImageListFromStr(String image_list_str) {
        List<String> image_list = new ArrayList<>();
        String[] strs = image_list_str.split(",");
        for (int i = 0; i < strs.length; i++) {
            image_list.add(strs[i]);
        }

        return image_list;
    }

    @Override
    public String toString() {
        return "donate_post_id:" + donate_post_id
                + "\n, donator_role_id=" + donator_role_id
                + "\n, donator=" + donator
                + "\n, donator_id=" + donator_id
                + "\n, status_id=" + status_id
                + "\n, thing_name=" + thing_name
                + "\n, post_detail=" + post_detail
                + "\n, category=" + category
                + ", province=" + province
                + "\n, area=" + area
                + "\n, date_create=" + date_create
                + "\n, image_list=" + image_list_str
                + "\n, image_amount=" + image_amount + "\n\n\n\n\n";
    }

    public static void main(String[] args) {

//        String image_list_str = "a,b,c,d,e,f,g,h,i,j";
//        List<String> list = getImageListFromStr(image_list_str);
//        int count = 1;
//        for (String string : list) {
//            System.out.println(count + ": " + string);
//            count++;
//        }
    }
}
