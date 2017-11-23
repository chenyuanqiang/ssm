<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>当当网-名社新书大PK</title>
<link href="css/page_01.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie6.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/ie7.css" rel="stylesheet" type="text/css" media="all" />
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
    </div><!-- 登录信息 END-->
  </div><!-- header END -->
  
  <div id="banner"></div>
  
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
        <c:forEach items="${pagelist }" var="book">
        <!-- 循环内容 part 1 -->
        <div class="row02">
        	<a href="book/showbook.do?id=${book.id }"><img src="${book.url }" height="150"/></a>
        	<h2><a href="book/showbook.do?id=${book.id }">可爱的鼠小弟（全12册，畅销35年）</a></h2>
            <p>
            （日）<a href="###">${book.author}</a> 文，（日）<a href="#">上野麂子</a> 绘，
            <a href="###">赵静</a>，<a href="###">文纪子</a> 译/2009年08月/<a href="###">${book.publish }</a>
            </p>
            <p>
            早期阅读是儿童身心成长的关键，选择合适的图书并以正确的方式阅读，孩子就能在快乐中全面发展心智。“可爱的鼠小弟”是日本著名绘本作家
            中嘉男和上野纪子合作的不朽经典，被誉为“日本绘本史上不可……”
            </p>
            <form action="page_03.html" method="post">
            <p class="p02">
            <span class="red">￥${book.price }</span> &nbsp;&nbsp;<span class="line-through">￥${book.price }</span> &nbsp;&nbsp;折扣：55折
            <input type="button" class="buy" />
            </p>
            </form>
        </div>
        </c:forEach>
       
        
        <!-- 分页 -->
        <div class="row04">
        <a href="${pageContext.request.contextPath }/book/booklist.do?currentPage=${page.currentPage-1 }">上一页</a> 
       <c:if test="${page.currentPage<=5 }">
       <c:set var="p" value="1"></c:set>
       </c:if>
       <c:if test="${page.currentPage>5 }">
       <c:set var="p" value="${page.currentPage-5 }"></c:set>
       </c:if>
       <c:forEach begin="${p}" end="${page.currentPage+5 }" var="i">
       <c:if test="${i<page.pageCount }">
        <c:if test="${i!=page.currentPage }">
        <a href="${pageContext.request.contextPath }/book/booklist.do?currentPage=${i }">${i }</a>   
        </c:if>
        <c:if test="${i==page.currentPage }">
        <font color="red">${i}</font>
        </c:if>
       </c:if>
       </c:forEach>
         <a href="${pageContext.request.contextPath }/book/booklist.do?currentPage=${page.currentPage+1 }">下一页</a>
        &nbsp;&nbsp;共<span>${page.pageCount }</span>页 
        </div><!-- 分页 END -->     
    </div><!-- content-right部分 END -->
  </div><!-- content部分 END -->
  <!-- footer 部分 -->
  <div id="footer"></div>
</div>
</body>
</html>
