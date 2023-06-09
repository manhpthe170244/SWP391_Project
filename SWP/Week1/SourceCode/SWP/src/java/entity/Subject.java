/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Uslaptop
 */
public class Subject {

    int sub_id;
    String sub_name;
    String sub_img;
    String sub_desc;
    int subject_cate_id;

    public Subject() {
    }

    public Subject(int sub_id, String sub_name, String sub_img, String sub_desc, int subject_cate_id) {
        this.sub_id = sub_id;
        this.sub_name = sub_name;
        this.sub_img = sub_img;
        this.sub_desc = sub_desc;
        this.subject_cate_id = subject_cate_id;
    }

    public int getSub_id() {
        return sub_id;
    }

    public void setSub_id(int sub_id) {
        this.sub_id = sub_id;
    }

    public String getSub_name() {
        return sub_name;
    }

    public void setSub_name(String sub_name) {
        this.sub_name = sub_name;
    }

    public String getSub_img() {
        return sub_img;
    }

    public void setSub_img(String sub_img) {
        this.sub_img = sub_img;
    }

    public String getSub_desc() {
        return sub_desc;
    }

    public void setSub_desc(String sub_desc) {
        this.sub_desc = sub_desc;
    }

    public int getSubject_cate_id() {
        return subject_cate_id;
    }

    public void setSubject_cate_id(int subject_cate_id) {
        this.subject_cate_id = subject_cate_id;
    }

}
