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
}
