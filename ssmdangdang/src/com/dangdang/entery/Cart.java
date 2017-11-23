package com.dangdang.entery;

public class Cart {
private int id;
private int bookid;
private int userid;
private int count;
private double price;
private String url;
private double jifen;



public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public double getJifen() {
	return jifen;
}
public void setJifen(double jifen) {
	this.jifen = jifen;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getBookid() {
	return bookid;
}
public void setBookid(int bookid) {
	this.bookid = bookid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
@Override
public String toString() {
	return "Cart [id=" + id + ", bookid=" + bookid + ", userid=" + userid
			+ ", count=" + count + "]";
}

}
