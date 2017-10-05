package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SrvTwo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		out.println("<h1>Welcome to SrvTwo</h1>");
		out.println("<h2>First Line SrvTwo</h2>");
		out.println("<h2>Name is "+request.getAttribute("name"));
	

		RequestDispatcher rd=request.getRequestDispatcher("SrvThr");
		rd.include(request, response);
		
		out.println("<h2>Last Line SrvTwo</h2>");
		
		
	}

}
