package com.hotel.dao;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;



public class HotelManager {
	
	private HotelDAO dao=new HotelDAO();
	public void hotelData()
	{
		try
		{
			/*
			https://www.goodchoice.kr/product/search/2/2012 1
			https://www.goodchoice.kr/product/search/2/2019 2
			https://www.goodchoice.kr/product/search/2/2016 3
			https://www.goodchoice.kr/product/search/2/2014 4
			https://www.goodchoice.kr/product/search/2/2015 5
			https://www.goodchoice.kr/product/search/2/2020 6 
			https://www.goodchoice.kr/product/search/2/2018 7
			https://www.goodchoice.kr/product/search/2/2017 8
			https://www.goodchoice.kr/product/search/2/2021 9
			*/
			int k=289;
			Document doc=Jsoup.connect("https://www.goodchoice.kr/product/search/2/2021").get();
			  Elements title=doc.select("div.stage strong"); // css 선택자
			  Elements poster=doc.select("p.pic img.lazy"); 
			  Elements star=doc.select("div.stage div.badge"); 
			  Elements grade=doc.select("div.stage p.score"); 
			  Elements link=doc.select("li.list_2 a");
			  
			  
			for(int i=0;i<link.size();i++)
			{
				
				Document doc2=Jsoup.connect(link.get(i).attr("href")).get();
				Element addr=doc2.selectFirst("p.address");
				Element content=doc2.selectFirst("div.comment div");
				Element price=doc2.selectFirst("div.price b");
				
				 System.out.println("번호:"+k);
				 System.out.println("카테고리번호:"+1); 
				 System.out.println("제목:"+title.get(i).text());
				 System.out.println("이미지:"+poster.get(i).attr("data-original"));
				 System.out.println("성급:"+star.get(i).text());
				 System.out.println("평점:"+grade.get(i).text());
				 System.out.println("주소:"+addr.text());
				 System.out.println("간략소개:"+content.text()); 
				 System.out.println("링크:"+link.get(i).attr("href"));
				 System.out.println("가격:"+price.text());
					 
				  HotelVO vo=new HotelVO();
                 
                  
				  vo.setPoster(poster.get(i).attr("data-original"));
				  vo.setStar(star.get(i).text()); 
				  vo.setTitle(title.get(i).text());
				  vo.setGrade(grade.get(i).text());
				  vo.setAddr(addr.text()); 
				  vo.setContent(content.text());
				  vo.setLink(link.get(i).attr("href")); 
				  vo.setCno(9);
				  vo.setPrice(price.text());
				  
				
					 Elements category=doc.select("ul.city_child li a");
	                  for(int j=0;j<category.size();j++)
	                  {
	                	 
	                     try
	                     {
	                    	
	                        String str=category.get(j).attr("href");
	                        //System.out.println(str);
	                        if(str.equals("https://www.goodchoice.kr/product/search/2/2021"))
	                        {
	                           System.out.println("지역카테고리:"+category.get(j).text());
	                           vo.setCategory(category.get(j).text());
	                        }
	                        
	                     } catch (Exception ex) {}
	                     
	                  }
	                  
	                  
	                  dao.hotelDetailInsert(vo); 
	                  k++;
			}
			
		}catch(Exception ex) 
		{
			System.out.println(ex.getMessage());
		}
	}
		public static void main(String[] args) {
			HotelManager hm=new HotelManager();
			hm.hotelData();
		}
	
}
