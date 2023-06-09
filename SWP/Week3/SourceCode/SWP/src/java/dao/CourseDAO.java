/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Course;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import dal.DBConnect;
import entity.ManageCourse;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ACER
 */
public class CourseDAO extends MyDAO {

    public int addCourse(Course course) {
        int n = 0;
        xSql = "INSERT INTO [dbo].[Course]\n"
                + "           ([course_id]\n"
                + "           ,[course_name]\n"
                + "           ,[course_title]\n"
                + "           ,[course_img]\n"
                + "           ,[course_price]\n"
                + "           ,[course_desc]\n"
                + "           ,[last_update]\n"
                + "           ,[sub_id]\n"
                + "           ,[level_id]\n"
                + "           ,[course_status]\n"
                + "           ,[durationDAY])"
                + "     VALUES (?,?,?,?,?,?,?,?,?,?,?) ";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, course.getCourse_id());
            ps.setString(2, course.getCourse_name());
            ps.setString(3, course.getCourseTilte());
            ps.setString(4, course.getCourse_img());
            ps.setFloat(5, course.getCourse_price());
            ps.setString(6, course.getCourse_desc());
            ps.setDate(7, Date.valueOf(course.getLast_update()));
            ps.setInt(8, course.getSub_id());
            ps.setInt(9, course.getLevel_id());
            ps.setBoolean(10, course.getCourse_status());
            ps.setInt(11, course.getDuration());
            n = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return n;
    }

    public Vector<ManageCourse> getmyCourseList(int user_Id, String sub_idRaw, String searchName, String sortType) {
        Vector<ManageCourse> vector = new Vector<ManageCourse>();
        xSql = "select c.*,mc.course_Start, mc.course_end from Course c, Manage_Course mc\n"
                + "where c.course_id = mc.course_id\n"
                + "and mc.user_id = ?";
          if(sub_idRaw != null){
              xSql += " and sub_id = '"+Integer.parseInt(sub_idRaw)+"'";
          }
          if(searchName != null){
              xSql += " and course_name like '%"+searchName+"%'";
          }
          if(sortType != null){
              if(sortType.equals("recent")){
                  xSql += " order by c.last_update asc";
              }else{
                  xSql += " order by course_name asc";
              }
          }
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, user_Id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int course_id = rs.getInt("course_id");
                String course_name = rs.getString("course_name");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                Date last_update = rs.getDate("last_update");
                int sub_id = rs.getInt("sub_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");
                int duration = rs.getInt("durationDAY");
                String courseTitle = rs.getString("course_Title");
                Date course_Start = rs.getDate("course_Start");
                Date course_End = rs.getDate("course_end");
                vector.add(new ManageCourse(course_Start, course_End, course_id, course_name, course_img, course_price, course_desc, last_update.toString(), sub_id, level_id, course_status, duration, courseTitle));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }


    public Vector<Course> getAll() {
        Vector<Course> vector = new Vector<Course>();
        xSql = "select c.* from Course c";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int course_id = rs.getInt("course_id");
                String course_name = rs.getString("course_name");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                Date last_update = rs.getDate("last_update");
                int sub_id = rs.getInt("sub_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");
                int duration = rs.getInt("durationDAY");
                String courseTitle = rs.getString("course_Title");
                vector.add(new Course(course_id, course_name, course_img, course_price, course_desc, last_update.toString(), sub_id, level_id, course_status, duration, courseTitle));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Course> searchByName(String search_name) {
        Vector<Course> vector = new Vector<Course>();
        xSql = "select*from Course where course_name like ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + search_name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                int course_id = rs.getInt("course_id");
                String course_name = rs.getString("course_name");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                Date last_update = rs.getDate("last_update");
                int sub_id = rs.getInt("sub_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");
                int duration = rs.getInt("durationDAY");
                String courseTitle = rs.getString("course_Title");
                vector.add(new Course(course_id, course_name, course_img, course_price, course_desc, last_update.toString(), sub_id, level_id, course_status, duration, courseTitle));
            }
        } catch (Exception e) {
            System.out.println("checkCourse: " + e.getMessage());
        }
        return vector;
    }

    public Course searchById(int search_id) {
        Course course = null;
        xSql = "select*from Course where course_id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, search_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                int course_id = rs.getInt("course_id");
                String course_name = rs.getString("course_name");
                String course_img = rs.getString("course_img");
                float course_price = rs.getFloat("course_price");
                String course_desc = rs.getString("course_desc");
                Date last_update = rs.getDate("last_update");
                int sub_id = rs.getInt("sub_id");
                int level_id = rs.getInt("level_id");
                Boolean course_status = rs.getBoolean("course_status");
                int duration = rs.getInt("durationDAY");
                String courseTitle = rs.getString("course_Title");
                course = new Course(course_id, course_name, course_img, course_price, course_desc, last_update.toString(), sub_id, level_id, course_status, duration, courseTitle);
            }
        } catch (Exception e) {
            System.out.println("checkCourse: " + e.getMessage());
        }
        return course;
    }
}
