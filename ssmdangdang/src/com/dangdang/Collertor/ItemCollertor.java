package com.dangdang.Collertor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dangdang.BookDao.BookDao;
import com.dangdang.CartDao.CartDao;
import com.dangdang.ItemDao.ItemDao;
import com.dangdang.entery.Cart;
import com.dangdang.entery.Item;

@Controller
@RequestMapping("item")
public class ItemCollertor {
	@Resource BookDao bookdao;
	@Resource ItemDao itemdao;
	@Resource CartDao cartdao;
@RequestMapping("additem")
public String addtoitem(HttpSession session){
	int id=(int)session.getAttribute("userid");
	System.out.println(id);
	List list=(List)session.getAttribute("bookid");
	int orderid=(int)session.getAttribute("orderid");
	for(int i=0;i<list.size();i++){
	Cart cart=new Cart();
	cart.setBookid(Integer.parseInt((String) list.get(i)));
	cart.setUserid(id);
	int count=cartdao.cartbookcount(cart);
	Item item =new Item();
	item.setBookid(Integer.parseInt((String) list.get(i)));item.setBookname(bookdao.showBookById(Integer.parseInt((String) list.get(i))).getName());
	item.setOrderid(orderid);item.setPrice(bookdao.showBookById(Integer.parseInt((String) list.get(i))).getPrice());
	item.setCount(count);
	itemdao.addtoItem(item);
	cartdao.ClearCart(cart);
	}
	return "redirect:/success.jsp";
}
}
