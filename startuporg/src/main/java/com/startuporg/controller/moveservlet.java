package com.startuporg.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class moveservlet
 */
public class moveservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = null;
	    if(request != null) {
	        session = request.getSession();
	    }
		session.setAttribute("msg", "");
	    RequestDispatcher rs=request.getRequestDispatcher("Home.jsp");
	    rs.forward(request, response);
	}

}
