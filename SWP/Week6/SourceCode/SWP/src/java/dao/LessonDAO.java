
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.LessonDto;
import entity.Course;
import entity.Lesson;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Uslaptop
 */
public class LessonDAO extends MyDAO {

    public Vector<Lesson> getAll() {
        Vector<Lesson> vector = new Vector<Lesson>();
        xSql = "select*from Lesson";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int lesson_id = rs.getInt("lesson_id");
                String lesson_name = rs.getString("lesson_name");
                String lesson_video = rs.getString("lesson_video");
                int section_id = rs.getInt("section_id");
                String lesson_desc = rs.getString("lesson_desc");
                boolean lesson_status = rs.getBoolean("lesson_status");
                Lesson les = new Lesson(lesson_id, lesson_name, lesson_video, section_id, lesson_desc, lesson_status);
                vector.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Lesson> getAllOrbSecId() {
        Vector<Lesson> vector = new Vector<Lesson>();
        xSql = "SELECT * FROM Lesson WHERE section_id IS NOT NULL ORDER BY section_id";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int lesson_id = rs.getInt("lesson_id");
                String lesson_name = rs.getString("lesson_name");
                String lesson_video = rs.getString("lesson_video");
                int section_id = rs.getInt("section_id");
                String lesson_desc = rs.getString("lesson_desc");
                boolean lesson_status = rs.getBoolean("lesson_status");
                Lesson les = new Lesson(lesson_id, lesson_name, lesson_video, section_id, lesson_desc, lesson_status);
                vector.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Lesson getLessonDetails(int lId) {
        Lesson lesson = null;
        xSql = "select * from Lesson l where l.lesson_id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, lId);
            rs = ps.executeQuery();
            while (rs.next()) {
                int lesson_id = rs.getInt("lesson_id");
                String lesson_name = rs.getString("lesson_name");
                String lesson_video = rs.getString("lesson_video");
                int section_id = rs.getInt("section_id");
                String lesson_desc = rs.getString("lesson_desc");
                boolean lesson_status = rs.getBoolean("lesson_status");
                lesson = new Lesson(lesson_id, lesson_name, lesson_video, section_id, lesson_desc, lesson_status);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lesson;
    }

    public Vector<Lesson> getLessonBySectionId(int SectionId) {
        xSql = "select l.* from Lesson l, Section s\n"
                + "where l.section_id = s.section_id\n"
                + "and s.section_id = ?";
        Vector<Lesson> vector = new Vector<>();
        int lessonId;
        String lessonName;
        String lessonVideo;
        String lessonDesc;
        boolean lesson_Status;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, SectionId);
            rs = ps.executeQuery();
            while (rs.next()) {
                lessonId = rs.getInt("lesson_id");
                lessonName = rs.getString("lesson_name");
                lessonVideo = rs.getString("lesson_video");
                lessonDesc = rs.getString("lesson_desc");
                lesson_Status = rs.getBoolean("lesson_status");
                Lesson les = new Lesson(lessonId, lessonName, lessonVideo, SectionId, lessonDesc, lesson_Status);
                vector.add(les);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }
    
    public void SetLessonStatus(int UpdateStatus,int lessonId){
        xSql = "update Lesson set lesson_status = ? where lesson_id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, UpdateStatus);
            ps.setInt(2, lessonId);
            ps.executeUpdate();
        } catch (Exception ex) {
            Logger.getLogger(LessonDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
