<%-- 
    Document   : BlogDetails
    Created on : May 19, 2023, 1:09:09 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            .table-container {
  text-align: center;
  overflow-x: auto;
}
            
            table{
                width:100%;

            }
            .anh{
                background-color: gray;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                margin-bottom: 1em;
                border: 2px solid #ddd;
            }
            th, td {
                text-align: left;
                padding: 8px;
                border: 1px solid #ddd;
                color: white;
            }

/*            .table-container {
                text-align: center;
            }*/

            table {
                width: auto;
                margin: 0 auto;
            }

            th, td {
                text-align: left;
                padding: 8px;
                border: 1px solid #ddd;
            }
            .sidebar {
                width: 100%;

                padding: 20px;
                background-color: #f2f2f2;
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
                color: black;
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
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <!-- Cach su dung template: dung 2 the include de lay header va footer, sau do pass section o be duoi vao 
        giua roi chen noi dug trang vao phan ben duoi -->


        <section class="heading-page header-text">

            <div class="container">
                <div class="row">
                    <div class="search-box" >
                        <form action="search" method="get">
                            <input type="text" name="txt" placeholder="Search...">
                            <button type="submit">Search</button>
                        </form>
                    </div>
                    <li><button class="add-post-button" onclick="window.location.href = 'sliderDetailsEdit?type=add'">Add Slider</button></li>


                    <table border="1">
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Image</th>
                            <th>Blacklink</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach items="${requestScope.sliderList}" var="slider">
                            <tr id="slider_${slider.getSlider_id()}">
                                <td>${slider.getSlider_id()}</td>
                                <td>${slider.getSlider_title()}</td>
                                <td>${slider.getSlider_img()}</td>
                                <td>${slider.getSlider_link()}</td>
                                <td>${(slider.isSlider_status()) ? "Active" : "Inactive"}</td>
                                <td>
                                    <button onclick="deleteSlider(${slider.getSlider_id()})">Delete</button>
                                    <button onclick="window.location.href = 'sliderDetailsEdit?slider_id=${slider.getSlider_id()}&type=edit'">Edit</button>
                                </td>
                            </tr>             
                        </c:forEach>
                    </table>


                </div>

        </section>



        <jsp:include page="footer.jsp"/>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function deleteSlider(sliderId) {
            //Send an AJAX request to your server-side script
            $.ajax({
                url: "deleteSlider",
                type: "POST",
                data: {slider_id: sliderId},
                success: function (response) {
                    // Remove the row from the table
                    $("#slider_" + sliderId).remove();
                }
            });
        }
    </script>
</html>
