<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
        <%@ page import = "java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.* " %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>agent registration</title>
<style type="text/css">
h2{
color:green;
}

</style>
</head>
<body>

<%

String aid = request.getParameter("aid");
int iaid = Integer.parseInt(aid);
String aname = request.getParameter("aname");
String year = request.getParameter("year");
int iyear = Integer.parseInt(year);
String password = request.getParameter("password");
try {
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);
	
	PreparedStatement pstmt = mycon.prepareStatement("insert into agent values(?,?,?,?,?,?)");
	pstmt.setInt(1,iaid);
	pstmt.setString(2,aname);
	pstmt.setString(3,password);

	pstmt.setInt(4,0);

	pstmt.setInt(5,0);

	pstmt.setInt(6,iyear);

	
	int x=pstmt.executeUpdate();

	if(x>0)
	{
		%>
		<h2>you sucessfully registration a agent in database</h2>
		  
		<% 
		//out.println("<h2>you sucessfully registration a house in database</h1>");
		//String site = new String("agent_main.jsp?uname="+aid+"");
		  //response.sendRedirect(site);
		


		
	}
	else
	{
		out.println("<h1>registration of house in database fail</h1>");
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