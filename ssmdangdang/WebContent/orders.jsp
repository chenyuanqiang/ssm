<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>当当网-名社新书大PK</title>
<link href="css/page_05.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div id="wrapper">
  <!-- header 部分 -->
  <div id="header">
    <!-- 登录信息 -->
  	<div id="information">
    	<span>您好，</span><a href="###" >风中静草17888</a> <a href="###" class="exit">[退出登录]</a>
        
        <div class="search">
        <input class="searchInput" type="text" /><input type="button" class="searchBtn" />
        </div><!-- 搜索 END -->
    </div><!-- 登录信息 END -->
  </div><!-- header 部分 END -->
  
  
  <!-- content 部分 -->
  <div id="content">
    <!-- 购买详细信息 -->
  	<form action="Order/createOrder.do">
    <p><span>&nbsp;&nbsp;&nbsp;&nbsp;姓名：</span><input type="text" class="name" name="name" /></p>
    <p><span>&nbsp;&nbsp;&nbsp;地址：</span>
       <select name="" id="">
         <option value="" selected="selected">请选择</option>
         <option value="">辽宁省</option>
         <option value="">黑龙江省</option>
       </select>
       <select name="" id="">
         <option value="" selected="selected">请选择</option>
         <option value="">辽宁省</option>
         <option value="">黑龙江省</option>
       </select>		
    </p>
    <p><span>详细地址：</span><input type="text"  class="textInput" name="address"/></p>
    <p><span>联系电话：</span><input type="text" class="textInput" name="tel" /></p>
    <p>
    	<input type="submit" value="确 认" class="btn" /> 
        <input type="reset" value="重 置" class="reset" /></p>  
    </form>
  </div>
  
</div>
</body>
</html>
