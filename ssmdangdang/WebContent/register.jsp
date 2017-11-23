<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
 	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>当当网-名社新书大PK</title>
<link href="css/page_04.css" rel="stylesheet" type="text/css" media="all" />
<script>
var flag;
function changeimg(){
	var code=document.getElementById("code1");
	time=new Date();
	code.src="MakePic.jsp?code="+time.getTime();
}
function getXml(){
	var myXml;
	if(window.XMLHttpRequest){
		myXml=new XMLHttpRequest();
	}else if(window.ActiveXObject){
		myXml=new ActiveXObject("MICROSOFT.XMLHTTP");
	}
	return myXml;
}
var XmlHttp=getXml();
function checkname(){
	var span=document.getElementById("spanName");
	var name=document.getElementById("name").value;
	if(name==""){
		span.style.color="red";
		span.innerText="重新输入";
		flag=false;
	}else{
	XmlHttp.onreadystatechange= function allback(){
		if(XmlHttp.readyState==4){
			if(XmlHttp.status==200){
				var response=XmlHttp.responseText;
				if(response==2){
					 span.style.color="red";
					 span.innerText="用户名已经存在";
					flag= false;
			    }
			    else{
			         span.style.color="green";
					 span.innerText="√";
					 flag= true;
			    }
			}
		}
	};
	}
	XmlHttp.open("get", "user/checkname.do?name="+name, "true");
	XmlHttp.send();
}
function checkpass(){
	var pass=document.getElementById("password");
	var spanPass=document.getElementById("spanpass");
	if(pass.value==""){
		spanPass.style.color="red";
		spanPass.innerText="密码不能为空";
	}
	else{
	XmlHttp.onreadystatechange= function allback(){
		if(XmlHttp.readyState==4){
			if(XmlHttp.status==200){
				var response=XmlHttp.responseText;
				if(response=="1"){
					spanPass.style.color="red";
					spanPass.innerText="密码不符合要求";
					flag=false;
				}
				else{
					spanPass.style.color="green";
					spanPass.innerText="√";
					flag=true;
				}
			}
		}
	};
	}
	XmlHttp.open("get", "user/checkpass.do?password="+pass.value, "true");
	XmlHttp.send();
}
function checkRepass(){
	var pass=document.getElementById("password").value;
	var repass=document.getElementById("repassword").value;
	if(pass==repass){
		document.getElementById("respan").innerText="√";
		document.getElementById("respan").style.color="green";
		flag= true;
	}
	else{
		document.getElementById("respan").innerText="两次密码不一样";
		document.getElementById("respan").style.color="red";
		flag= false;
	}
}
function checkemail(){
	var email=document.getElementById("email");
	var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
	var a=reg.test(email.value);
	if(a){
		document.getElementById("emailspan").style.color="green";
		document.getElementById("emailspan").innerText="√";
		flag=true;
	}else{
		document.getElementById("emailspan").style.color="red";
		document.getElementById("emailspan").innerText="email格式不正确";
		flag=false;
	}
}
function checkcode(){
	var code=document.getElementById("code").value;
	var codespan=document.getElementById("codespan");
	if(code==""){
		codespan.style.color="red";
		codespan.innerText="密码不能为空";
		flag=false;
	}
	else{
	XmlHttp.onreadystatechange= function allback(){
		if(XmlHttp.readyState==4){
			if(XmlHttp.status==200){
				var response=XmlHttp.responseText;
				if(response=="验证码不一样"){
					codespan.style.color="red";
					codespan.innerText=response;
					flag=false;
				}
				else{
					codespan.style.color="green";
					codespan.innerText="√";
					flag=true;
				}
			}
		}
	};
	}
	XmlHttp.open("get", "user/checkcode.do?code="+code, "true");
	XmlHttp.send();
}
function allcheck(){
	return flag;
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
  <div>
  <div id="content">
    <!-- 注册信息 -->
  	<form action="user/Register.do" method="post" onsubmit="return allcheck()">
   <input type="hidden" name="level" value="0" />
    <p><span>用户名：</span><input  class="textInput" name="name" id="name" onblur="checkname()"/><span id="spanName">请输入用户名</span></p>
    <p><span>密码：</span><input type="password"  class="textInput" name="password" id="password" onblur="checkpass()"/><span id="spanpass">密码至少6位</span></p>
    <p><span>确认密码：</span><input type="password"  class="textInput" name="repassword" id="repassword" onblur="checkRepass()" /><span id="respan"></span></p>
    <p><span>Email地址：</span><input class="textInput" name="email" id="email" onblur="checkemail()"/><span id="emailspan"></span></p>
    <p><span>&nbsp;&nbsp;&nbsp;&nbsp;验证码：</span><input  class="textInput" id="code" name="code" onblur="checkcode()"/><span id="codespan"></span></p>
    <p><img src="MakePic.jsp" id="code1" alt="" /><span class="grey">区分大小写&nbsp;&nbsp;</span><a href="javascript:changeimg()">换张图</a></p>
    <p><input type="submit"  value="" class="btn" /></p>
    <p><input name="" type="checkbox" value="" /> 我已阅读并同意《当当网交易条款》和《当当网社区条款》</p>
     </form>
    </div>
   </div>
</div>
</body>
</html>

