/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.Category;
import model.DonatePost;
import model.Member;
import model.Province;

/**
 *
 * @author Preaw-NB
 */
public class CreateNewDonatePostServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
//        String target = "/ViewAllDonatePost";
        String target = "/ShowCreateDonatePost";
        
        String accountIdStr = request.getParameter("accountId");
        int accountId = Integer.parseInt(accountIdStr);
        String accountRoleIdStr = request.getParameter("accountRoleId");
        int accountRoleId = Integer.parseInt(accountRoleIdStr);
        
        String thingName = request.getParameter("topic");
        String postDetail = request.getParameter("detail");
        String area = request.getParameter("area");
        String provinceIdStr = request.getParameter("province");
        
        int provinceId = Integer.parseInt(provinceIdStr);
        String categoryIdStr = request.getParameter("category");
        int categoryId = Integer.parseInt(categoryIdStr);
        String img = request.getParameter("image");
//        Part picturePart = request.getPart("image");
//        picturePart.write(".jpg");
        
        // ดึงรูปมาเก็บลงเครื่อง
        // เอาชื่อรูปมาทำเป็นสตริงเพื่อเก็บลงดีบี
        
        DonatePost donatePost = new DonatePost();
        donatePost.setThing_name(thingName);
        donatePost.setPost_detail(postDetail);
        donatePost.setArea(area);
        donatePost.setProvince(Province.getProvinceById(provinceId));
        donatePost.setCategory(Category.getCategoryById(categoryId));
        donatePost.setDonator(donatePost);
        
        
//        if(accountRoleId == 1){
//            Member member = Member.getMemberById(accountId);
//            boolean success = DonatePost.createDonatePost(donatePost,member);
//        }
        
//        if(accountId == 2){
//            Foundation foundation = Foundation.getFoundationById(accountId);
//            boolean success = DonatePost.createDonatePost(donatePost,foundation);
//        }
           
        getServletContext().getRequestDispatcher(target).forward(request, response);

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
