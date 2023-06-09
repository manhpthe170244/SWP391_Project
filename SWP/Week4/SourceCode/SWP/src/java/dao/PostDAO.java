/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.Post;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import dal.DBConnect;
import java.sql.Date;

/**
 *
 * @author Uslaptop
 */
public class PostDAO extends MyDAO {

    public Vector<Post> getAll() {
        Vector<Post> vector = new Vector<Post>();
        xSql = "select * from Post";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                int post_id = rs.getInt("post_id");
                String post_img = rs.getString("post_img");
                String post_title = rs.getString("post_title");
                String post_desc = rs.getString("post_desc");
                Date post_date = rs.getDate("post_date");
                Boolean post_status = rs.getBoolean("post_status");
                int blog_id = rs.getInt("blog_id");

                // create object
                Post post = new Post(post_id, post_img, post_title, post_desc, post_date, post_status, blog_id);
                vector.add(post);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vector;
    }

    public Vector<Post> searchByName(String search_title) {
        Vector<Post> vector = new Vector<Post>();
        xSql = "select * from Post where post_title like ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + search_title + "%");
            rs = ps.executeQuery();
            int post_id = rs.getInt("post_id");
            String post_img = rs.getString("post_img");
            String post_title = rs.getString("post_title");
            String post_desc = rs.getString("post_desc");
            Date post_date = rs.getDate("post_date");
            Boolean post_status = rs.getBoolean("post_status");
            int blog_id = rs.getInt("blog_id");

            // create object
            Post post = new Post(post_id, post_img, post_title, post_desc, post_date, post_status, blog_id);
            vector.add(post);
        } catch (Exception e) {
            System.out.println("checkPost: " + e.getMessage());
        }
        return vector;
    }

    public Post searchById(int search_id) {
        Post post = null;
        xSql = "select * from Post where post_id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, search_id);
            rs = ps.executeQuery();
            int post_id = rs.getInt("post_id");
            String post_img = rs.getString("post_img");
            String post_title = rs.getString("post_title");
            String post_desc = rs.getString("post_desc");
            Date post_date = rs.getDate("post_date");
            Boolean post_status = rs.getBoolean("post_status");
            int blog_id = rs.getInt("blog_id");

            // create object
            post = new Post(post_id, post_img, post_title, post_desc, post_date, post_status, blog_id);
        } catch (Exception e) {
            System.out.println("checkPost: " + e.getMessage());
        }
        return post;
    }

    public static void main(String[] args) {
        PostDAO pd = new PostDAO();
        Post post = pd.searchById(1);
        System.out.println(post);
        
        Vector<Post> postSearchByName = pd.searchByName("M");
        for(Post p : postSearchByName){
            System.out.println(p);
        }
    }
}
