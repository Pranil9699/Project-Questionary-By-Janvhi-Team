package com.startuporg.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.startuporg.model.*;
import com.startuporg.service.service;

/**
 * Servlet implementation class searchquestion
 */
public class searchquestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String processarea = request.getParameter("processarea");
		String questioncategory = request.getParameter("questioncategory");
		HttpSession session = request.getSession();
		session.removeAttribute("msg");
		try {
			session.removeAttribute("startupAudits");
			session.removeAttribute("startupAuditsview");
			List<StartupAudit> stAudits = service.getall(processarea, questioncategory);
			session.setAttribute("startupAuditsview", stAudits);
			session.removeAttribute("processarea");
			session.removeAttribute("questioncategory");
			RequestDispatcher rs = request.getRequestDispatcher("view.jsp");
			rs.forward(request, response);

		} catch (Exception ex) {
			ex.printStackTrace();
			session.setAttribute("msg", "Couldn't Process, Pleased Try Again");
			RequestDispatcher rs = request.getRequestDispatcher("view.jsp");
			rs.forward(request, response);
		}
	}

}
