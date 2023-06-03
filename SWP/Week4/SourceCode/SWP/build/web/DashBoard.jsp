<%-- 
    Document   : template
    Created on : May 18, 2023, 8:35:04 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <link rel="stylesheet" href="assets/css/styling.css?version=15"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    </head>
    <body>
        <%
            String[] keys = (String[])request.getAttribute("key");
            Integer[] value = (Integer[])request.getAttribute("values");
        %>
        <jsp:include page="header.jsp"/>

        <section class="heading-page header-text">
            <div class="container">
                <div class="row">
                    Sort:
                    <select class="dashBoardInput" name="sortType" id="sortTypePop">
                        <option value="most">Nhiều học sinh nhất</option>
                        <option value="least">Ít học sinh nhất</option>
                    </select>
                    <canvas class="myChart" id="population" style="width:100%"></canvas>
                </div>
                <div class="row">
                    Sort:
                    <select class="dashBoardInput" name="sortType" id="sortTypePar">
                        <option value="most">Nhiều học sinh nhất</option>
                        <option value="least">Ít học sinh nhất</option>
                    </select>
                    <canvas class="myChart" id="participant" style="width:100%"></canvas>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"/>
        <script>

            var xValues = [<% 
               for (int i = 0; i < keys.length; i++) {
                    out.print("'" + keys[i] + "'");
                    if (i < keys.length - 1) {
                      out.print(", ");
                    }
                }
            %>];
            var yValues = [<% 
               for (int i = 0; i < value.length; i++) {
                    out.print("'" + value[i] + "'");
                    if (i < value.length - 1) {
                      out.print(", ");
                    }
                }
            %>];
            var barColors = ["#FA8C51", "#EA98DA", "#6CE2D2", "#f5f588", "#EB9898"];
            new Chart("population", {
                type: "bar",
                data: {
                    labels: xValues,
                    datasets: [{
                            backgroundColor: barColors,
                            data: yValues,
                            label: "aa"
                        }]
                },

                options: {
                    title: {
                        display: true,
                        fontColor: 'white',
                        text: '5 tỉnh thành',
                        fontSize: 35
                    },
                    scales: {
                        xAxes: [{
                                ticks: {
                                    fontColor: '#E8E8E8',
                                    fontSize: 15,

                                },
                                gridLines: {
                                    color: '#A09F9F',
                                    lineWidth: 1
                                }
                            }],
                        yAxes: [{

                                ticks: {
                                    fontColor: '#E8E8E8',
                                    beginAtZero: true,
                                    fontSize: 15
                                },
                                gridLines: {
                                    color: '#A09F9F',
                                    lineWidth: 1
                                }

                            }]
                    },

                }
            });
            new Chart("myChart1", {
                type: "participant",
                data: {
                    labels: xValues,
                    datasets: [{
                            backgroundColor: barColors,
                            data: yValues,
                            label: "aa"
                        }]
                },

                options: {
                    title: {
                        display: true,
                        fontColor: 'white',
                        text: '5 khoá học',
                        fontSize: 35
                    },
                    scales: {
                        xAxes: [{
                                ticks: {
                                    fontColor: '#E8E8E8',
                                    fontSize: 15,

                                },
                                gridLines: {
                                    color: '#A09F9F',
                                    lineWidth: 1
                                }
                            }],
                        yAxes: [{

                                ticks: {
                                    fontColor: '#E8E8E8',
                                    beginAtZero: true,
                                    fontSize: 15
                                },
                                gridLines: {
                                    color: '#A09F9F',
                                    lineWidth: 1
                                }

                            }]
                    },

                }
            });
            const sortType = document.getElementById("sortTypePop");
            sortType.addEventListener("change", function () {
                if (sortType.value === "most") {
                    window.location.href = "?sortType=most";
                } else if (sortType.value === "least") {
                    window.location.href = "?sortType=least";

                }

            });
            var paramValue = "${sessionScope.sort_type}";
            for (var i = 0; i < sortType.options.length; i++) {
                if (sortType.options[i].value === paramValue) {
                    sortType.options[i].selected = true;
                    break;
                }
            }
        </script>

    </body>
</html>
