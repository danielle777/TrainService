package com.epam.lab.project.servlets;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.epam.lab.project.db.model.User;
import com.epam.lab.project.db.service.UserService;
import com.epam.lab.project.hash.HashHelper;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(RegistrationServlet.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		User user = new User();    		
		
		user.setLogin(request.getParameter("login"));
		String hash = null;
		try {
			hash = HashHelper.getHash(request.getParameter("pass"));
		} catch (NoSuchAlgorithmException e) {
			request.setAttribute("err","Something wrong with password");
        	LOG.error("Something wrong with password", e);
			request.getRequestDispatcher("pages/registration.jsp").forward(request, response);
			e.printStackTrace();
		}
		user.setPassword(hash);
		user.setFirstName(request.getParameter("fname"));
		user.setLastName(request.getParameter("lname"));
		user.setPasportData(request.getParameter("passport_data"));
		user.setPhone(request.getParameter("phone"));
		user.setRole("passenger");
		
		
        boolean result = UserService.checkUsedLogin(user.getLogin());
        if (result == true) {
        	
            request.setAttribute("err","This login is already exist");
            LOG.warn("Login \"" + user.getLogin() + "\" is already exist");
            request.setAttribute("fname",user.getFirstName());
            request.setAttribute("lname",user.getLastName());
            request.setAttribute("passport_data",user.getPasportData());
            request.setAttribute("phone",user.getPhone());
            request.getRequestDispatcher("pages/registration.jsp").forward(request, response);
        } else { 		
    		    		
    	
    		UserService.addNewUser(user);
    		
            HttpSession session = request.getSession(true);
            session.setAttribute("currentUser", user);
        	LOG.info("User with login \"" + user.getLogin() + 
            		" sign up.");
            response.sendRedirect("/TrainService/UserPage");

        }
		
	}

}
