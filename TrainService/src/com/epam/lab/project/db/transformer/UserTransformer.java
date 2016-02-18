package com.epam.lab.project.db.transformer;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.epam.lab.project.db.model.User;


public class UserTransformer {
	
	public static User getUser(ResultSet rs) {

		User user = null;

		try {
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setLogin(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setFirstName(rs.getString(4));
				user.setLastName(rs.getString(5));
				user.setPasportData(rs.getString(6));
				user.setPhone(rs.getString(7));
				user.setRole((rs.getString(8)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	
	public static List<User> getAllUsers(ResultSet rs) {
		List<User> list = new ArrayList<User>();
		User user = null;

		try {
			
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setLogin(rs.getString(2));
				user.setPassword(rs.getString(3));
				user.setFirstName(rs.getString(4));
				user.setLastName(rs.getString(5));
				user.setPasportData(rs.getString(6));
				user.setPhone(rs.getString(7));
				user.setRole((rs.getString(8)));
			
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Problems with transform ResultSet User");
		}
		return list;

	}

}
