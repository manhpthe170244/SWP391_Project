<%-- 
    Document   : BlogsList
    Created on : May 19, 2023, 1:02:19 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title> CourseList </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <style>
            .topnav {
                width: 20%;
                margin: 0 auto;
                overflow: hidden;
                margin-bottom: 50px;
            }
            .topnav .search-container {
                float: right;
            }

            .topnav input[type=text] {
                padding: 6px;
                margin-top: 8px;
                font-size: 17px;
                border: none;
            }

            .topnav .search-container button {
                float: right;
                padding: 6px 10px;
                margin-top: 8px;
                margin-right: 16px;
                background: #ddd;
                font-size: 17px;
                border: none;
                cursor: pointer;
            }

            .topnav .search-container button:hover {
                background: #ccc;
            }
        </style>
        <!--
        
        TemplateMo 569 Edu Meeting
        
        https://templatemo.com/tm-569-edu-meeting
        
        -->
    </head>

    <body>



        <!-- Sub Header -->
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-sm-8">
                        <div class="left-content">
                            <p>Đây là một website giúp các bạn tìm kiếm khóa học online phù hợp</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-4">
                        <div class="right-icons">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- *** Logo Start *** -->
                            <a href="index.html" class="logo">
                                Edu Meeting
                            </a>
                            <!-- *** Logo End *** -->
                            <!-- *** Menu Start *** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="#top" class="active">TRANG CHỦ</a></li>
                                <li><a href="meetings.html">KHÓA HỌC CỦA TÔI</a></li>
                                <li class="scroll-to-section"><a href="#apply">ĐƠN ĐĂNG KÝ CỦA TÔI</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="meetings.html">Upcoming Meetings</a></li>
                                        <li><a href="meeting-details.html">Meeting Details</a></li>
                                    </ul>
                                </li>
                                <li class="scroll-to-section"><a href="#courses">TRANG CÁ NHÂN</a></li> 
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- *** Menu End *** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <section class="heading-page header-text" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h6>Thông tin khóa hoc</h6>
                        <h2>Các khóa học online hiệu quả</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="meetings-page" id="meetings" style="padding-top: 50px">
            <div class="topnav">
                <div class="search-container">
                    <form action="">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="filters">
                                    <ul>
                                        <li data-filter="*"  class="active">Information Technology</li>
                                        <li data-filter=".Mathematics">Mathematics</li>
                                        <li data-filter=".imp">Musical Instrument</li>
                                        <li data-filter=".imp">Language</li>
                                        <li data-filter=".imp">Business</li>
                                        <li data-filter=".att">Health</li>
                                         </ul>
                                </div>
                            </div>
                            <div style="color: white;margin-bottom: 50px" class="col-lg-12">
                                Sort By <select>
                                    <option>Recent days</option>
                                </select>
                            </div>
                            <div class="col-lg-12">
                                <div class="row grid">
                                    <div class="col-lg-4 templatemo-item-col all soon">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$14.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-01.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>12</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>New Lecturers Meeting</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all imp">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$22.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-02.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>14</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Online Teaching Techniques</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all soon">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$24.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-03.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>16</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Network Teaching Concept</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all att">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$32.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-04.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>18</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Online Teaching Tools</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all att">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$34.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-02.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>22</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>New Teaching Techniques</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all imp">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$45.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-03.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>24</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Technology Conference</h4></a>
                                                <p>TemplateMo is the best website<br>when it comes to Free CSS.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all imp att">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$52.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-01.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>27</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Online Teaching Techniques</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all soon imp">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$64.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-02.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>28</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Instant Lecture Design</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 templatemo-item-col all att soon">
                                        <div class="meeting-item">
                                            <div class="thumb">
                                                <div class="price">
                                                    <span>$74.00</span>
                                                </div>
                                                <a href="meeting-details.html"><img src="assets/images/meeting-03.jpg" alt=""></a>
                                            </div>
                                            <div class="down-content">
                                                <div class="date">
                                                    <h6>Nov <span>30</span></h6>
                                                </div>
                                                <a href="meeting-details.html"><h4>Online Social Networking</h4></a>
                                                <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="pagination">
                                    <ul>
                                        <li><a href="#">1</a></li>
                                        <li class="active"><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
                    <br>Design: <a href="https://templatemo.com/page/1" target="_parent" title="website templates">TemplateMo</a></p>
            </div>
        </section>


        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/lightbox.js"></script>
        <script src="assets/js/tabs.js"></script>
        <script src="assets/js/isotope.js"></script>
        <script src="assets/js/video.js"></script>
        <script src="assets/js/slick-slider.js"></script>
        <script src="assets/js/custom.js"></script>
        <script>
            //according to loftblog tut
            $('.nav li:first').addClass('active');

            var showSection = function showSection(section, isAnimate) {
                var
                        direction = section.replace(/#/, ''),
                        reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                        reqSectionPos = reqSection.offset().top - 0;

                if (isAnimate) {
                    $('body, html').animate({
                        scrollTop: reqSectionPos},
                            800);
                } else {
                    $('body, html').scrollTop(reqSectionPos);
                }

            };

            var checkSection = function checkSection() {
                $('.section').each(function () {
                    var
                            $this = $(this),
                            topEdge = $this.offset().top - 80,
                            bottomEdge = topEdge + $this.height(),
                            wScroll = $(window).scrollTop();
                    if (topEdge < wScroll && bottomEdge > wScroll) {
                        var
                                currentId = $this.data('section'),
                                reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                        reqLink.closest('li').addClass('active').
                                siblings().removeClass('active');
                    }
                });
            };

            $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
                e.preventDefault();
                showSection($(this).attr('href'), true);
            });

            $(window).scroll(function () {
                checkSection();
            });
        </script>
    </body>


</body>

</html>
