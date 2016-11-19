﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> Programming Interview Prep</title>
    <link href="css/bootstrap.css" rel="stylesheet">
<link href="css/revolution-slider.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link href="css/responsive.css" rel="stylesheet">
  <script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
     <style>
         .current
         {
             background:#25AAE1;
               color:#fff !important;
         }
     .main-menu .navigation > li > a:active
     {
         background:blue;
       
     }
     .contact h1
     {
         color:#666;
     }
     .contact label
     {
         color:#666;
     }
     .contact label span
     {
         color:Red;
     }
     .form-control
     {
          background-color: hsl(0, 0%, 100%);
    border: 1px solid hsl(0, 0%, 80%);
    border-radius: 4px;
    box-shadow: 0 1px 1px hsla(0, 0%, 0%, 0.075) inset;
     }
      .blog-post
      {
           border-bottom:2px solid #00AEFF;
      }
     .blog-post H2
     {
         color:#00AEFF;
        
     }
     
     </style>
     <script>

         $(document).ready(function () {
             $(document).on("scroll", onScroll);

             //smoothscroll
             $('a[href^="#"]').on('click', function (e) {
                 e.preventDefault();
                 $(document).off("scroll");

                 $('a').each(function () {
                     $(this).removeClass('current');
                 })
                 $(this).addClass('current');

                 var target = this.hash,
            menu = target;
                 $target = $(target);
                 $('html, body').stop().animate({
                     'scrollTop': $target.offset().top + 2
                 }, 500, 'swing', function () {
                     window.location.hash = target;
                     $(document).on("scroll", onScroll);
                 });
             });
         });

         function onScroll(event) {
             var scrollPos = $(document).scrollTop();
             $('#menu-center a').each(function () {
                 var currLink = $(this);
                 var refElement = $(currLink.attr("href"));
                 if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
                     $('#menu-center ul li a').removeClass("current");
                     currLink.addClass("current");
                 }
                 else {
                     currLink.removeClass("current");
                 }
             });
         }

         $(document).ready(function () {
             $(".la1").click(function () {

                 $('html,body').animate({
                     scrollTop: $("#about").offset().top
                 },
        'slow');
             });
             $(".la2").click(function () {

                 $('html,body').animate({
                     scrollTop: $("#product").offset().top
                 },
        'slow');
             });
             $(".la3").click(function () {

                 $('html,body').animate({
                     scrollTop: $("#demo").offset().top
                 },
        'slow');
             });
             $(".la4").click(function () {

                 $('html,body').animate({
                     scrollTop: $("#clients").offset().top
                 },
        'slow');
             });
             $(".la5").click(function () {

                 $('html,body').animate({
                     scrollTop: $("#contact").offset().top
                 },
        'slow');
             });

         });
</script>

</head>
<body>
    <form id="form1" runat="server">
   <div>
    <div class="page-wrapper">
 	
    <!-- Preloader 
    <div class="preloader"></div>-->
 
   
    
    <header class="main-header mobile-header " >
    	
        <div class="header-lower " >
        	<div class="auto-container clearfix">
            	
                <!--Outer Box-->
                <div class="outer-box" style="padding:0PX;">
                
                    <!-- Logo -->
                    <div class="logo">
                        <a href="index.html"><img src="images/logo-interviewprep.png" style="width:245px" alt=""></a>
                     </div>
                     
                    
                    <nav class="main-menu">
                        
                        <div class="navbar-header">
                            <!-- Toggle Button -->    	
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix" id="menu-center">
                            <ul class="navigation">
                                <li><a  class="la1" href="Default.aspx#about">Why are we here?</a>
                                    
                                </li>
                                <li ><a href="Default.aspx#crack-interview" class="la2">Crack the Job Interview</a>
                                    
                                </li>
                                <li ><a href="Default.aspx#Testimonials" class="la3">Testimonials </a>
                                    
                                </li>
                                <li><a href="Default.aspx#contact" class="la4">Contact </a>
                                    
                                </li>
                                <li><a href="faq's.aspx">FAQ </a>
                                  
                                </li>
                                
                                <li><a href="blogs.aspx" class="la5 current">Blog </a></li>
                            </ul>
                        </div>
                    </nav>
                    
                </div>
            </div>
        </div>
        
    </header>
  
    	
  
    
    
 <section class="page-title" style="background-image:url(images/main-slider/2.jpg);">
    	<div class="auto-container">
        	<div class="sec-title">
                <h1>Our Blogs</h1>
                
            </div>
        </div>
        <!--Down Arrow-->
        <div class="down-arrow scroll-to-target" data-target=".scroll-to-this"></div>
    </section>
    
    
   
                  
              <div class="sidebar-page scroll-to-this">
    	<div class="auto-container">
        	<div class="row clearfix">
            	
                <!--Content Side-->	
                <div class="col-lg-12 col-md-8 col-sm-6 col-xs-12">
                    <section class="blog-container">
                        
                        <!--Blog Post-->
                        <article class="blog-post">
                            <div class="post-inner">
                                
                                <div class="post-header">
                                <h2><a href="blog-detail.aspx">Blog Example</a></h2>
                                    <ul class="post-info">
                                     
                                        <li><span class="fa fa-user"></span>&ensp; Posted by <a href="#">Nandini</a></li>
                                           <li><span class="fa fa-clock-o"></span>&ensp;ON  18 June 2016</li>
                                        
                                    </ul>
                                    
                                </div>
                                
                            </div>
                        </article>
                        
                      
                        
                        <article class="blog-post">
                            <div class="post-inner">
                                
                                <div class="post-header">
                                <h2><a href="blog-detail.aspx">Blog Example1</a></h2>
                                    <ul class="post-info">
                                     
                                        <li><span class="fa fa-user"></span>&ensp; Posted by <a href="#">Nandini</a></li>
                                           <li><span class="fa fa-clock-o"></span>&ensp;ON  18 June 2016</li>
                                        
                                    </ul>
                                    
                                </div>
                                
                            </div>
                        </article>
                        
                
                    </section>
                    
                    <br>
                
                    <%--<div class="centered-pagination text-left">
                        <ul>
                            <li><a class="prev" href="#"><span class="fa fa-angle-left"></span>&ensp;Prev</a></li>
                            <li><a href="#" class="active">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">....</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a class="next" href="#">Next&ensp;<span class="fa fa-angle-right"></span></a></li>
                        </ul>
                    </div>--%>
                
                    
                </div>
           
                
            </div>
        </div>
    </div>  
                    
               

 

   

   
   
  
   
    <!--Main Footer-->
    <footer class="main-footer">
    	
        <!--Footer Upper-->        
        <div class="footer-upper">
            <div class="auto-container">
                <div class="row clearfix">
                
                	<div class="col-lg-12 col-sm-12 col-xs-12 column text-center" style="margin-bottom:10px;">
                  
                        <p><b>Please reach out with questions!   <a href="mailto:kumarjaya.p@gmail.com">kumarjaya.p@gmail.com</a></b></p>
                    </div>
              
             
                </div>
                
                <!--Contact Info-->
                <div class="contact-info">
                	<ul>
                    	<li><img src="images/facebook.png" /></li>
                        <li><img src="images/twitter.png" /></li>
                        <li><img src="images/linkindin.png" /></li>
                        <li><img src="images/social-icon.png" /></li>
                        <li><img src="images/social-icon1.png" /></li>
                                                                             
                    </ul>
                </div>
                
            </div>
        </div>
        
       
    </footer>
    
</div>
    </div>
    <div class="scroll-to-top scroll-to-target" data-target=".home"><span class="fa fa-arrow-up"></span></div>

 
<script src="js/bootstrap.min.js"></script>
<script src="js/revolution.min.js"></script>
<script src="js/bxslider.js"></script>
<script src="js/owl.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/wow.js"></script>
<script src="js/script.js"></script>
    </form>
</body>
</html>
