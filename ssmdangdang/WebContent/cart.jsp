<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>当当网-可爱的鼠小弟</title>
<link href="css/page_03.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

<div id="wrapper">
  =<!-- header 部分 -->
  <div id="header">
    <!-- 登录信息 -->
  	<div id="information">
    	<span>您好，</span><a href="###" >风中静草</a> <a href="###" class="exit">[退出登录]</a>
    </div><!-- 登录信息 END -->
  </div><!-- header 部分 -->
  
  <div id="content_01"></div>
 
  <!-- content_02 部分 -->

   
     
      <form name="formname"  method="post" action="Order/Orderhandle.do">      
    <table align="center" border=1>
   
      <tr>
        <td align="center"  width="200">是否购买</td>
        <td align="center"  width="248">商品名称</td>
        <td align="center"  width="183">商品积分</td>
        <td align="center"  width="199">当当价</td>
        <td align="center"  width="190">数量</td>
        <td align="center"  width="134">操作</td>
      </tr>
      <c:forEach items="${list }" var="list">  
      <tr>
     
      <td align="center"  width="200">
      <input type="checkbox" name="ckeckname" value="${list.bookid },"/>购买</td>
       <td align="center"><img  src="${list.url}"/>图书</td>
       <td align="center">${list.jifen }</td>
       <td align="center">${list.price }</td>
       <td align="center">${list.count}
	   <!--购买数量 --></td>                               
       <td align="center"> <a href="cart/delete.do?id=${list.id }">删除</a></td>
      </tr>

  </c:forEach> 
    </table>
     
<p align="right">
         <!-- 商品金额总计 -->
    	<span >商品金额总计￥：1000</span>
        
    </p>


   
    <!-- 继续购物 -->
    <div id="goBuy">
    	<div align="right"><a href="book/booklist.do"><img src="images/Page_03_03_buy.jpg" alt=""  border="0"/></a> </div>
    </div>
     <div align="right">
       <!-- 结算按钮 -->
       <input type="submit" value="点击购买物品" ></input>
  <%--    // <a href="getbookidorderservlet?id=${a.userid }"><img src="images/Page_03_solve.jpg" alt=""  border="0"/></a>  --%>   
    </div> 
  <!-- content_03 部分 -->
  <div id="content_03"></div>
  <!-- footer 部分 -->
  <div id="footer"></div>
</div>
</form> 
</body>
</html>

