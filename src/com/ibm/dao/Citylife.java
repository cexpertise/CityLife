package com.ibm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ibm.model.CabModel;
import com.ibm.model.RegModel;

public class Citylife {

	static String url="jdbc:mysql://localhost:3306/mydb";
	static String drivername="com.mysql.jdbc.Driver";
	static String username="root";
	static String password="ramjasschool";
	static Connection con=null;
	static PreparedStatement ps=null;
	ResultSet rs=null;


	static
	{
		
		try
		{
			
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,password);
			System.out.println("Connection successfull");
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
			ps.setString(1, obj.getFname());
			ps.setString(2, obj.getLname());
			ps.setString(3, obj.getUname());
			ps.setString(4, obj.getPwd());
			ps.setString(5, obj.getDate());
			ps.setString(6, obj.getNumber());
			ps.setString(7, obj.getEmail());
			int i=ps.executeUpdate();
			if(i==1)
			{
			   return "Success"	;
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

		

	public String validateUser(String sql,RegModel obj)
	{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getPwd());
		rs=ps.executeQuery();
		if(rs.next())
	{
			return "Success";
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
			ps.setString(1, picname);
			ps.setString(2, email);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "Success";
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
	
	public ResultSet getUsersByEmail(String email)
	{

		try
		{
			ps=con.prepareStatement("select * from register where email=?");
			ps.setString(1, email);
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
				return "Success";
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
	
	
	public String InsertUsers(String sql,RegModel obj)
	{
		
		
		try
		{
			
			ps=con.prepareStatement(sql);
						
			ps.setString(1, obj.getCardnumber());
			ps.setString(2, obj.getSecure());
			ps.setString(3, obj.getNamecard());
			int i=ps.executeUpdate();
			if(i==1)
			{
			   return "Success"	;
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
	
	public String InsertCabUser(String sql,CabModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getFirstName());
			ps.setString(2,obj.getLastName());
			ps.setString(3,obj.getCabName());
			ps.setString(4,obj.getNoofMembers());
			ps.setString(5,obj.getMobileNo());
			ps.setString(6,obj.getPick());
			ps.setString(7,obj.getDropoff());
			ps.setString(8,obj.getEmail());
			ps.setString(9,obj.getPickuptime());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				return "Success";
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

	


		public static void main(String[] args) {
			// TODO Auto-generated method stub

		}

	}


