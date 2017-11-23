<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>当当网-名社新书大PK</title>
<link href="css/page_02.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie6.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie7.css" rel="stylesheet" type="text/css" media="all" />
<script>
function buybook()
{
	document.getElementById("buybook").submit();
}
</script>
</head>

<body>
<div id="wrapper">
  <!-- header 部分 -->
  <div id="header">
    <!-- 登录信息 -->
  	<div id="information">
    	<span>您好，</span><a href="###" >风中静草17888</a> <a href="###" class="exit">[退出登录]</a>
        <!-- 搜索 -->
        <div class="search">
        <input class="searchInput" type="text" /><input type="button" class="searchBtn" />
        </div><!-- 搜索 END -->
    </div><!-- 登录信息 END -->
  </div><!-- header 部分 -->
  
  
  <!-- content 部分 -->
  <div id="content">
    <!-- 图书商品分类 -->
  	<div class="content-left">
    	<ul>
        	<li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
            <li><a href="###">社会各界人物</a><span>（1213）</span></li>
        </ul>
    </div><!-- 图书商品分类 END -->
    
    <div class="content-right">
      <!-- 排序条件（评分、价格等） -->
      <div class="row01">
        <p class="px">
          <a href="###"><img src="images/xl.jpg"  /></a>&nbsp;
          <a href="###"><img src="images/pf.jpg"  /></a>&nbsp;
          <a href="###"><img src="images/jg.jpg"  /></a>&nbsp;
          <a href="###"><img src="images/zk.jpg"  /></a>&nbsp;
          <a href="###"><img src="images/cbsj.jpg"  /></a>
        </p>
      </div><!-- 排序条件（评分、价格等） END -->
        
        <!-- 图书详细内容 -->
      
        <div class="row02">
        	<h2>${bookshow.name }</h2>
            <div class="row02_pic">
        		<a href="#"><img src="${bookshow.url }" /></a><br /><br />
                <span>分享到：</span><a href="#">新浪微博</a> | <a href="#">腾讯微博</a> | <a href="#">人人网</a>
        	</div>
            <div class="row02_text">
            	<p>当&nbsp;当&nbsp;网：<span class="red">￥75.90</span></p>
                <p>定&nbsp;&nbsp;&nbsp;&nbsp;价：￥${bookshow.price }&nbsp;&nbsp; 折扣：55折</p>
                <p>作&nbsp;&nbsp;&nbsp;&nbsp;者：（日）<a href="#">${bookshow.author }</a> 文，（日）<a href="#">上野麂子</a> 绘，
            	   <a href="#">赵静</a>，<a href="#">文纪子</a> 译 </p>
            	<p>出&nbsp;版&nbsp;社：<a href="#">${bookshow.publish }</a></p>
                <p>出版时间：2009-8-1</p>
            <div class="p02">
            	<form action="cart/cartList.do?id=${bookshow.id}" method="post" id="buybook">
            	<p>我要买：<input type="text" class="input" name="booknumber"/>&nbsp;件</p>
            	<input type="button" class="buy" onclick="buybook();" />
                </form>
            </div>
            </div>
            
            <div class="clr"></div>
        </div><!-- 图书详细内容 END -->
  
    </div>
  </div>
  
  <!-- column 部分 -->
  <div id="column_02"></div>
  
  <!-- footer 部分 -->
  <div id="footer"></div>
</div>
</body>
</html>
