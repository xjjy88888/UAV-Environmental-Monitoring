﻿<%@page contentType="text/html; charset=UTF-8"
    import="java.sql.*,java.io.*"%>
<html>
  <head>
    <meta charset="utf-8" http-equiv="X-UA-Compatible" content="IE=edge">
    <title>数据操作</title>
  </head>
  <body>
      <div style="height:770px;border:1px solid blue">

        <table id="mytable" width="87%" border="1" align="center">
          <tbody id="table">
          <caption style="font-size: 50px;"><center>数据操作</center></caption>

           <tr>
           <td>id</td>
           <td>地点</td>
           <td>时间</td>
           <td>温度</td>
           <td>湿度</td>
           <td>删除</td></tr>
<%
            //链接数据库，加载jdbc的驱动com.mysql.jdbc.Driver
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException classnotfoundexception) {
                //如果有异常就抛出
                classnotfoundexception.printStackTrace();
            }
            try {
                //链接数据库，IP地址是localhost，端口是3306，账号和密码是ylx，这些都可以更改
                Connection conn = DriverManager
                        .getConnection("jdbc:mysql://localhost:3306/mytest?user=root&password=admin&useUnicode=true&characterEncoding=UTF-8");
                Statement statement = conn.createStatement();

                //执行查询语句，返回结果集
                ResultSet rs = statement
                        .executeQuery("select * from tem_hum");
                        int number=0;
                //如果查询有结果，则循环显示查询出来的记录
                while (rs.next()) {
                    //out.println("<td><a href=\"replayusernews.jsp?FromUserName="
                            //+ rs.getString("FromUserName") + "\"" + ">replay</a></td>");

                    out.println("<tr><td>"+rs.getString("id")+"</td>");

                    out.println("<td>"+rs.getString("location")+"</td>");

                    out.println("<td>"+rs.getString("realtime")+"</td>");

                    out.println("<td>"+rs.getString("tem")+"</td>");

                    out.println("<td>"+rs.getString("hum")+"</td>");


                    //out.println("<td>"+rs.getString("other")+"</td></tr>");
                    out.println("<td><a href=\"delete_data.jsp?id="
                            + rs.getString("id") + "\"" + ">删除</a></td></tr>");
                          number++;

                }
                    out.println("<p id=\"amount\" style=\"color:red\">一共有"+number+"项数据</p>");
                //加个断行
                statement.close();
                conn.close();

            } catch (SQLException sqlexception) {
                sqlexception.printStackTrace();
            }

        %>
      </tbody>
</table>

<span id="spanFirst">第一页</span> <span id="spanPre">上一页</span> <span id="spanNext">下一页</span> <span id="spanLast">最后一页</span>
 第<span id="spanPageNum"></span>页/共<span id="spanTotalPage"></span>页

</div>

<br/>
按地点查找:
<select id="location">
  <option value="jiangan">江安</option>
  <option value="wangjiang">望江</option>
  <option value="huaxi">华西</option>
</select>
<input type="button" value="查询" onclick="loc_search();"/>
<input type="button" value="返回" onclick="back();"/>
<br/>按时间查找（请按照xx-xx-xx的格式填写）：
起始时间：<input type="text" id="begin_time"/>
结束时间: <input type="text" id="end_time"/>
<input type="button" value="查询" onclick="time_search();"/>
<input type="button" value="返回" onclick="back();"/>
<br/>按时间查找（可选择）：
起始时间：<select id="selYear"></select>年<select id="selMonth"></select>月<select id="selDay"></select>日
结束时间：<select id="selYear1"></select>年<select id="selMonth1"></select>月<select id="selDay1"></select>日
<input type="button" value="查询" onclick="time_searchb();"/>
<input type="button" value="返回" onclick="back();"/>


<script type="text/javascript" src="birthday.js"></script>      <!-- jQuery -->
<script>
function time_searchb()
{
  var p1 = document.getElementById('amount');
  var selYear = window.document.getElementById("selYear").value;
  var selMonth = window.document.getElementById("selMonth").value;
  var selDay = window.document.getElementById("selDay").value;
  var date1=new Date();
  date1.setFullYear(selYear,selMonth,selDay);

  var selYear1 = window.document.getElementById("selYear1").value;
  var selMonth1 = window.document.getElementById("selMonth1").value;
  var selDay1 = window.document.getElementById("selDay1").value;
  var date2=new Date();
  date2.setFullYear(selYear1,selMonth1,selDay1);

  alert(date1);
  alert(date2);
  var trs = mytable.rows;
  var amount = trs.length;
  for(var i=0;i<trs.length;i++)
  {
    var tr=trs[i];
    var tr1=trs[i].cells[2].childNodes[0].data;
    var date3=new Date(tr1);
    if(date3>date1&&date3<date2)
    {
      tr.style.display = '';
    }
    else {
      tr.style.display = 'none';
      amount--;
    }
  }
  p1.innerHTML = "一共有"+amount+"项数据";
}
function time_search()
{
    var p1 = document.getElementById('amount');
    var begintime=document.getElementById('begin_time').value;
    var endtime=document.getElementById('end_time').value;

    var date1=new Date(begintime);

    var date2=new Date(endtime);
    var trs = mytable.rows;
    var amount = trs.length;
    for(var i=0;i<trs.length;i++)
    {
      var tr=trs[i];
      var tr1=trs[i].cells[2].childNodes[0].data;
      var date3=new Date(tr1);
      if(date3>date1&&date3<date2)
      {
        tr.style.display = '';
      }
      else {
        tr.style.display = 'none';
        amount--;
      }
    }
    p1.innerHTML = "一共有"+amount+"项数据";
}

function loc_search(){
    //var options1=$("#time option:selected");
    var p1 = document.getElementById('amount');
    var option1=document.getElementById("location");
    var index1=option1.selectedIndex;
    //var options2=$("#location option:selected");
    var location=option1.options[index1].text;
    //var location=options2.text();
    var trs = mytable.rows;
    var amount = trs.length;

                for(var i = 0; i < trs.length; i++){
                    var tr = trs[i];
                    var tr1 = trs[i].cells[1].childNodes[0].data;
                    if(tr1!=location){
                        tr.style.display = 'none';
                        amount--;
                      }
                        //alert(3);
                    else
                        tr.style.display = '';
                }
                p1.innerHTML = "一共有"+amount+"项数据";
}
function back(){
  window.location.href="show_data.jsp";
}
</script>

<script type="text/javascript">


var selYear = window.document.getElementById("selYear");
var selMonth = window.document.getElementById("selMonth");
var selDay = window.document.getElementById("selDay");
// 新建一个DateSelector类的实例，将三个select对象传进去
new DateSelector(selYear, selMonth, selDay, 2000, 1, 1);

var selYear1 = window.document.getElementById("selYear1");
var selMonth1 = window.document.getElementById("selMonth1");
var selDay1 = window.document.getElementById("selDay1");
// 新建一个DateSelector类的实例，将三个select对象传进去
new DateSelector(selYear1, selMonth1, selDay1, 2000, 1, 2);
// 也可以试试下边的代码
// var dt = new Date(2004, 1, 29);
// new DateSelector(selYear, selMonth ,selDay, dt);
</script>


<script type="text/javascript">
var theTable = document.getElementById("mytable");
var totalPage = document.getElementById("spanTotalPage");
var pageNum = document.getElementById("spanPageNum");


var spanPre = document.getElementById("spanPre");
var spanNext = document.getElementById("spanNext");
var spanFirst = document.getElementById("spanFirst");
var spanLast = document.getElementById("spanLast");


var numberRowsInTable = theTable.rows.length;
var pageSize = 15;
var page = 1;


//下一页
function next() {

hideTable();


currentRow = pageSize * page;
maxRow = currentRow + pageSize;
if (maxRow > numberRowsInTable) maxRow = numberRowsInTable;
for (var i = currentRow; i < maxRow; i++) {
 theTable.rows[i].style.display = '';
}
page++;


if (maxRow == numberRowsInTable) { nextText(); lastText(); }
showPage();
preLink();
firstLink();
}
//上一页
function pre() {

hideTable();

page--;

currentRow = pageSize * page;
maxRow = currentRow - pageSize;
if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
for (var i = maxRow; i < currentRow; i++) {
 theTable.rows[i].style.display = '';
}

if (maxRow == 0) { preText(); firstText(); }
showPage();
nextLink();
lastLink();
}
//第一页
function first() {
hideTable();
page = 1;
for (var i = 0; i < pageSize; i++) {
 theTable.rows[i].style.display = '';
}
showPage();
preText();
nextLink();
lastLink();
}
//最后一页
function last() {
hideTable();
page = pageCount();
currentRow = pageSize * (page - 1);
for (var i = currentRow; i < numberRowsInTable; i++) {
 theTable.rows[i].style.display = '';
}
showPage();
preLink();
nextText();
firstLink();
}
function hideTable() {
for (var i = 0; i < numberRowsInTable; i++) {
 theTable.rows[i].style.display = 'none';
}
}
function showPage() {
pageNum.innerHTML = page;
}
//总共页数
function pageCount() {
var count = 0;
if (numberRowsInTable % pageSize != 0) count = 1;
return parseInt(numberRowsInTable / pageSize) + count;
}


//显示链接
function preLink() { spanPre.innerHTML = "<a href='javascript:pre();'>上一页</a>"; }
function preText() { spanPre.innerHTML = "上一页"; }


function nextLink() { spanNext.innerHTML = "<a href='javascript:next();'>下一页</a>"; }
function nextText() { spanNext.innerHTML = "下一页"; }


function firstLink() { spanFirst.innerHTML = "<a href='javascript:first();'>第一页</a>"; }
function firstText() { spanFirst.innerHTML = "第一页"; }


function lastLink() { spanLast.innerHTML = "<a href='javascript:last();'>最后一页</a>"; }
function lastText() { spanLast.innerHTML = "最后一页"; }


//隐藏表格
function hide() {
for (var i = pageSize; i < numberRowsInTable; i++) {
 theTable.rows[i].style.display = 'none';
}


totalPage.innerHTML = pageCount();
pageNum.innerHTML = '1';


nextLink();
lastLink();
}


hide();
</script>
  <!-- JS -->


  </body>
</html>