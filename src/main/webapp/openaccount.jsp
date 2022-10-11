<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%! //Declaration
	Connection con;
	PreparedStatement ps;
	
	public void init(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","Venky1234@");
			ps = con.prepareStatement("insert into account values(?,?,?,?)");
		}catch(Exception e){
			e.printStackTrace();
		}
	}	
	 
	
/* 
	public void destroy(){
			try{
				ps.close();
				con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		} */
		
	

	
%> 

<%  //scriptlet
	int accno = Integer.parseInt(request.getParameter("accno"));
	String lastName = request.getParameter("lastName");
	String firstName = request.getParameter("firstName");
	int bal = Integer.parseInt(request.getParameter("bal"));
	
	ps.setInt(1, accno);
	ps.setString(2,lastName);
	ps.setString(3, firstName);
	ps.setInt(4, bal);

	ps.executeUpdate();
%>   

<%@ include file="openaccount.html" %>




    
    
    
    


    