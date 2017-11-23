package com.dangdang.entery;

public class Item {
private int id;
private String bookname;
private int bookid;
private int orderid;
private int count;
private double price;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public int getBookid() {
	return bookid;
}
public void setBookid(int bookid) {
	this.bookid = bookid;
}
public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
@Override
public String toString() {
	return "Item [id=" + id + ", bookname=" + bookname + ", bookid=" + bookid
			+ ", orderid=" + orderid + ", count=" + count + ", price=" + price
			+ "]";
}

}
