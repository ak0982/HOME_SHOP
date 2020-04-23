<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>welcome Customer</title>
<style>

@import url(https://fonts.googleapis.com/css?family=Open+Sans);




/* button div */
#buttons {
  padding-top: 50px;
  position:relative;
    	display: inline-block;
  
  text-align: center;
 
}

/* start da css for da buttons */
.btn1 {
  border-radius: 5px;
  padding: 15px 25px;
  font-size: 22px;
  text-decoration: none;
  margin: 20px;
  color: #fff;
  position: relative;
  display: inline-block;
 
}

.btn1:active {
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
    @import "bourbon";

body {
    background: url('loginimg3.jpg') no-repeat;
    background-size: cover;
    height: 100vh;

       
}

.wrapper {  
    margin-top: 80px;
  margin-bottom: 80px;
  position: absolute;
  left:800px;
  bottom: 200px;

}

.form-signin {
  max-width: 400px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color:cyan;
  border: 1px solid rgba(0,0,0,0.1);  
  color:red;
  .form-signin-heading,
    .checkbox {
      margin-bottom: 30px;
    }

    

    .form-control {
      position: absolute;
      font-size: 50px;
      height: 59;
      padding: 10px;
        @include box-sizing(border-box);

        &:focus {
          z-index: 2;
        }
    }

    input[type="text"] {
      margin-bottom: -1px;
      border-bottom-left-radius: 0;
      border-bottom-right-radius: 0;
    }

    input[type="password"] {
      margin-bottom: 20px;
      border-top-left-radius: 0;
      border-top-right-radius: 0;
    }
}
h1{

font-size: 120px;
color:green;


position: absolute;
left:600px;
right: 400px;
bottom: 400px;



}

    
    
</style>
</head>
<body>
<div id="buttons">
  
  <a href="index.html" class="btn1 darkblueb">Home</a>
</div>

<div id="buttons">
  
  <a href="login.jsp" class="btn1 darkblueb">Login</a>
</div>

<div id="buttons">
  
  <a href="about.jsp" class="btn1 darkblueb">About</a>
</div>


<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")!=null)
{	
	
	  response.sendRedirect("cust_main.jsp");

	
}
%>

<h1>WELCOME TO HOME SHOP 20</h1>

  <div class="wrapper">
    <form class="form-signin"action="cust_login_verification.jsp" method="post">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="number" class="form-control" name="username" placeholder="enter cid (int)"  />
      <input type="password" class="form-control" name="password" placeholder="Password" />      
    <br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> 
     <a class="regi" href="registration.jsp">Registration</a>
    </form>
  </div>


</body>
</html>