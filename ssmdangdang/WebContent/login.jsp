<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb18030" />
<title>登陆页</title>
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
<div id="wrapper">
  <!-- header 部分 -->
  <div id="header"></div>
  
  <!-- content 部分 -->
  <div id="content">
  	<div id="login">
    	<form action="user/login.do" method="post">
        	<br />
        	<label for="name">账户名:</label>
            <input type="text" class="input_name" id="name" name="name"/>
            <br />
            <br />
            <label for="password">密　码:</label>
            <input type="password" class="input_password" id="password" name="password" />
            <br />
            <br />
            <input type="submit" value="登 陆"  class="input_submit" />
            <span><a href="###">忘记密码？</a></span>
        </form>
        <a href="page_04.html" target="_blank" ><img src="images/login_register.jpg" class="register" alt="" /></a>
    </div>
  </div>
  
  <!-- footer 部分 -->
  <div id="footer"></div>
</div>

</body>
</html>
