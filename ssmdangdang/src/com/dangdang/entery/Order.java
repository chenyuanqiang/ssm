package com.dangdang.entery;

public class Order {
private int id;
private String address;
private String name;
private String subaddress;
private String tel;
private int userid;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSubaddress() {
	return subaddress;
}
public void setSubaddress(String subaddress) {
	this.subaddress = subaddress;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
@Override
public String toString() {
	return "Order [id=" + id + ", address=" + address + ", name=" + name
			+ ", subaddress=" + subaddress + ", tel=" + tel + ", userid="
			+ userid + "]";
}

}
