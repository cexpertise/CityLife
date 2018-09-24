package com.ibm.model;


import org.hibernate.Session;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;  
public class HibDao {
	
	public static int register(HibModel h)
	
	{  
		 int i=0;  
		 
		 
		 Session session=new Configuration().  
		  configure().buildSessionFactory().openSession();  
		          
		  Transaction t=session.beginTransaction();  
		  t.begin();  
		                  
		  i=(Integer)session.save(h);  
		                  
		  t.commit();  
		  session.close();  
		    
		  return i;  
		 }   
			
			static void main(String[] args)
		 {
	

	}

}
