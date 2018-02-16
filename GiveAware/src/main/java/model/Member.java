/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.ConnectionBuilder;

/**
 *
 * @author Praew
 */
public class Member {
    private int member_id;
    private int role_id;
    private String member_name;
    private String member_lastname;
    private String member_address;
    private Date birthday;
    private String tel;
    private String contact;
    private String profile_picture; 
    private int id_card_number;
    private String id_card_picture;
    private boolean is_approve;

    public Member() {
    }   

    public Member(int member_id, int role_id, String member_name, String member_lastname, String member_address, Date birthday, String tel, String contact, String profile_picture, int id_card_number, String id_card_picture, boolean is_approve) {
        this.member_id = member_id;
        this.role_id = role_id;
        this.member_name = member_name;
        this.member_lastname = member_lastname;
        this.member_address = member_address;
        this.birthday = birthday;
        this.tel = tel;
        this.contact = contact;
        this.profile_picture = profile_picture;
        this.id_card_number = id_card_number;
        this.id_card_picture = id_card_picture;
        this.is_approve = is_approve;
    }
    
    public Member(ResultSet rs) throws SQLException {
        this.member_id = rs.getInt("member_id");
        this.role_id = rs.getInt("role_id");
        this.member_name = rs.getString("member_name");
        this.member_lastname = rs.getString("member_lastname");
        this.member_address = rs.getString("member_address");
        this.birthday = rs.getDate("birthday");
        this.tel = rs.getString("tel");
        this.contact = rs.getString("contact");
        this.profile_picture = rs.getString("profile_picture");
        this.id_card_number = rs.getInt("id_card_number");
        this.id_card_picture = rs.getString("id_card_picture");
        this.is_approve = rs.getBoolean("is_approve");;
    }

    public int getMember_id() {
        return member_id;
    }

    public void setMember_id(int member_id) {
        this.member_id = member_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_lastname() {
        return member_lastname;
    }

    public void setMember_lastname(String member_lastname) {
        this.member_lastname = member_lastname;
    }

    public String getMember_address() {
        return member_address;
    }

    public void setMember_address(String member_address) {
        this.member_address = member_address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getProfile_picture() {
        return profile_picture;
    }

    public void setProfile_picture(String profile_picture) {
        this.profile_picture = profile_picture;
    }

    public int getId_card_number() {
        return id_card_number;
    }

    public void setId_card_number(int id_card_number) {
        this.id_card_number = id_card_number;
    }

    public String getId_card_picture() {
        return id_card_picture;
    }

    public void setId_card_picture(String id_card_picture) {
        this.id_card_picture = id_card_picture;
    }

    public boolean isIs_approve() {
        return is_approve;
    }

    public void setIs_approve(boolean is_approve) {
        this.is_approve = is_approve;
    }

    @Override
    public String toString() {
        return "member_id: " + member_id + 
               "\n, role_id: " + role_id + 
                "\n, member_name: " + member_name + 
                "\n, member_lastname: " + member_lastname + 
                "\n, member_address: " + member_address + 
                "\n, birthday: " + birthday + 
                "\n, tel: " + tel + 
                "\n, contact: " + contact + 
                "\n, profile_picture: " + profile_picture + 
                "\n, id_card_number: " + id_card_number + 
                "\n, id_card_picture: " + id_card_picture + 
                "\n, is_approve: " + is_approve ;
    }
}
