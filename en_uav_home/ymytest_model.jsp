<%@page contentType="text/html; charset=UTF-8"
    import="java.sql.*,java.io.*"%>
    <%@ include file="ylogin_check.jsp"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>Artcore - Projects 3 Columns</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">



        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/templatemo-misc.css">
        <link rel="stylesheet" href="css/templatemo-style.css">
        <style>
                /*  在此处填写叠层样式  */
                body, html{
                    height: 100%;
                    width: 100%;
                    margin: 0; padding: 0;
                }
                table {
                    height: 80%;
                    width: 35%;         /*  必须设置一个宽度， margin: 0 auto才能使之居于父组件中央*/
                    margin: 5px auto;  /*  通过设置外边距（margin）中的左右外边距属性为auto使之居于父组件（body）中间*/
                }
                    table tr{
                        height: 60px;
                        width: 100%;
                    }
                    table>tr>th{
                        height: 100%;
                        width:100%;
                    }
        </style>
        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="#/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

        <section id="pageloader">
            <div class="loader-item fa fa-spin colored-border"></div>
        </section> <!-- /#pageloader -->

        <header class="site-header container-fluid">
            <div class="top-header">
                <div class="logo col-md-6 col-sm-6">
                  <h1><a href="index.html"><em>无人机</em>环境监测</a></h1>
                  <span>by PYX小组</span>
                </div> <!-- /.logo -->
            </div> <!-- /.top-header -->
            <div class="main-header">
                <div class="row">
                    <div class="main-header-left col-md-3 col-sm-6 col-xs-8">
                        <a id="search-icon" class="btn-left fa fa-search" href="#search-overlay"></a>
                        <div id="search-overlay">
                            <a href="#search-overlay" class="close-search"><i class="fa fa-times-circle"></i></a>
                            <div class="search-form-holder">
                                <h2>Type keywords and hit enter</h2>
                                <form id="search-form" action="#">
                                    <input type="search" name="s" placeholder="" autocomplete="off" />
                                </form>
                            </div>
                        </div><!-- #search-overlay -->
                    </div> <!-- /.main-header-left -->
                    <div class="menu-wrapper col-md-9 col-sm-6 col-xs-4">
                        <a href="#" class="toggle-menu visible-sm visible-xs"><i class="fa fa-bars"></i></a>
                        <ul class="sf-menu hidden-xs hidden-sm">
                          <li><a href="index.html">返回主页</a></li>
                          <li><a href="ymanager_stuff.html">返回上一页</a></li>
                        </ul>
                    </div> <!-- /.menu-wrapper -->
                </div> <!-- /.row -->
            </div> <!-- /.main-header -->
            <div id="responsive-menu">
                <ul>
                    <li><a href="index.html">Home</a></li>
                </ul>
            </div>
        </header> <!-- /.site-header -->

        <div class="content-wrapper">
            <div class="inner-container container">
              <div style="text-align:center">
              <table id="ta" border="1 px">
              <tr align="center"> <th colspan ="3"><font size="6" color="black">分析报告</th></tr>
              <%
                 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                 java.util.Date currentTime = new java.util.Date();//得到当前系统时间
                 String str_date1 = formatter.format(currentTime); //将日期时间格式化
                 String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式
                 %>
              <tr><th>时间</th><th>内容</th><th>备注</th></tr>
              <tr><th>时间</th><th><%out.println("<p>"+str_date2+"</p>");%></th><th><%out.println("<p>"+str_date2+"</p>");%></th></tr>

              <tr><th>负责人</th><th><%out.println("<p>"+session.getAttribute("users")+"</p>");%></th><th><%out.println("<p>"+session.getAttribute("users")+"</p>");%></th></tr>
              <tr><th>操作员</th><th><%out.println("<p>"+session.getAttribute("users")+"</p>");%></th><th><%out.println("<p>"+session.getAttribute("users")+"</p>");%></th></tr>
              <tr><th>温度描述</th><th>
              <select>
                <option value ="1ow1">极高（与真实数据相比）</option>
                <option value ="low2">偏高（与真实数据相比）</option>
                <option value="moderate">准确（与真实数据相比）</option>
                <option value="high1">偏低（与真实数据相比）</option>
                <option value="high2">极低（与真实数据相比）</option>
              </select>
              </th><th><input name="" type="text" width="100%"/></th></tr>
              <tr><th>湿度描述</th><th>
              <select>
                <option value ="1ow1">极高（与真实数据相比）</option>
                <option value ="low2">偏高（与真实数据相比）</option>
                <option value="moderate">准确（与真实数据相比）</option>
                <option value="high1">偏低（与真实数据相比）</option>
                <option value="high2">极低（与真实数据相比）</option>
              </select>
              </th><th><input name="" type="text" width="100%"/></th></tr>
              <tr><th>Pm25描述</th><th>
              <select>
                <option value ="1ow1">极高（与真实数据相比）</option>
                <option value ="low2">偏高（与真实数据相比）</option>
                <option value="moderate">准确（与真实数据相比）</option>
                <option value="high1">偏低（与真实数据相比）</option>
                <option value="high2">极低（与真实数据相比）</option>
              </select>
              </th><th><input name="" type="text" width="100%"/></th></tr>
              <tr><th>巡航路线描述</th><th><select>
                <option value ="1ow1">未偏离</option>
                <option value ="low2">部分偏离</option>
                <option value="moderate">严重偏离</option>
              </select></th><th><input name="" type="text" width="100%"/></th></tr>
              <tr height="120px"><th height="120px">其他(不超过105个字符)</th><td height="120px" colspan ="2"><textarea  id="cother" rows="5" cols="45" height: 100% width:100% name="" type="text"></textarea>
              </td></tr>
              </table>
              <p>
                <input type="button" value="提交" style="height=20px;width=100px;" onclick="confirm()"/>
                <input type="button" value="启用编辑" style="height=20px;width=100px;" onclick="reedit()"/>
                <input type="button" value="重置" style="height=20px;width=100px;" onclick="reset()"/>
                <input type="button" value="打印" style="height=20px;width=100px;" onclick="doPrint()"/>
                <input type="button" value="导出pdf" style="height=20px;width=100px;" onclick="exportpdf()"/>

              </p>
              </div>
            </div> <!-- /.inner-content -->
        </div> <!-- /.content-wrapper -->

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- Preloader -->
        <script type="text/javascript">
            //<![CDATA[
            $(window).load(function() {
                $('.loader-item').fadeOut();
                    $('#pageloader').delay(350).fadeOut('slow');
                $('body').delay(350).css({'overflow-y':'visible'});
            })
            //]]>
        </script>
        <script src="js/jspdf.debug.js"></script>
        <script src="js/html2canvas.js"></script>
        <script text="javascript">
        function confirm()
        {
          var ctime=document.getElementById("ctime");
          ctime.style.border="none";
          ctime.readOnly=true;
          var btime=document.getElementById("btime");
          btime.style.border="none";
          btime.readOnly=true;

          var ccharger=document.getElementById("ccharger");
          ccharger.style.border="none";
          ccharger.readOnly=true;
          var bcharger=document.getElementById("bcharger");
          bcharger.style.border="none";
          bcharger.readOnly=true;

          var coperator=document.getElementById("coperator");
          coperator.style.border="none";
          coperator.readOnly=true;
          var boperator=document.getElementById("boperator");
          boperator.style.border="none";
          boperator.readOnly=true;

          var cother=document.getElementById("cother");
          cother.style.border="none";
          cother.readOnly=true;
          var bother=document.getElementById("bother");
          bother.style.border="none";
          bother.readOnly=true;
        }

        function reedit()
        {
          var ctime=document.getElementById("ctime");
          ctime.style.border="1px solid #000";
          ctime.readOnly=false;
          var btime=document.getElementById("btime");
          btime.style.border="1px solid #000";
          btime.readOnly=false;

          var ccharger=document.getElementById("ccharger");
          ccharger.style.border="1px solid #000";
          ccharger.readOnly=false;
          var bcharger=document.getElementById("bcharger");
          bcharger.style.border="1px solid #000";
          bcharger.readOnly=false;

          var coperator=document.getElementById("coperator");
          coperator.style.border="1px solid #000";
          coperator.readOnly=false;
          var boperator=document.getElementById("boperator");
          boperator.style.border="1px solid #000";
          boperator.readOnly=false;

          var cother=document.getElementById("cother");
          cother.style.border="1px solid #000";
          cother.readOnly=false;
          var bother=document.getElementById("bother");
          bother.style.border="1px solid #000";
          bother.readOnly=false;
        }

        function reset()
        {
          var ctime=document.getElementById("ctime");
          //ctime.style.border="1px solid #000";
          ctime.readOnly=false;
          ctime.value="";
          var btime=document.getElementById("btime");
          //btime.style.border="1px solid #000";
          btime.readOnly=false;
          btime.value="";

          var ccharger=document.getElementById("ccharger");
          //ccharger.style.border="1px solid #000";
          ccharger.readOnly=false;
          ccharger.value="";
          var bcharger=document.getElementById("bcharger");
          //bcharger.style.border="1px solid #000";
          bcharger.readOnly=false;
          bcharger.value="";

          var coperator=document.getElementById("coperator");
          //coperator.style.border="1px solid #000";
          coperator.readOnly=false;
          coperator.value="";
          var boperator=document.getElementById("boperator");
          //boperator.style.border="1px solid #000";
          boperator.readOnly=false;
          boperator.value="";

          var cother=document.getElementById("cother");
          //cother.style.border="1px solid #000";
          cother.readOnly=false;
          cother.value="";
          var bother=document.getElementById("bother");
          //bother.style.border="1px solid #000";
          bother.readOnly=false;
          bother.value="";
        }


        function doPrint() {
            window.print();
        }

        function exportpdf(){
        alert(0);
            html2canvas(document.getElementById("ta"), {
                onrendered: function(canvas) {

                    //通过html2canvas将html渲染成canvas，然后获取图片数据
                    var imgData = canvas.toDataURL('image/jpeg');

                    //初始化pdf，设置相应格式
                    var doc = new jsPDF("p", "mm", "a4");

                    //这里设置的是a4纸张尺寸
                    doc.addImage(imgData, 'JPEG', 0, 0,210,297);

                    //输出保存命名为content的pdf
                    doc.save('content.pdf');
                }
            });
        }
        </script>

    </body>
</html>
