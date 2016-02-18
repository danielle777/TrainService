package com.epam.lab.project.db.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.epam.lab.project.db.connection.DBConnection;
import com.epam.lab.project.db.model.User;
import com.epam.lab.project.db.dao.UserDAO;

public class UserService {
	
	public static List<User> getAllUsers() {
		Connection connection = DBConnection.getConnection();
		List<User> users = UserDAO.getAllUsers(connection);

		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	}
	
	public static User isRegistered(String username, String password) {
		Connection connection = DBConnection.getConnection();
		User user = UserDAO.isRegistered(connection, username, password);

		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	public static boolean checkUsedLogin(String username) {
		Connection connection = DBConnection.getConnection();
		boolean result = UserDAO.checkUsedLogin(connection, username);

		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	

	public static void addNewUser(User user) {

		Connection connection = DBConnection.getConnection();
		UserDAO.addNewUser(user, connection);

		//closeConnection(connection);
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
