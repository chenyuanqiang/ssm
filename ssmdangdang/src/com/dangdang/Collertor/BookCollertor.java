package com.dangdang.Collertor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dangdang.BookDao.BookDao;
import com.dangdang.entery.Book;
import com.dangdang.entery.Page;
@Controller
@RequestMapping("book")
public class BookCollertor {
	@Resource BookDao dao;
@RequestMapping("booklist")
public String bookList(HttpSession session,HttpServletRequest re){
	Page page=new Page();
	String p=re.getParameter("currentPage");
	System.out.println(p);
	if(p==null){
		page.setCurrentPage(1);
	}else{
		page.setCurrentPage(Integer.parseInt(p));
	}
	page.setCountSize(dao.GetBookNumber());
	List<Book> book=dao.getallBook(page);
	session.setAttribute("pagelist", book);
	session.setAttribute("page", page);
	return "redirect:/list.jsp";
}
@RequestMapping("showbook") 
public String showbook(Book book,HttpSession session){
	Book b=dao.showBookById(book.getId());
	session.setAttribute("bookshow", b);
	return "redirect:/bookshow.jsp";
}
}
