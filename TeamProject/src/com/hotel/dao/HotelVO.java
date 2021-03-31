package com.hotel.dao;
import java.util.*;
import lombok.Getter;
import lombok.Setter;

/*
 * NO      NOT NULL NUMBER         
POSTER  NOT NULL VARCHAR2(260)  
STAR    NOT NULL VARCHAR2(20)   
TITLE   NOT NULL VARCHAR2(500)  
GRADE   NOT NULL NUMBER(3,1)    
ADDR    NOT NULL VARCHAR2(300)  
CONTENT NOT NULL VARCHAR2(1000)
 * */
@Setter
@Getter
public class HotelVO {
	private int no;
	private int cno;
	private String poster;
	private String star;
	private String title;
	private String grade;
	private String addr;
	private String content;
	private String link;
	private String category;
	private String price;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
