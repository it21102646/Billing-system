package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import DBConnection.DBConnect;
import Model.Income;

public class IncomeDAO {

	private static Connection conn = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	private static boolean success = false;

	public static List<Income> display() {

		ArrayList<Income> income = new ArrayList<>();

		try {
			conn = DBConnect.getConection();
			statement = conn.createStatement();
			String sql = "select * from income";
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				int id = resultSet.getInt(1);
				String invoiceId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String discount = resultSet.getString(4);
				float total = resultSet.getFloat(5);

				Income inc = new Income(id, invoiceId, name, discount, total);

				income.add(inc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return income;
	}

	public static List<Income> displaySelected(String invId) {

		ArrayList<Income> income = new ArrayList<>();

		try {
			conn = DBConnect.getConection();
			statement = conn.createStatement();
			String sql = "select * from income WHERE invoiceId = '" + invId;
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {

				int id = resultSet.getInt(1);
				String invoiceId = resultSet.getString(2);
				String name = resultSet.getString(3);
				String discount = resultSet.getString(4);
				float total = resultSet.getFloat(5);
			

				Income inc = new Income(id, invoiceId, name, discount, total);

				income.add(inc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return income;
	}

	public static boolean insertIncome(String invoiceId, String  name, String discount, float total) {

		try {
			conn = DBConnect.getConection();
			statement = conn.createStatement();

			String sql = "insert into income values (0, '" + invoiceId+ "', '" + name + "', '" + discount + "', '"
					+ total + "')";

			int resultSet = statement.executeUpdate(sql);

			if (resultSet > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return success;
	}

	public static boolean updateIncome(int id, String invoiceId, String name, String discount, float total) {

		try {
			conn = DBConnect.getConection();
			statement = conn.createStatement();

			String sql = "update income set invoiceId='" + invoiceId + "', name='" + name + "', discount = '" + discount
					+ "' , total = '" + total + "' where id = '" + id + "'";

			int resultSet = statement.executeUpdate(sql);

			if (resultSet > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return success;

	}

	public static boolean deleteIncome(int id) {

		try {
			conn = DBConnect.getConection();
			statement = conn.createStatement();

			String sql = "delete from income where id = '" + id + "' ";

			int resultSet = statement.executeUpdate(sql);

			if (resultSet > 0) {
				success = true;
			} else {
				success = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return success;
	}

}
