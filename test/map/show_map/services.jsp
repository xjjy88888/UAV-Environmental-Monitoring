﻿<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Artcore - Services</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="../css/bootstrap.css">
        <link rel="stylesheet" href="../css/font-awesome.css">
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../css/templatemo-misc.css">
        <link rel="stylesheet" href="../css/templatemo-style.css">
        <script src="../js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

    </head>
    <body>
        <section id="pageloader">
            <div class="loader-item fa fa-spin colored-border"></div>
        </section> <!-- /#pageloader -->

        <header class="site-header container-fluid">
             <%@ include file="../frame/frame_top_header.jsp" %>
             <%@ include file="../frame/frame_main_header.jsp" %>
        </header> <!-- /.site-header -->

        <div class="content-wrapper">
            <div class="inner-container container">
                <div class="row">
                    <div class="section-header col-md-12">
                        <h2>我们提供的信息</h2>
                        <span>现场传感器数据</span>
                    </div> <!-- /.section-header -->
                </div> <!-- /.row -->
                <div class="row">
                    <div class="col-md-6 service-item service-left">
                        <div class="box-content">
                            <div class="service-icon">
                                <i class="li_lab"></i>
                            </div>
                            <div class="service-content">
                                <h4>实时温度</h4>
                                <p>实时温度可以帮助你知道外面的天气是寒冷还是炎热，当你外出时，你可以准确的知道你需要穿什么，同时也可以在生活的其他方面给你带来便利。</p>
                            </div>
                        </div> <!-- /.box-content -->
                    </div> <!-- /.service-item -->
                    <div class="col-md-6 service-item service-right">
                        <div class="box-content">
                            <div class="service-icon">
                                <i class="li_bulb"></i>
                            </div>
                            <div class="service-content">
                                <h4>实时湿度</h4>
                                <p>实时湿度可以帮助你知道外面的湿度如何，当你外出时，它可以帮助你决定是否需要准备一些保湿霜。</p>
                            </div>
                        </div> <!-- /.box-content -->
                    </div> <!-- /.service-item -->
                </div>
                    <div class="col-md-6 service-item service-right">
                        <div class="box-content">
                            <div class="service-icon">
                                <i class="li_clock"></i>
                            </div>
                            <div class="service-content">
                                <h4>实时PM2.5</h4>
                                <p>PM10是最近几年人们谈论的另一种有害的微粒，如果你知道它的实时数据，你可以选择你是否外出以及什么时候外出。</p>
                            </div>
                        </div> <!-- /.box-content -->
                    </div> <!-- /.service-item -->
                    <div class="col-md-6 service-item service-left">
                        <div class="box-content">
                            <div class="service-icon">
                                <i class="li_like"></i>
                            </div>
                            <div class="service-content">
                                <h4>实时GPS</h4>
                                <p>如果你想让之前谈论的数据对你有用，你就需要在你的周围选择GPS，从而得到附近的数据。</p>
                            </div>
                        </div> <!-- /.box-content -->
                    </div> <!-- /.service-item -->
               </div> <!-- /.inner-content -->  
        </div> <!-- /.content-wrapper -->
       
       
       <div id="pricing" class="pricing">
	<div class="container">
		
		<div id="allmap" style="height:600px"></div>
    
     <script src="../script/jquery-1.8.3.min.js" ></script>
  <script src="../script/map_view.js"></script>

  <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B7d71c582e960e8bc1eae517183b5f77"></script>

	</div>
	</div>
        
        
      
      
        <script src="../js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="../js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="../js/plugins.js"></script>
        <script src="../js/main.js"></script>

        <!-- Preloader -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function() { // makes sure the whole site is loaded
                $('.loader-item').fadeOut(); // will first fade out the loading animation
                    $('#pageloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
                $('body').delay(350).css({'overflow-y':'visible'});
            })
            //]]>
        </script>
 
 

    </body>
</html>
