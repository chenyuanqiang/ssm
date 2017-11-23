package com.dangdang.entery;

public class Page {
private int pageSzie=5;
private int pageCount;//һ���ж���ҳ
private int currentPage;//��ǰҳ��
private int countSize;//���ݿ���һ���ж���������
private int startPos;

public int getStartPos() {
	startPos= (currentPage-1)*pageSzie;
	return startPos;
}
public void setStartPos(int startPos) {
	this.startPos = startPos;
}
public int getPageSzie() {
	return pageSzie;
}
public void setPageSzie(int pageSzie) {
	this.pageSzie = pageSzie;
}
public int getPageCount() {
	pageCount=countSize%pageSzie==0?countSize/pageSzie:countSize/pageSzie+1;
	return pageCount;
}
public void setPageCount(int pageCount) {
	this.pageCount = pageCount;
}
public int getCurrentPage() {
	if(currentPage<=0){
		currentPage=1;
	}/*else if(currentPage>pageCount){
		currentPage=pageCount;
	}*/
	return currentPage;
}
public void setCurrentPage(int currentPage) {
	this.currentPage = currentPage;
}
public int getCountSize() {
	return countSize;
}
public void setCountSize(int countSize) {
	this.countSize = countSize;
}
}
