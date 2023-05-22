<%-- 
    Document   : login
    Created on : May 16, 2023, 6:00:20 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

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
                            <p>This is an educational <em>HTML CSS</em> template by TemplateMo website.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-4">
                        <div class="right-icons">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
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
                            <!-- ***** Logo Start ***** -->
                            <a href="index.html" class="logo">
                                Edu Meeting
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="meetings.html" class="active">Meetings</a></li>
                                <li><a href="index.html">Apply Now</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="meetings.html">Upcoming Meetings</a></li>
                                        <li><a href="meeting-details.html">Meeting Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="index.html">Courses</a></li> 
                                <li><a href="index.html">Contact Us</a></li> 
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
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
                        <h6>Login</h6>
                        <h2>Login Here</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="contact-us" id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 align-self-center">
                        <div class="row align-content-center justify-content-center">
                            <div class="col-lg-6">
                                <form id="contact" action="login" method="post">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h2 class="text-center" >Login</h2>
                                        </div>
                                        <c:if test="${err != null}">
                                            <div class="col-lg-12">
<<<<<<< HEAD
                                                <div class="alert alert-danger">
                                                    <strong>Wrong!</strong> ${err}
                                                </div>
                                            </div>
                                        </c:if>
                                        <c:if test="${success != null}">
                                            <div class="col-lg-12">
                                                <div class="alert alert-success">
                                                    <strong>Success!</strong> Login Success
=======
                                                <div class="alert alert-warning">
                                                    <strong>Warning!</strong> ${err}
>>>>>>> ea6d65d9d9cc03cb844f4e8db17600fb13134edd
                                                </div>
                                            </div>
                                        </c:if>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="YOUR EMAIL..." required="">
                                            </fieldset>
                                        </div>

                                        <div class="col-lg-12">
                                            <fieldset>
                                                <input name="password" type="password" id="password" placeholder="YOUR PASSWORD..." required="">
                                            </fieldset>
                                        </div>

                                        <div class="col-lg-12">
                                            <fieldset>
                                                <button type="submit" id="form-submit" class="button">LOGIN</button>
                                            </fieldset>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <p>Copyright � 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
                    <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
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

