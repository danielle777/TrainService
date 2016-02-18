package com.epam.lab.project.servlets;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.epam.lab.project.db.model.User;
import com.epam.lab.project.db.service.UserService;
import com.epam.lab.project.hash.HashHelper;



public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(SignInServlet.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("pages/signIn.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("login");
        String password = request.getParameter("pass");
        String hash = null;
        try {
			hash = HashHelper.getHash(password);
		} catch (NoSuchAlgorithmException e) {
			request.setAttribute("err","Something wrong with password");
			LOG.error("Something wrong with password",e);
			request.getRequestDispatcher("pages/signIn.jsp").forward(request, response);
		}

        User currentUser = UserService.isRegistered(username, hash);
        if (currentUser != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("currentUser", currentUser);
            switch (currentUser.getRole()){
                case PASSENGER:
                	LOG.info("Passenger with login \"" + currentUser.getLogin() + 
                		"\" sign in.");
                    response.sendRedirect("/TrainService/UserPage");

                    break;
                case ADMIN:
                    LOG.info("Admin with login \"" + currentUser.getLogin() + 
                    		"\" sign in.");
                	response.sendRedirect("/TrainService/UserPage");
                    break;
            }
        } else {
        	LOG.error("Incorrect username or password");
            request.setAttribute("err","Incorrect username or password");
            request.getRequestDispatcher("pages/signIn.jsp").forward(request, response);
        }
        
        
        System.out.println("Some changes");
    }
}
