package com.dangdang.Collertor;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dangdang.UserDao.UserDao;
import com.dangdang.entery.User;

@Controller
@RequestMapping("user")
public class UserCollertor {
	@Resource UserDao dao;
	@RequestMapping("checkname")
	public String checkname(User u,
			HttpServletRequest req,HttpServletResponse resp){
		   try {
			   req.setCharacterEncoding("utf8");
			   resp.setCharacterEncoding("utf8");
			   System.out.println(u.getName());
			PrintWriter p = resp.getWriter();
			 if(dao.addcheck(u)!=null){
				p.print(2);
			}else{
				p.print(3);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	} 
@RequestMapping("checkpass")
public String chenkpass(User u,HttpServletRequest req,HttpServletResponse resp) {	
	
	try {
		req.setCharacterEncoding("utf8");
		resp.setCharacterEncoding("utf8");
		try {
			PrintWriter p = resp.getWriter();
			if(u.getPassword().length()>5){
				p.print("2");
			}else{
				p.print("1");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} catch (UnsupportedEncodingException e) {
		
		e.printStackTrace();
	}
	return null;
}
@RequestMapping("checkcode")
public String chenkcode(@RequestParam("code")String code,HttpServletRequest req,HttpServletResponse resp) throws IOException{	
	resp.setCharacterEncoding("utf8");
	req.setCharacterEncoding("utf8");
	PrintWriter p = resp.getWriter();
	String c=(String) req.getSession().getAttribute("certCode");
	if(code.equals(c)){
		p.print("正确");
	}else{
		p.print("验证码不一样");
	}
	return null;
}

@RequestMapping("Register")
public String addUser(User u){
	dao.add(u);
	return "redirect:/login.jsp";
}
@RequestMapping("login")
public String login(User u,HttpServletRequest req){
	User user=dao.login(u);
	if(user==null){
		return "redirect:/login.jsp";
	}
	else{
		System.out.println("userid="+user.getId());
		req.getSession().setAttribute("userid", user.getId());
		req.getSession().setAttribute("level", user.getLevel());
		return "redirect:/book/booklist.do";
	}
	
}
@RequestMapping("insert")
public String InsertBacth(){
List<String> list=new ArrayList();
list.add(UUID.randomUUID().toString());
list.add(UUID.randomUUID().toString());
list.add(UUID.randomUUID().toString());
Map map=new HashMap();
map.put("ids" ,list);
map.put("name","abcd");
int i=0;
i=dao.insertBacth(map);
if(i>0){
	return "login";
}
	return "success";
}

}