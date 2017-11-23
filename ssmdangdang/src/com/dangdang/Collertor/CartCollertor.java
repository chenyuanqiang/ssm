package com.dangdang.Collertor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dangdang.BookDao.BookDao;
import com.dangdang.CartDao.CartDao;
import com.dangdang.entery.Cart;

@Controller
@RequestMapping("cart")
public class CartCollertor {
@Resource CartDao dao;
@Resource BookDao bookdao;
@RequestMapping("cartList")
public String showCartList(HttpSession session,HttpServletRequest req){
	Cart cart=new Cart();
	String count=req.getParameter("booknumber");
	int userid=(int)session.getAttribute("userid");
	if(count!=null){
	String bookid1=	req.getParameter("id");
		int number=Integer.parseInt(count);
		int bookid=Integer.parseInt(bookid1);
		cart.setBookid(bookid);
		cart.setCount(number);
		cart.setUserid(userid);
		cart.setJifen(bookdao.showBookById(bookid).getJifen());
		cart.setPrice(bookdao.showBookById(bookid).getPrice());
		cart.setUrl(bookdao.showBookById(bookid).getUrl());
		if(dao.FindCartByBookId(cart)!=null){
			dao.changenumberbybookid(cart);
		}else{
			dao.AddToCart(cart);
		}
		List<Cart> list=dao.getallcartbyid(userid);
		session.setAttribute("list",list);
	}else{
		List<Cart> list=dao.getallcartbyid(userid);
		session.setAttribute("list",list);
	}
	return "redirect:/cart.jsp";
}
@RequestMapping("delete")
public String deleteCart(HttpSession session,Cart cart){
	int userid=(int)session.getAttribute("userid");
	dao.DeleteCartBookById(cart.getId());
	return "redirect:/cart/cartList.do";
}
}
