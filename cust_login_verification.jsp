<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ page import="java.sql.*" %>
        <%@ page import = "java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.* " %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%



String uname = request.getParameter("username");
int userid = Integer.parseInt(uname);
String user_password = request.getParameter("password");
try {
	String url = "jdbc:mysql://localhost:3306/project"; 
	String user = "root"; 
	String pass = "amar123mm"; 
	//Scanner scan = new Scanner(System.in); 
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection mycon = DriverManager.getConnection(url,user,pass);
	
  Statement stmt = mycon.createStatement();
  ResultSet rs = stmt.executeQuery("select cid,password from customer_login where cid="+userid+" and password='"+user_password+"'");
  
  if(rs.next()) {
	  out.println("correct id and password");
	  session = request.getSession();
      session.setAttribute("uname",uname);
//String site = new String("agent_main.jsp?uname="+uname+"");
response.sendRedirect("cust_main.jsp");


 	  //String site = new String("cust_main.jsp?uname="+uname+"");
  //response.sendRedirect(site);
	  
    
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