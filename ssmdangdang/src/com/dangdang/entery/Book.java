package com.dangdang.entery;

public class Book {
private int id;
private String name;
private String publish;
private double price;
private int leftcount;
private String author;
private String url;
private double jifen;
private double discount;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPublish() {
	return publish;
}
public void setPublish(String publish) {
	this.publish = publish;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getLeftcount() {
	return leftcount;
}
public void setLeftcount(int leftcount) {
	this.leftcount = leftcount;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
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
public double getDiscount() {
	return discount;
}
public void setDiscount(double discount) {
	this.discount = discount;
}
@Override
public String toString() {
	return "Book [id=" + id + ", bookname=" + name + ", publish=" + publish
			+ ", price=" + price + ", leftcount=" + leftcount + ", author="
			+ author + ", url=" + url + ", jifen=" + jifen + ", discount="
			+ discount + "]";
}

}
