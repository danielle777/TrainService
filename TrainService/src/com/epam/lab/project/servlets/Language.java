package com.epam.lab.project.servlets;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.epam.lab.project.i18n.UTF8Control;


/**
 * Servlet implementation class Language
 */

public class Language extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Language() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String language = request.getParameter("language");
		String country = request.getParameter("country");
		Cookie cookieLanguage = new Cookie("localLanguage", language);
		Cookie cookieCountry = new Cookie("localCountry", country);
		response.addCookie(cookieLanguage);
		response.addCookie(cookieCountry);
		Locale loc = new Locale(language, country);
		ResourceBundle res = ResourceBundle
				.getBundle("i18n", loc, new UTF8Control());
		session.setAttribute("bundle", res);
		response.sendRedirect(request.getHeader("Referer"));
		
	}

	
	
}
