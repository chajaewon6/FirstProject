package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;


@Controller
public class tripModel {
  @RequestMapping("trip/trip_detail.do")
  public String trip_detail(HttpServletRequest request,HttpServletResponse response)
	{
	 	String cno=request.getParameter("cno");
	 	// DAO 연결
	 	
		request.setAttribute("main_jsp", "../trip/trip_detail.jsp"); // ,뒤가 바껴야하는 jsp임
		return "../main/main.jsp"; // 화면만 바꿔줌
	}
  
}
