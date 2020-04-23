<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
              <%@ page import="java.sql.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>house registration</title>
<style>
h1{
color:red;
}
h2{
color:green;
}
</style>
</head>
<body>

<%
String cid=request.getParameter("cid");
int icid = Integer.parseInt(cid);
String hid=request.getParameter("hid");
int ihid = Integer.parseInt(hid);



String ch=request.getParameter("ch");
int ich = Integer.parseInt(ch);

String duration=request.getParameter("duration");
int iduration = Integer.parseInt(duration);

String price=request.getParameter("price");
int iprice = Integer.parseInt(price);



String purchase_date=request.getParameter("purchase_date");

try{
	//Creating the connection 
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);

	//Statement myst=mycon.createStatement();
	PreparedStatement ps=mycon.prepareStatement("insert into customer_trans values(?,?,?,?,?,?)");
	
	ps.setInt(1,icid);
	ps.setInt(2,ihid);
	ps.setInt(3,ich);
	ps.setInt(4,iduration);

	ps.setInt(5,iprice);
	
	ps.setString(6,purchase_date);

	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<h2>you sucessfully registration a house in database</h2>
		  
		<% 
		out.println("<h2>you sucessfully registration a house in database</h1>");
		//String site = new String("_main.jsp?uname="+aid+"");
		  response.sendRedirect("cust_main.jsp");
		


		
	}
	else
	{
		out.println("<h1>registration of house in database fail</h1>");
	}
}
catch(Exception ex) 
{ 
	out.println(ex); 
}


%>




</body>
</html>