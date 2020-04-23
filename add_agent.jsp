<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fill house detail</title>
<style type="text/css">
    body {
             background: url('best2.jpg') no-repeat;

    background-size: cover;
    height: 100vh;

       
}

    h3{
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: underline
}

table{
  font-family: Calibri; 

  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  text-align:; 
  background-color: green; 
 color:white; 

  border-collapse: collapse; 
  border: 2px solid navy
}
table.inner{
  border: 0px
}
</style>
</head>
<body>
<h3>AGENT REGISTRATION FORM</h3>

 <form action="agent_regi_imp.jsp" method="post">
<table align="center" cellpadding = "10">
 
<tr>
<td>aid</td>
<td><input type="number" name="aid" maxlength="30"/>
(only integer)
</td>
</tr>
 
<tr>
<td>aname</td>
<td><input type="text" name="aname" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 


<tr>
<td>password</td>
<td><input type="text" name="password" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>


<tr>
<td>year</td>
<td><input type="number" name="year" maxlength="30"/>
(only 4 integer)

</td>
</tr>



 

 
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
 
</form>
</body>
</html>