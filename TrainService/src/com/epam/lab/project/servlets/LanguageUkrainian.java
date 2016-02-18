package com.epam.lab.project.servlets;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LanguageUkrain
 */

public class LanguageUkrainian extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LanguageUkrainian() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession(true);
		s.setAttribute("login", new Locale("ua","UA"));
		
		Cookie cookiel = new Cookie("localLengeuge","ua");
		Cookie cookiec = new Cookie("localCountry","UA");
		/*cookiec.setMaxAge(24*60*60);
		cookiel.setMaxAge(24*60*60);*/
		response.addCookie(cookiel);
		response.addCookie(cookiec);
		response.sendRedirect(request.getHeader("Referer"));
		//request.getRequestDispatcher("pages/index.jsp").forward(request, response);
	}

	
}
