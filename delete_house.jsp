<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE HOUSE RECORD</title>
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
<h3>DELETE HOUSE RECORD</h3>

 <form action="delete_house_imp.jsp" method="post">
<table align="center" cellpadding = "10">
 
<tr>
<td>hid</td>
<td><input type="number" name="hid" maxlength="30"/>
(only integer)
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