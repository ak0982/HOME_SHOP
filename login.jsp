<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

  body{
  background: url('loginbg1.jpg') no-repeat;
    background-size: cover;
    height: 100vh;
        
               display:flex;
        
        justify-content:center;
        align-items:center;
        min-height:100vh;
       <!-- background:#31321;-->
        font-family:consolas;
    }
    a{
        background-color: black;
        position:relative;
        display:block;
        padding:15px 30px;
        color:#0CD327;
        text-transform:uppercase;
        Letter-spacing:4px;
        text-decoration:none;
        font-size:24px;
        overflow:hidden;
        transition:0.2s;
    }
    a:hover{
        
        color:#255784;
        background:#2196f3;
        box-shadow:0 0 10px #EA0BA0 0 0 40px #2196f3 0 0 80px #2196f3;
    }
   
    .link1{
        background-color: none;
        position:relative;
        display:block;
        padding:15px 30px;
        color:#0CD327;
        text-transform:uppercase;
        Letter-spacing:4px;
        text-decoration:none;
        font-size:24px;
        overflow:hidden;
        transition:0.2s;





    }

.link2{
        background-color: none;
        position:relative;
        display:block;
        padding:15px 30px;
        color:#0CD327;
        text-transform:uppercase;
        Letter-spacing:4px;
        text-decoration:none;
        font-size:24px;
        overflow:hidden;
        transition:0.2s;





    }

.link3{
        background-color: none;
        position:relative;
        display:block;
        padding:15px 30px;
        color:#0CD327;
        text-transform:uppercase;
        Letter-spacing:4px;
        text-decoration:none;
        font-size:24px;
        overflow:hidden;
        transition:0.2s;





    }


</style>
<title>login</title>
</head>
<body >

<div style = "position:absolute; left:850px; top:250px;  background-color:yellow;">
             
<h1>Login As</h1>
</div>


<div class="link1"> 

<a href="dba.jsp" target="_blank">dba </a>



</div>


<div class="link2"> 
 <a href="agent.jsp"  target="_blank"">agent</a>
<!-- onclick="window.open('agent.html') -->
</div>


<div class="link3"> 

<a href="customer.jsp" target="_blank">customer</a>



</div>


</body>
</html>