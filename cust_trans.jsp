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
<h3>BUY NEW HOUSE</h3>

 <form action="cust_trans_imp.jsp" method="post">
<table align="center" cellpadding = "10">
 
<tr>
<td>cid</td>
<td><input type="number" name="cid" maxlength="30" value=${custid}/>
(only integer)
</td>
</tr>
 
 

<tr>
<td>hid</td>
<td><input type="number" name="hid" maxlength="30"/>
(only integer)

</td>
</tr> 
<tr>
<td>ch</td>
<td><input type="number" name="ch" maxlength="30"/>
(if on rent then ch=1 else ch=0)

</td>
</tr>

<tr>
<td>duration</td>
<td><input type="number" name="duration" maxlength="30"/>
(only integer)

</td>
</tr>
<tr>
<td>price</td>
<td><input type="number" name="price" maxlength="30"/>
(only integer)

</td>
</tr>



 
<tr>
<td>purchase_date</td>
<td><input type="text" name="purchase_date" maxlength="30"/>
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