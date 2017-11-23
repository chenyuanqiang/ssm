package com.dangdang.BookDao;

import java.util.List;

import com.dangdang.entery.Book;
import com.dangdang.entery.Page;

public interface BookDao {
public List<Book> getallBook(Page page);
public Book showBookById(int bookid);
public int GetBookNumber();

}
