<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@ page import="java.sql.*" %>  
      
      
<!DOCTYPE html>
<html>
<head>
 <style> 
 h1{
  color:green;
 
 }
 h2{
 
  color:green;
 
 }
 
 </style> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userid=request.getParameter("userid");
String pwd=request.getParameter("password");

try{
	//Creating the connection 
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);

	//Statement myst=mycon.createStatement();
	PreparedStatement ps=mycon.prepareStatement("insert into customer_login values(?,?)");
	
	ps.setString(1,userid);
	ps.setString(2,pwd);
	

	int x=ps.executeUpdate();
	if(x>0)
	{
		out.println("<h1>registration sucess</h1>");
		out.println("<br>");
		out.println("<h2>user id: </h2>"+userid);
		out.println("<br>");
		out.println("password : \n"+pwd);
		%>
		
		<h1><a href="customer.jsp">customer login</a></h1>
		
		<% 

		
	}
	else
	{
		out.println("registration fail");
	}
}
catch(Exception ex) 
{ 
	out.println(ex); 
}


%>

</body>
</html>