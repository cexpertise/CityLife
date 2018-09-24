package com.ibm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ibm.model.RegModel;
import com.ibm.model.PropModel;

public class CityLifeDao {
	public static String username="root";
	public static String password="ramjasschool";
	public static String drivername="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/mydb";	
	
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
			ps.setString(1, obj.getUname());
			ps.setString(2, obj.getPwd());
			ps.setString(3, obj.getEmail());
			ps.setString(4, obj.getDate());
			ps.setString(5, obj.getGender());
			ps.setString(6, obj.getCity());
			ps.setString(7, obj.getMsg1());


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
	
	public String validateUser(String sql,RegModel obj)
	{
		try {
			
			ps=con.prepareStatement(sql);
			ps.setString(1, obj.getEmail());
			ps.setString(2, obj.getPwd());
			
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
		}
		
	}
	
	
	public String UpdateProfilePic(String sql,String picname,String email) {
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, picname);
			ps.setString(2, email);
			
			int i=ps.executeUpdate();
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
	
	public ResultSet getUserPic(String sql, String email) {
		try {
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

//******Properties methods********



public String AddProperty(String sql,PropModel obj)
{		
	try
	{		
		ps=con.prepareStatement(sql);
		ps.setString(1, obj.getHno());
		ps.setString(2, obj.getLocality());
		ps.setString(3, obj.getCity());
		ps.setString(4, obj.getCountry());
		ps.setString(5, obj.getPin());
		ps.setString(6, obj.getBuilder());
		ps.setString(7, obj.getPtype());
		ps.setString(8, obj.getFeatures());
		ps.setString(9, obj.getOwner());
		ps.setString(10, obj.getArea());
		ps.setString(11, obj.getPrice());
		ps.setString(12, obj.getRentsell());
		ps.setString(13, obj.getStatus());
		ps.setString(14, obj.getUemail());
		ps.setString(15, obj.getBhk());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
		   return "Success"	;
		}
		else
		{
			return "Fail";
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return "";
}

//******************************************New Method******************************************

public String BookProperty(String sql,PropModel obj)
{		
	try
	{		
		ps=con.prepareStatement(sql);
		ps.setString(1, obj.getHno());
		ps.setString(2, obj.getLocality());
		ps.setString(3, obj.getFeatures());
		ps.setString(4, obj.getPtype());
		ps.setString(5, obj.getPrice());
		ps.setString(6, obj.getRentsell());
		ps.setString(7, obj.getBhk());
		ps.setString(8, obj.getStatus());
		ps.setString(9, obj.getBookuemail());
		ps.setString(10, obj.getBookuname());
		ps.setString(11, obj.getBookucontact());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
		   return "Success"	;
		}
		else
		{
			return "Fail";
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return "";
}

//*******************************************New Method End*****************************************


public String UpdatePropertyPic(String sql,String picname,String email) {
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, picname);
			ps.setString(2, email);
			
			int i=ps.executeUpdate();
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
	
	public ResultSet getPropPic(String sql, String email) {
		try {
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
	

public ResultSet getProp(String hometype,String prefloc, String bhk)
{

	try
	{
		ps=con.prepareStatement("select * from propadd where ptype=? and city=? and bhk=?");
		ps.setString(1, hometype);
		ps.setString(2, prefloc);
		ps.setString(3, bhk);
		rs=ps.executeQuery();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return rs;
}



public ResultSet getPropDetailsBook()
{

	try
	{
		ps=con.prepareStatement("select * from bookprop ");
		rs=ps.executeQuery();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return rs;
}


//***********-------Contact us method
	
	public String ContactForm(String sql,RegModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1, obj.getCuemail());
			ps.setString(2, obj.getCuname());
			ps.setString(3, obj.getCumsg());

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



		}
