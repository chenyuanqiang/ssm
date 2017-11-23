package com.domain.Validation;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

public class Validation {
public  char map[]=new char[]{
	'a','b','c','d','e','f','g','h','i','j','k','l','m',
	'n','o','p','q','r','s','t','u','v','w','x','y','z',
	'0','1','2','3','4','5','6','7','8','9','A','B','C',
	 'D','E','F','G','H','I','J','K','L','M','N','O','P',
	 'Q','S','R','T','U','V','W','X','Y','Z'
};
//生成彩色验证码图片
public String getcertPic(int weight,int height,OutputStream os){
	if(weight<=0){
		weight=80;
	}
	if(height<=0)
		height=40;
	BufferedImage image = new BufferedImage(weight, height,BufferedImage.TYPE_INT_RGB);
	//获得图形上下文
	Graphics g = image.getGraphics();
	g.setColor(new Color(0xDCDCDC));
	g.fillRect( 0, 0,weight, height);
	//画边框
	g.setColor(Color.black);
	g.drawRect(0, 0, weight-1, height-1);
	//随机产生验证码
	String strEnsure="";
	for(int i=0;i<4;i++){
		strEnsure+=map[(int) (map.length*Math.random())];
	}
	//将验证码显示到图片中
	g.setColor(Color.black);
	g.setFont(new Font("Arial Black", Font.PLAIN, 18));
	String str="";
	str=strEnsure.substring(0, 1);
	g.drawString(str, 15, 15);
	str=strEnsure.substring(1, 2);
	g.drawString(str, 35, 25);
	str=strEnsure.substring(2, 3);
	g.drawString(str, 50,20);
	str=strEnsure.substring(3, 4);
	g.drawString(str, 60, 30);
	//产生15个干扰点
	Random r=new Random();
	for(int i=0;i<10;i++){
		int x=r.nextInt(weight);
		int y=r.nextInt(height);
		g.drawOval(x, y, 1, 1);
	}
	//释放图形上下文
	g.dispose();
	try {
		ImageIO.write(image, "JPEG", os);
	} catch (IOException e) {
		e.printStackTrace();
		return "";
	}
	return strEnsure;
}
}