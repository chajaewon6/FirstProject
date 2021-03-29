package com.hotel.dao;

import java.sql.*;
import java.util.*;

import com.hotel.dao.*;

import com.sist.jdbc.*;

public class HotelDAO {
	private DAOManager dm=new DAOManager();
	private Connection conn;
	private PreparedStatement ps;
	public void hotelDetailInsert(HotelVO vo)
	{
		try
		{
			conn=dm.getConnection();
			String sql="INSERT INTO hotel_detail VALUES("
					  +"(SELECT NVL(MAX(no)+1,1) FROM hotel_detail),?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			
			
			ps.setString(1, vo.getPoster());
			ps.setString(2, vo.getStar());
			ps.setString(3, vo.getTitle());
			ps.setString(4, vo.getGrade());
			ps.setString(5, vo.getAddr());
			ps.setString(6, vo.getContent());
			ps.setString(7, vo.getLink());
			ps.setString(8, vo.getCategory());
			ps.setInt(9, vo.getCno());
			ps.setString(10, vo.getPrice());
			
			ps.executeUpdate(); // COMMIT
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			dm.disConnection(conn, ps);
		}
	}
	 public ArrayList<HotelVO> HotelListData()
	  {
		  ArrayList<HotelVO> list=new ArrayList<HotelVO>();
		  try
		  {
			  conn=dm.getConnection();
			  // 인기순위(10) , 공지사항 5개...
			  String sql="SELECT no,poster,title,star,grade,addr,category,price "
					    +"FROM hotel_detail "
					    +"ORDER BY no ASC";
			  ps=conn.prepareStatement(sql);
			  ResultSet rs=ps.executeQuery();
			  while(rs.next())
			  {
				  HotelVO vo=new HotelVO();
				  vo.setNo(rs.getInt(1));
				  vo.setTitle(rs.getString(3));
				  vo.setPoster(rs.getString(2));
				  vo.setStar(rs.getString(4));
				  vo.setGrade(rs.getString(5));
				  vo.setAddr(rs.getString(6));
				  vo.setCategory(rs.getString(7));
				  vo.setPrice(rs.getString(8));
				  list.add(vo);
			  }
			  rs.close();
		  }catch(Exception ex)
		  {
			  ex.printStackTrace();
		  }
		  finally
		  {
			  dm.disConnection(conn, ps);
		  }
		  return list;
	  }
	 public HotelVO HotelDetailData(int no)
	   {
		   /*
		    *  private int mno,cno,replyCount;
			   private String poster,title,director,actor,regdate,
			           genre,nation,grade,time,showUser,
			           boxoffice,story,key;
			   private double score;
		    */
		   HotelVO bean=new HotelVO();
		   try
		   {
			   // 미리 생성된 Connection의 메모리 주소 얻기
			   conn=dm.getConnection();
			   // SQL 문장 전송
			   String sql="SELECT no,poster,title,star,grade,addr,category,content "
					     +"FROM hotel_detail "
					     +"WHERE no=?";
			   ps=conn.prepareStatement(sql);
			   // ?에 값을 채운다 
			   ps.setInt(1, no);
			   // 실행한후 결과값 요청
			   ResultSet rs=ps.executeQuery();
			   rs.next(); // 커서를 데이터가 출력한 위치에 지정 
			   bean.setNo(rs.getInt(1));
			   bean.setPoster(rs.getString(2));
			   bean.setTitle(rs.getString(3));
			   bean.setStar(rs.getString(4));
			   bean.setGrade(rs.getString(5));
			   bean.setAddr(rs.getString(6));
			   bean.setCategory(rs.getString(7));
			   bean.setContent(rs.getString(8));
			  
			   rs.close();
		   }catch(Exception ex)
		   {
			   // 오류 처리 
			   ex.printStackTrace();
		   }
		   finally
		   {
			   // 오라클수행이 끝나면 반환해라 
			   dm.disConnection(conn, ps);
		   }
		   return bean;
	   }
	
	public List<HotelVO> HotelData(int index)
	{
		List<HotelVO> list=new ArrayList<HotelVO>();
		try
		{
			conn=dm.getConnection();
			int start=0;
			int end=0;
			if(index==1)
			{
				start=1;
				end=62;
			}
			else if(index==2)
			{
				start=63;
				end=79;
			}
			else if(index==3)
			{
				start=80;
				end=104;
			}
			String sql="SELECT * FROM hotel_detail "
					  +"WHERE no BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				HotelVO vo=new HotelVO();
				vo.setNo(rs.getInt(1));
				vo.setCno(rs.getInt(2));
				vo.setTitle(rs.getString(3));
				vo.setPoster(rs.getString(4));
				vo.setStar(rs.getString(5));
				vo.setGrade(rs.getString(6));
				vo.setAddr(rs.getString(7));
				vo.setContent(rs.getString(8));
				vo.setLink(rs.getString(9));
				vo.setCategory(rs.getString(10));
				
				list.add(vo);
			}
			rs.close();
			
		}catch(Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			dm.disConnection(conn, ps);
		}
		return list;
	}
}
