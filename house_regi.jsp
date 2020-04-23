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
<h3>HOUSE REGISTRATION FORM</h3>

 <form action="house_regi_imp.jsp" method="post">
<table align="center" cellpadding = "10">
 
<tr>
<td>hid</td>
<td><input type="number" name="hid" maxlength="30"/>
(only integer)
</td>
</tr>
 
<tr>
<td>hname</td>
<td><input type="text" name="hname" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>
 

<tr>
<td>selling_price</td>
<td><input type="number" name="selling_price" maxlength="30"/>
(only integer)

</td>
</tr> 
<tr>
<td>rent_per_month</td>
<td><input type="number" name="rent_per_month" maxlength="30"/>
(only integer)

</td>
</tr>
<tr>
<td>address</td>
<td><input type="text" name="address" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>

<tr>
<td>no_of_bedroom</td>
<td><input type="number" name="no_of_bedroom" maxlength="30"/>
(only integer)

</td>
</tr>
<tr>
<td>size</td>
<td><input type="number" name="size" maxlength="30"/>
(only integer)

</td>
</tr>
<tr>
<td>aid</td>
<td><input type="number" name="aid" maxlength="30"/>
(only integer)

</td>
</tr>
<tr>
<td>ch</td>
<td><input type="number" name="ch" maxlength="30"/>
(only 0)

</td>
</tr>



<tr>
<td>status</td>
<td><input type="text" name="status" maxlength="30"/>
(only AVAILABLE or UNAVAILABLE)
</td>
</tr>

<tr>
<td>year</td>
<td><input type="number" name="year" maxlength="30"/>
(only 4 integer)

</td>
</tr>

 
<tr>
<td>entry_date</td>
<td><input type="text" name="entry_date" maxlength="30"/>
(only in "yyyy-mm-dd")
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