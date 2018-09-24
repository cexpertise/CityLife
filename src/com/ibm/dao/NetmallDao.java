package com.ibm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ibm.model.RegModel;

public class NetmallDao {

	public static String username="root";
	public static String password="ramjasschool";
	public static String drivername="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/mydb";	
	
	static Connection con=null;
	static PreparedStatement ps=null;
	ResultSet rs;
	
	static
	{
		try
		
		{
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,password);
			System.out.println("Connection Successful");
			
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
	public String InsertUser(String sql,RegModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			ps.setString(2,obj.getPwd());
			ps.setString(3,obj.getEmail());
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else{
				return "fail";
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
		
		
	}
	public String validateUser(String sql,RegModel obj)
	{

	try{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getPwd());
		
		rs=ps.executeQuery();
		
		if(rs.next())
		{
			return "success";
			
		}
		else
		{
			return "fail";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		}

	}
	catch(Exception e)
	{
		e.printStackTrace();
		return "";

	}}
	public String validateAdmin(String sql,RegModel obj)
	{

	try{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getPwd());
		
		rs=ps.executeQuery();
		
		if(rs.next())
		{
			return "success";
			
		}
		else
		{
			return "fail";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		}
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	
	
	
	
	return "";
	}
	public String UpdateProfilePic(String sql,String picname,String email)
	{
		
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,picname);
			ps.setString(2,email);
			int i=ps.executeUpdate();
			System.out.println(i);
			System.out.println(picname+""+email+""+i);
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
		
	}

	
	
	
 public ResultSet getUserPic(String sql,String email)
	{

		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
 public ResultSet getAllUsers()
 {

 	try
 	{
 		ps=con.prepareStatement("select * from register");
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }

 public ResultSet getUsersbyEmail(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("select * from register where email=?");
 		ps.setString(1,email);
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getHotelUsersbyEmail(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("select * from bookingdetails where email=?");
 		ps.setString(1,email);
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getRestaurantUsersbyEmail(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("select * from hibernate where email=?");
 		ps.setString(1,email);
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getCabUsersbyEmail(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("select * from cabbookingdetails where email=?");
 		ps.setString(1,email);
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getPropertiesbyEmail(String email)
 {

	 	try
	 	{
	 		ps=con.prepareStatement("select * from propid where email=?");
	 		ps.setString(1,email);
	 		rs=ps.executeQuery();
	 	}
	 	catch(Exception e)
	 	{
	 		e.printStackTrace();
	 	}
	 	
	 	return rs;
	 }
 
 public ResultSet getAllHotelUsers()
 {

 	try
 	{
 		ps=con.prepareStatement("select * from bookingdetails");
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getAllRestaurantUsers()
 {

 	try
 	{
 		ps=con.prepareStatement("select * from hibernate");
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }
 public ResultSet getAllCabUsers()
 {

 	try
 	{
 		ps=con.prepareStatement("select * from cabbookingdetails");
 		rs=ps.executeQuery();
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return rs;
 }


 public String DeleteUsers(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("delete from register where email=?");
 		ps.setString(1, email);
 		int i=ps.executeUpdate();
 		if(i==1)
 		{
 			System.out.println("user "+email+" has been deleted successfully");
 			return "success";
 		}
 		else
 		{
 			return "fail";
 		}
 		
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return "";
 }
 public String DeleteHotelUsers(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("delete from bookingdetails where email=?");
 		ps.setString(1, email);
 		int i=ps.executeUpdate();
 		if(i==1)
 		{
 			System.out.println("user "+email+" has been deleted successfully");
 			return "success";
 		}
 		else
 		{
 			return "fail";
 		}
 		
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return "";
 }
 public String DeleteRestaurantUsers(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("delete from hibernate where email=?");
 		ps.setString(1, email);
 		int i=ps.executeUpdate();
 		if(i==1)
 		{
 			System.out.println("user "+email+" has been deleted successfully");
 			return "success";
 		}
 		else
 		{
 			return "fail";
 		}
 		
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return "";
 }
 public String DeleteCabUsers(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("delete from cabbookingdetails where email=?");
 		ps.setString(1, email);
 		int i=ps.executeUpdate();
 		if(i==1)
 		{
 			System.out.println("user "+email+" has been deleted successfully");
 			return "success";
 		}
 		else
 		{
 			return "fail";
 		}
 		
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return "";
 }
 public String DeleteProperty(String email)
 {

 	try
 	{
 		ps=con.prepareStatement("delete from propadd where email=?");
 		ps.setString(1, email);
 		int i=ps.executeUpdate();
 		if(i==1)
 		{
 			System.out.println("user "+email+" has been deleted successfully");
 			return "success";
 		}
 		else
 		{
 			return "fail";
 		}
 		
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 	
 	return "";
 }

 
 public String InsertHotelUser(String sql,RegModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getFirstName());
			ps.setString(2,obj.getLastName());
			ps.setString(3, obj.getHotelName());
			ps.setString(4,obj.getNoofGuests());
			ps.setString(5,obj.getMobileNo());
			ps.setString(6,obj.getCheckintime());
			ps.setString(7,obj.getCheckindate());
			ps.setString(8,obj.getEmail());
			ps.setString(9,obj.getAmount());
			System.out.println(obj.getAmount());
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				return "success";
			}
			else{
				return "fail";
				
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
	}
	
 public String InsertFeedback(String sql,RegModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getEmail());
			ps.setString(2,obj.getName());
			ps.setString(3,obj.getMsg());
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				return "success";
			}
			else{
				return "fail";
				
			}
		}
		catch(Exception e)
		{
		
			e.printStackTrace();
			return "";

		}
		
			}
	public String InsertPaymentDetails(String sql,RegModel obj)
		{	
			try {
			
				ps=con.prepareStatement(sql);
				ps.setString(1,obj.getCardnumber());
				ps.setString(2,obj.getSecure());
				ps.setString(3,obj.getNamecard());
				ps.setString(4,obj.getAmount());
				
				int i=ps.executeUpdate();
				System.out.println("payment details:"+obj.getAmount());
				if(i==1)
				{
					return "Success";
				}
				else
				{
					return "Fail";
				}
				
				
			} 
			
			
			
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return "";
			
		}
	
		public ResultSet GetAmount(String email)
		{
			
			try {
			
				ps=con.prepareStatement("select * from bookingdetails where email=?");
				ps.setString(1,email);
				rs=ps.executeQuery();
							
			} 
			
			
			
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return rs;
			
		}
		
		public ResultSet GetTransactionID(String cardnumber)
		{
			
			try {
			
				ps=con.prepareStatement("select * from paymentdetails where cardnumber=?");
				ps.setString(1,cardnumber);
				rs=ps.executeQuery();
							
			} 
			
			
			
			
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return rs;
			
		}

		public String CancelHotelBooking(String sql,RegModel obj)
		{
			try{
				ps=con.prepareStatement(sql);
				ps.setString(1,obj.getEmail());
				
				int i=ps.executeUpdate();
				
				if(i>=1)
				{
					return "Success";
				}
				else{
					return "Fail";
				}
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
				return "";
			}
			
		}
		


public String UpdateUserByEmail(String sql,RegModel obj)
{
	
	
	try
	{
		
		ps=con.prepareStatement(sql);
		ps.setString(1, obj.getUname());
		ps.setString(2, obj.getPwd());
		ps.setString(3, obj.getEmail());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
		   return "success"	;
		}
		else
		{
			return "fail";
		}
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return "";
}
public String UpdateHotelUserByEmail(String sql,RegModel obj)
{
	
	
	try
	{
		
		ps=con.prepareStatement(sql);
		ps.setString(1, obj.getUname());
		ps.setString(2, obj.getPwd());
		ps.setString(3, obj.getEmail());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
		   return "success"	;
		}
		else
		{
			return "fail";
		}
		
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return "";
}
	
		
 
	public static void main(String [] args)
	{
	}
	}


