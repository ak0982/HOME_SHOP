<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="java.sql.*" %>
                    <%@ page import = "java.io.*,java.util.*" %>
            
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

</script>
<style type="text/css">


@import url(https://fonts.googleapis.com/css?family=Open+Sans);




/* button div */
#buttons {
  padding-top: 50px;
  position:relative;
    	display: inline-block;
  
  text-align: center;
 
}

/* start da css for da buttons */
.btn {
  border-radius: 5px;
  padding: 15px 25px;
  font-size: 22px;
  text-decoration: none;
  margin: 20px;
  color: #fff;
  position: relative;
  display: inline-block;
 
}

.btn:active {
  transform: translate(0px, 5px);
  -webkit-transform: translate(0px, 5px);
  box-shadow: 0px 1px 0px 0px;
}


.yellowb {
  background-color: #f1c40f;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.yellowb:hover {
  background-color: #FFDE29;
}

.greenb {
  background-color: green;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.greenb:hover {
  background-color: green;
}

.darkblueb {
  background-color: #8321D3;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.darkblueb:hover {
  background-color: #8321D3;
}
.pinkb {
  background-color: #4EC3FA;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.pinkb:hover {
  background-color: #4EC3FA;
}
.redb {
  background-color: red;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.redb:hover {
  background-color: red;
}
.cyanb {
  background-color: cyan;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.cyanb:hover {
  background-color: cyan;
}
.blueb {
  background-color: blue;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.blueb:hover {
  background-color: blue;
}
@charset "UTF-8";
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,700);

body {
  font-family: 'Open Sans', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #185875;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
  scroll-behavior:  smooth;
  overflow-y: scroll;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

.container tr:hover {
   background-color: #464A52;
-webkit-box-shadow: 0 6px 6px -6px #0E1119;
	   -moz-box-shadow: 0 6px 6px -6px #0E1119;
	        box-shadow: 0 6px 6px -6px #0E1119;
}

.container td:hover {
  background-color: #FFF842;
  color: #403E10;
  font-weight: bold;
  
  box-shadow: #7F7C21 -1px 1px, #7F7C21 -2px 2px, #7F7C21 -3px 3px, #7F7C21 -4px 4px, #7F7C21 -5px 5px, #7F7C21 -6px 6px;
  transform: translate3d(6px, -6px, 0);
  
  transition-delay: 0s;
	  transition-duration: 0.4s;
	  transition-property: all;
  transition-timing-function: line;
}

@media (max-width: 800px) {
.container td:nth-child(4),
.container th:nth-child(4) { display: none; }
}


</style>

<meta charset="UTF-8">
<title>welcome agent</title>
</head>
<body>

	
	<h1><span class="blue">&lt;</span>ADMIN<span class="blue">&gt;</span> <span class="yellow">HOME SHOP 20</pan></h1>
<h2>ALL HOUSE <a href="http://pablogarciafernandez.com" target="_blank">DETAIL</a></h2>

<div id="buttons">
  
  <a href="home.jsp" class="btn darkblueb">Home</a>
</div>

<div id="buttons">
  
  <a href="house_regi.jsp" class="btn yellowb">add new house</a>
</div>

<div id="buttons">
  
  <a href="add_agent.jsp" class="btn redb">add new agent</a>
</div>
<div id="buttons">
  
  <a href="modify_house.jsp" class="btn darkblueb">modify house</a>
</div>
<div id="buttons">
  
  <a href="#sale_report" class="btn pinkb">SALES REPORT</a>
</div>

<div id="buttons">
  
  <a href="#full_agent_list" class="btn cyanb">FULL DETAILS OF AGENT</a>
</div>

<div id="buttons">
  
  <a href="#full" class="btn greenb">DETAILS OF HOUSE</a>
</div>

<div id="buttons">
  
  <a href="#rent" class="btn blueb">HOUSE ON RENT</a>
</div>
<div id="buttons">
  
  <a href="dba_logout.jsp" class="btn darkblueb">logout</a>
</div>


<table class="container">
      <thead>
        <tr>
          
        

<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")==null)
{	
	
	  response.sendRedirect("dba.jsp");

	
}

String uname = (String)session.getAttribute("uname");
int userid = Integer.parseInt(uname);
//String agent_password = request.getParameter("apass");
//int userid =1;
try {
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);
	
	PreparedStatement pstmt = mycon.prepareStatement("select aid,aname,password from agent where aid=?");
	pstmt.setInt(1,userid);
	
  ResultSet rs = pstmt.executeQuery();
  
  ResultSetMetaData rsmd = rs.getMetaData();
	
 	int colomn = rsmd.getColumnCount();
 	int i;
  
 	for(i=1;i<=colomn;i++)
	{
		%>
		
		
			<th><h1><%= rsmd.getColumnName(i) %></h1></th>
		
		
	<% 
	
	}
 	%>
 	</tr>
      </thead>
      <tbody>
 	<% 
 	while(rs.next())
	{

		%>
					<tr>
		<% 
		for(i=1;i<=colomn;i++)
		{
			
			//System.out.print(rs.getString(i)+"          ");
			%>
		
			<td><%= rs.getString(i)%></td>
			

		
		<%
		}
		
		%>
		</tr>
		<%
		
	}
 	%>

	</tbody>
</table>
<h1> FULL HOUSE DETAIL</h1>
<table class="container" id="full">
      <thead>
        <tr>
        <% 

 	
 	PreparedStatement pstmt2 = mycon.prepareStatement("select * from house");
	//pstmt2.setInt(1,userid);
	
  ResultSet rs2 = pstmt2.executeQuery();
 	
 	
  ResultSetMetaData rsmd2 = rs2.getMetaData();
	
	int colomn2 = rsmd2.getColumnCount();
	int i2;

	for(i2=1;i2<=colomn2;i2++)
	{
		%>
		
		
			<th><h1><%= rsmd2.getColumnName(i2) %></h1></th>
		
		
	<% 
	
	}
	%>
	</tr>
    </thead>
    <tbody>
	<% 
	while(rs2.next())
	{

		%>
					<tr>
		<% 
		for(i2=1;i2<=colomn2;i2++)
		{
			
			//System.out.print(rs.getString(i)+"          ");
			%>
		
			<td><%= rs2.getString(i2)%></td>
			

		
		<%
		}
		
		%>
		</tr>
		<%
		
	}
 	
 	
	%>

	</tbody>
</table>
<h1> FULL AGENT DETAIL</h1>
<table class="container" id="full_agent_list">
      <thead>
        <tr>
        <% 

 	
 	PreparedStatement pstmt3 = mycon.prepareStatement("select * from agent");
	//pstmt2.setInt(1,userid);
	
  ResultSet rs3 = pstmt3.executeQuery();
 	
 	
  ResultSetMetaData rsmd3 = rs3.getMetaData();
	
	int colomn3 = rsmd3.getColumnCount();
	int i3;

	for(i3=1;i3<=colomn3;i3++)
	{
		%>
		
		
			<th><h1><%= rsmd3.getColumnName(i3) %></h1></th>
		
		
	<% 
	
	}
	%>
	</tr>
    </thead>
    <tbody>
	<% 
	while(rs3.next())
	{

		%>
					<tr>
		<% 
		for(i3=1;i3<=colomn3;i3++)
		{
			
			//System.out.print(rs.getString(i)+"          ");
			%>
		
			<td><%= rs3.getString(i3)%></td>
			

		
		<%
		}
		
		%>
		</tr>
		<%
		
	}
	%>

	</tbody>
</table>
<h1> HOUSE ON RENT</h1>
<table class="container" id="rent">
      <thead>
        <tr>
        <% 

 	
 	PreparedStatement pstmt4 = mycon.prepareStatement("select * from rent");
	//pstmt2.setInt(1,userid);
	
  ResultSet rs4 = pstmt4.executeQuery();
 	
 	
  ResultSetMetaData rsmd4 = rs4.getMetaData();
	
	int colomn4 = rsmd4.getColumnCount();
	int i4;

	for(i4=1;i4<=colomn4;i4++)
	{
		%>
		
		
			<th><h1><%= rsmd4.getColumnName(i4) %></h1></th>
		
		
	<% 
	
	}
	%>
	</tr>
    </thead>
    <tbody>
	<% 
	while(rs4.next())
	{

		%>
					<tr>
		<% 
		for(i4=1;i4<=colomn4;i4++)
		{
			
			//System.out.print(rs.getString(i)+"          ");
			%>
		
			<td><%= rs4.getString(i4)%></td>
			

		
		<%
		}
		
		%>
		</tr>
		<%
		
	}
 
	%>

	</tbody>
</table>
<h1>SALES REPORT</h1>
<table class="container" id="sale_report">
      <thead>
        <tr>
        <% 

 	
 	PreparedStatement pstmt5 = mycon.prepareStatement("select aid,selling_date,selling_price,hid,hname,address from house where status='UNAVAILABLE'");
	//pstmt2.setInt(1,userid);
	
  ResultSet rs5 = pstmt5.executeQuery();
 	
 	
  ResultSetMetaData rsmd5 = rs5.getMetaData();
	
	int colomn5 = rsmd5.getColumnCount();
	int i5;

	for(i5=1;i5<=colomn5;i5++)
	{
		%>
		
		
			<th><h1><%= rsmd5.getColumnName(i5) %></h1></th>
		
		
	<% 
	
	}
	%>
	</tr>
    </thead>
    <tbody>
	<% 
	while(rs5.next())
	{

		%>
					<tr>
		<% 
		for(i5=1;i5<=colomn5;i5++)
		{
			
			//System.out.print(rs.getString(i)+"          ");
			%>
		
			<td><%= rs5.getString(i5)%></td>
			

		
		<%
		}
		
		%>
		</tr>
		<%
		
	}
 

 	
 	
 	
 	
 	
 	
 	

  
} catch (ClassNotFoundException e) {
  // TODO Auto-generated catch block
  e.printStackTrace();
} catch (SQLException e) {
  // TODO Auto-generated catch block
  e.printStackTrace();
}




%>

	</tbody>
</table>





</body>
</html>