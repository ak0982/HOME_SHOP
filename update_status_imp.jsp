<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
h1{
color:green;
}
h2{
color:red;
}
</style>
<title>UPDATE STATUS</title>
</head>
<body>
<%

String hid = request.getParameter("hid");
int ihid = Integer.parseInt(hid);

try {
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);
	
	PreparedStatement pstmt = mycon.prepareStatement("update house set status='AVAILABLE' where hid=?");
	pstmt.setInt(1,ihid);
	
	
	int x=pstmt.executeUpdate();

	if(x>0)
	{
		%>
		<h2>you sucessfully update a house  from database</h2></br>
		 <h1><a href="dba_main.jsp">dba</a></h1>
		<% 
		//out.println("<h2>you sucessfully registration a house in database</h1>");
		//String site = new String("agent_main.jsp?uname="+aid+"");
		  //response.sendRedirect(site);
		


		
	}
	else
	{
		out.println("<h1>YOU ARE NOT ABLE TO UPDATE HOUSE</h1>");
		out.println("<h1><a href='update_status.jsp'>update</a></h1>");

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