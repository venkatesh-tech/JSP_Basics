<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%! 
	Connection con;
	PreparedStatement ps;
	
	public void init(){
		try{
			DriverManager.getConnection("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","Venky1234@");
			ps = con.prepareStatement("insert into account values(?,?,?,?)");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void destroy(){
		try{
			ps.close();
			con.close();
		}catch(Exception e){
			
		}
	}
%>    

    
    
    
    


    