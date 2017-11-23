<%@ page language="java" contentType="image/jpeg; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="image" scope="session" class="com.domain.Validation.Validation"></jsp:useBean>
<%String str=image.getcertPic(0, 0,response.getOutputStream());
session.setAttribute("certCode", str);
%>
