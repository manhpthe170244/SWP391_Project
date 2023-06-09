/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.CourseDAO;
import dao.SubjectDAO;
import entity.Course;
import entity.Subject;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Vector;
import java.util.stream.Collectors;

/**
 *
 * @author ACER
 */
public class courseList extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet courseList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet courseList at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        
        String search = request.getParameter("search");
        
        String subIdString = request.getParameter("sub_id");
        int sub_id;
        if (subIdString == null) {
            sub_id = 1;
        } else {
            sub_id = Integer.parseInt(subIdString);
        }

        String currentPageString = request.getParameter("currentPage");
        int currentPage;
        if (currentPageString == null) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(currentPageString);
        }

        int recordsPerPage = 2;

        CourseDAO courseDAO = new CourseDAO();
        Vector<Course> courseToDisplay = new Vector<>();
        
        SubjectDAO subjectDAO = new SubjectDAO();
        List<Subject> subjectList = subjectDAO.getAll();
        request.setAttribute("subjectList", subjectList);

        List<Course> courseList = courseDAO.getAll().stream().filter(s -> s.getSub_id() == sub_id).collect(Collectors.toList());
        for(int i = recordsPerPage * (currentPage - 1); i < recordsPerPage * currentPage; i++){
            courseToDisplay.add(courseList.get(i));
        }
        
        int totalRecords = courseList.size();
        int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

        request.setAttribute("courseToDisplay", courseToDisplay);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);

        RequestDispatcher rd = request.getRequestDispatcher("CourseList.jsp");
        rd.forward(request, response);
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
