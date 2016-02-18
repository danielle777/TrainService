package com.epam.lab.project.db.connection;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnection {
	static InitialContext initContext = null;
	static DataSource ds = null;
	static Connection conn;

	private DBConnection() {

	}

	public static synchronized  Connection getConnection() {

		if (ds == null) {
			try {
				initContext = new InitialContext();
				ds = (DataSource) initContext
						.lookup("java:comp/env/jdbc/TrainService");

			} catch (NamingException e1) {
				e1.printStackTrace();
				System.out.println("Can't create DataSource");
			}

		}

		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Can't create Connection");
		}
		return conn;
	}

}
