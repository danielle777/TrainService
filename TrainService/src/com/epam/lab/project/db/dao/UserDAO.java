package com.epam.lab.project.db.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.epam.lab.project.db.model.User;
import com.epam.lab.project.db.transformer.UserTransformer;


public class UserDAO {
	
	
	public static final String SQL_ADD_NEW_USER = "Insert into user (login, password, fname, lname, passport_data"
			+ ", phone, role ) value(?,?,?,?,?,?,?)";

	public static final String SQL_GET_ALL_USERS = "SELECT  * FROM user;";
	
	public static final String SQL_GET_USER_BY_LOGIN_AND_PASSWORD = "SELECT  * FROM user WHERE login=? AND password=?;";	
	public static final String SQL_GET_USER_BY_LOGIN = "SELECT  * FROM user WHERE login=?;";	
	
	


	public static void addNewUser(User user, Connection connection) {		
		
		PreparedStatement stmt;

		try {
			stmt = connection.prepareStatement(SQL_ADD_NEW_USER);

			stmt.setString(1, user.getLogin());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getFirstName());
			stmt.setString(4, user.getLastName());
			stmt.setString(5, user.getPasportData());
			stmt.setString(6, user.getPhone());
			stmt.setString(7, user.getRole().getValue());
			
			stmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
	
	public static List<User> getAllUsers(Connection connection) {
		
		ResultSet rs = null;
		List<User> users = null;
		try {

			PreparedStatement st = connection
					.prepareStatement(SQL_GET_ALL_USERS);

			rs = st.executeQuery();
			users = UserTransformer.getAllUsers(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	public static User isRegistered(Connection connection, String username, String password) {
		
		PreparedStatement st;
		ResultSet rs = null;
		User user = null;
		try {

			st = connection.prepareStatement(SQL_GET_USER_BY_LOGIN_AND_PASSWORD);
			st.setString(1, username);
			st.setString(2, password);

			rs = st.executeQuery();
			user = UserTransformer.getUser(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public static boolean checkUsedLogin(Connection connection, String username) {
		
		PreparedStatement st;
		ResultSet rs = null;
		User user = null;
		try {

			st = connection.prepareStatement(SQL_GET_USER_BY_LOGIN);
			st.setString(1, username);

			rs = st.executeQuery();
			user = UserTransformer.getUser(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(user != null)
			return true;
		else
			return false;
	}


}
