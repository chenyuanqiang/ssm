package com.dangdang.Collertor;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangdang.OrderDao.OrderDao;
import com.dangdang.entery.Order;

@Controller
@RequestMapping("Order")
public class OrderCollertor {
	@Resource OrderDao dao;
@RequestMapping("Orderhandle")
public String handle(HttpServletRequest req){
	String []s=req.getParameterValues("ckeckname");
	String a="";
	for(int i=0;i<s.length;i++){
		a=a+s[i];
		System.out.println(a);
	}
	List list=new ArrayList();
	 String bookid[]=a.split(",");
     for(int i=0;i<bookid.length;i++){
    	 list.add(bookid[i]);
    	 System.out.println( bookid[i]);
     }
     req.getSession().setAttribute("bookid", list);
	return "redirect:/orders.jsp";
}
@RequestMapping("createOrder")
public String addtoOrder(HttpServletRequest req,HttpSession session){
	Order o=new Order();
	String name=req.getParameter("name");
	String tel=req.getParameter("tel");
	String address=req.getParameter("address");
	o.setAddress(address);
	o.setName(name);o.setTel(tel);o.setUserid((int)session.getAttribute("userid"));
	dao.addorder(o);
	int orderid=o.getId();
	session.setAttribute("orderid", orderid);
	return "redirect:/item/additem.do";
}
}
