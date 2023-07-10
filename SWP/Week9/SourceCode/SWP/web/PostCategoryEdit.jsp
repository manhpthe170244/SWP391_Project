<%-- 
    Document   : BlogDetails
    Created on : May 19, 2023, 1:09:09 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title>Education Template - Meeting Detail Page</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <style>
            td {
                padding: 8px;
                border: 1px solid #ddd;
                word-wrap: break-word;
                vertical-align: top;
                color: white; /* Add this line to change the text color to white */
            }
            th{
                color: white;
            }

            table{
                width:100%;

            }
            .anh{
                background-color: white
                    ;
            }
            /*            table {
                            border-collapse: collapse;
                            width: 100%;
                            margin-bottom: 1em;
                            border: 2px solid #ddd;
                        }*/
            table {
                width: 100%;
                margin-bottom: 1em;
                border: 2px solid #ddd;
                table-layout: fixed;
            }
            /*            th, td {
                            text-align: left;
                            padding: 8px;
                            border: 1px solid #ddd;
                            color: white;
                        }*/
            th, td {
                padding: 8px;
                border: 1px solid #ddd;
                word-wrap: break-word;
                vertical-align: top;
            }
            .table-container {
                text-align: center;
            }

            table {
                width: auto;
                margin: 0 auto;
            }

            /*            th, td {
                            text-align: left;
                            padding: 8px;
                            border: 1px solid #ddd;
            background-color: #f2f2f2;
                        }*/
            .sidebar {
                width: 100%;

                padding: 20px;
                background-color: white;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }
            .sidebar h3 {
                margin-top: 0;
            }
            .search-form {
                margin-bottom: 20px;
            }
            .search-form input[type="text"] {
                width: 500px;
                padding: 10px;
                border: none;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .widget-title {
                color: white;
            }
            .widgetre ul a {
                border: 1px solid black;
                border-radius: 5px;
                padding: 5px;
                margin-right: 5px;
            }
            .add-post-button {
                float: left;
                margin: 10px;
            }
            .search-box {
                float: right;
                left:  370px;
                position: absolute;
                margin: -40px 0;
            }

            .search-box input[type="text"] {
                width: 500px;
                padding: 5px 5px;
                border-radius: 5px;
                border: 1px solid #ccc;
            }
            .search-box button[type="submit"] {
                width: 100px;
                height: 30px;
            }
            .add-post-button {
                background-color: #FF6F61;/* Màu nền của nút */
                border: none; /* Không có viền */
                color: white; /* Màu chữ */
                padding: 10px 20px; /* Kích thước padding */
                text-align: center; /* Căn giữa nội dung trong nút */
                text-decoration: none; /* Không gạch chân */
                display: inline-block; /* Hiển thị là một block inline */
                font-size: 16px; /* Cỡ chữ */
                cursor: pointer; /* Hiệu ứng con trỏ khi di chuột */
                border-radius: 8px; /* Bo tròn góc */
                font-weight: bold;
            }
            .edit-post-button {
                background-color: #FF6F61;/* Màu nền của nút */
                border: none; /* Không có viền */
                color: white; /* Màu chữ */
                padding: 10px 20px; /* Kích thước padding */
                text-align: center; /* Căn giữa nội dung trong nút */
                text-decoration: none; /* Không gạch chân */
                display: inline-block; /* Hiển thị là một block inline */
                font-size: 16px; /* Cỡ chữ */
                cursor: pointer; /* Hiệu ứng con trỏ khi di chuột */
                border-radius: 8px; /* Bo tròn góc */
                font-weight: bold;
            }




            .add-post-button:hover {
                background-color: #E8483F; /* Màu nền khi di chuột vào */


            }
            .delete-post-button {
                background-color: #FF6F61;
                border: none;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: block;
                margin: 0 auto; /* Căn giữa theo chiều ngang */
                font-size: 16px;
                cursor: pointer;
                border-radius: 8px;
                font-weight: bold;
                margin-top: 10px; /* Khoảng cách từ nút Add đến nút Delete */
            }
            .add-post-button,
            .edit-post-button {
                display: flex;
                align-items: center;
                text-align: center;
            }

            .add-post-button {
                margin-bottom: 10px;
            }


        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <!-- Cach su dung template: dung 2 the include de lay header va footer, sau do pass section o be duoi vao 
        giua roi chen noi dug trang vao phan ben duoi -->


        <section class="heading-page header-text">

            <div class="container">
                <div class="row">
                    <form method="post" action="savePostCategory">
                        <ul>
                            <li><button class="add-post-button" onclick="Add()" type="button">Add </button></li>
                            <li><button class="edit-post-button" style="position: relative; top: 10px" type="submit">Save </button></li>
                        </ul>

                        <table border="1" id="table">
                            <tr>
                                <th>Tên môn</th>
                                <th>Mô tả</th>
                                <th>Hành động</th>
                            </tr>
                            
                            <c:forEach items="${requestScope.categoryList}" var="category">
                                <tr id="category_${category.getBlog_id()}">
                                    <td><input type="text" value="${category.getBlog_name()}" name="name${category.getBlog_id()}"></td>
                                    <td><textarea name="note${category.getBlog_id()}">${category.getNote()}</textarea></td>
                                    <td>
                                        <button class="delete-post-button" onclick="Delete(${category.getBlog_id()})" type="button">Delete</button>                              
                                    </td>
                                </tr>             
                            </c:forEach>
                        </table>
                    </form>
                </div>
        </section>
        <jsp:include page="footer.jsp"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
                                            function Add() {
                                                if (window.confirm("Những thay đổi hiện tại sẽ bị mất nếu chưa được Save, bạn có chắc muốn Add?")) {
                                                    window.location.href = 'addPostCategory';
                                                }
                                            }
                                            function Delete(id) {
                                                //Send an AJAX request to your server-side script
                                                console.log("delete category");
                                                $.ajax({
                                                    url: "deletePostCategory",
                                                    type: "POST",
                                                    data: {category_id: id},
                                                    success: function (response) {
                                                        // Remove the row from the table
                                                        $("#category_" + id).remove();
                                                    }
                                                });
                                            }
        </script>
    </body>
</html>
