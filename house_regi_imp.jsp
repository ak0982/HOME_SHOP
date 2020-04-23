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
String hid=request.getParameter("hid");
int ihid = Integer.parseInt(hid);

String hname=request.getParameter("hname");

String selling_price=request.getParameter("selling_price");
int iselling_price = Integer.parseInt(selling_price);

String rent_per_month=request.getParameter("rent_per_month");
int irent_per_month = Integer.parseInt(rent_per_month);

String address=request.getParameter("address");

String no_of_bedroom=request.getParameter("no_of_bedroom");
int ino_of_bedroom = Integer.parseInt(no_of_bedroom);

String size=request.getParameter("size");
int isize = Integer.parseInt(size);

String aid=request.getParameter("aid");
int iaid = Integer.parseInt(aid);

String ch=request.getParameter("ch");
int ich = Integer.parseInt(ch);

String status=request.getParameter("status");

String year=request.getParameter("year");
int iyear = Integer.parseInt(year);

String entry_date=request.getParameter("entry_date");

try{
	//Creating the connection 
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);

	//Statement myst=mycon.createStatement();
	PreparedStatement ps=mycon.prepareStatement("insert into house values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	
	ps.setInt(1,ihid);
	ps.setString(2,hname);
	ps.setInt(3,iselling_price);
	ps.setInt(4,irent_per_month);
	ps.setString(5,address);

	ps.setInt(6,ino_of_bedroom);
	ps.setInt(7,isize);
	ps.setInt(8,iaid);
	ps.setInt(9,ich);
	ps.setString(10,status);

	ps.setInt(11,iyear);
	ps.setString(12,entry_date);
	
	ps.setString(13,null);
	ps.setInt(14,0);


	int x=ps.executeUpdate();
	if(x>0)
	{
		%>
		<h2>you sucessfully registration a house in database</h2>
		  
		<% 
		out.println("<h2>you sucessfully registration a house in database</h1>");
		String site = new String("agent_main.jsp?uname="+aid+"");
		  response.sendRedirect(site);
		


		
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