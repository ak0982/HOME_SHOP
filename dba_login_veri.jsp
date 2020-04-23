<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*" %>
        <%@ page import = "java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.* " %>
        
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login verufication</title>
</head>
<body>

<%

String uname = request.getParameter("username");
int agentid = Integer.parseInt(uname);
String agent_password = request.getParameter("password");
try {
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);
	
  Statement stmt = mycon.createStatement();
  ResultSet rs = stmt.executeQuery("select aid,password from agent where aid="+agentid+" and password='"+agent_password+"'");
  
  if(rs.next()) {
	  //out.println("correct id and password");
	  //response.setAttribute("uname",uname);
	 // request.setAttribute("uname",uname);
	 // request.setAttribute("apass",agent_password);

	 
	 session = request.getSession();
                        session.setAttribute("uname",uname);
	  //String site = new String("dba_main.jsp?uname="+uname+"");
	  response.sendRedirect("dba_main.jsp");
	 
	 
	  
	  
    
  }else {
    out.println("Wrong id and password");
  }
  
  
  
} catch (ClassNotFoundException e) {
  // TODO Auto-generated catch block
  e.printStackTrace();
} catch (SQLException e) {
  // TODO Auto-generated catch block
  e.printStackTrace();
}




%>




</body>
</html>