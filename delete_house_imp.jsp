<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE HOUSE</title>
<style>
h1{
color:green;
}
h2{
color:red;
}
</style>
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
	
	PreparedStatement pstmt = mycon.prepareStatement("delete from house where hid=?");
	pstmt.setInt(1,ihid);
	
	
	int x=pstmt.executeUpdate();

	if(x>0)
	{
		%>
		<h2>you sucessfully delete a house  from database</h2></br>
		 <h1><a href="dba_main.jsp">dba</a></h1>
		<% 
		//out.println("<h2>you sucessfully registration a house in database</h1>");
		//String site = new String("agent_main.jsp?uname="+aid+"");
		  //response.sendRedirect(site);
		


		
	}
	else
	{
		out.println("<h1>YOU ARE NOT ABLE TO DELETE HOUSE</h1>");
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