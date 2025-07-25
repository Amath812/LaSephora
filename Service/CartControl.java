package control;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.CartModel;

public class CartControl {
		
	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert data function
	public static boolean insertdata (String id, String name, String color, String size, String quantity, String price) {
		
		boolean isSuccess = false;
		try {
			//DB connection call
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//sql query
			String sql = "insert into orders (id, name, color, size, quantity, price)values(0,'"+name+"','"+color+"','"+size+"','"+quantity+"','"+price+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//GetById
	public static List<CartModel> getByid(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <CartModel> cart = new ArrayList<>();
		
		try {
			//DBconnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from orders where id = '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String color = rs.getString(3);
				String size = rs.getString(4);
				String quantity = rs.getString(5);
				String price = rs.getString(6);
				
				CartModel ct = new CartModel(id,name,color,size,quantity,price);
				cart.add(ct);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return cart;
	}
	
	//GetAll Data
	public static List<CartModel> getAllCart(){
		ArrayList <CartModel> carts = new ArrayList<>();
		try {
			//DBconnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from orders";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String color = rs.getString(3);
				String size = rs.getString(4);
				String quantity = rs.getString(5);
				String price = rs.getString(6);
				
				CartModel ct = new CartModel(id,name,color,size,quantity,price);
				carts.add(ct);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return carts;
	}
	//Update Data
	public static boolean updatedate(String id,String name, String color,String size, String quantity, String price)  {
		try {
			//DBCOnnection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "update orders set name='"+name+"',color = '"+color+"',size = '"+size+"',quantity = '"+quantity+"',price ='"+price+"'"
					+ "where id = '"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	//Delete Data
	public static boolean deletedata(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DBconnection
			con=DBconnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from orders where id = '"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
