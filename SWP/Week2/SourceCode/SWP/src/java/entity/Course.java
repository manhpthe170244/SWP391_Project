/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author ACER
 */
public class Course {
    String course_id;
    String course_name;
    String course_img;
    float course_price;
    String course_desc;
    String course_public;
    int sub_id;
    int level_id;
    Boolean course_status;
    int duration;
    String courseTilte;
    public Course(String course_id, String course_name, String course_img, float course_price, String course_desc, String course_public, int sub_id, int level_id, Boolean course_status, int duration, String CourseTitle) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.course_img = course_img;
        this.course_price = course_price;
        this.course_desc = course_desc;
        this.course_public = course_public;
        this.sub_id = sub_id;
        this.level_id = level_id;
        this.course_status = course_status;
        this.duration = duration;
        this.courseTilte = CourseTitle;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_img() {
        return course_img;
    }

    public void setCourse_img(String course_img) {
        this.course_img = course_img;
    }

    public float getCourse_price() {
        return course_price;
    }

    public void setCourse_price(float course_price) {
        this.course_price = course_price;
    }

    public String getCourse_desc() {
        return course_desc;
    }

    public void setCourse_desc(String course_desc) {
        this.course_desc = course_desc;
    }

    public String getCourse_public() {
        return course_public;
    }

    public void setCourse_public(String course_public) {
        this.course_public = course_public;
    }

    public int getSub_id() {
        return sub_id;
    }

    public void setSub_id(int sub_id) {
        this.sub_id = sub_id;
    }

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public Boolean getCourse_status() {
        return course_status;
    }

    public void setCourse_status(Boolean course_status) {
        this.course_status = course_status;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getCourseTilte() {
        return courseTilte;
    }

    public void setCourseTilte(String courseTilte) {
        this.courseTilte = courseTilte;
    }
    
}
