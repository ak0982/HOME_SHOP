<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style type="text/css">body {
    background: url('regi2.jpg') no-repeat;
    background-size: cover;
   
        max-width:100%;
max-height:90%;
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
</style>


<script>  
function validateform(){  
var userid=document.myform.userid.value;  
var password=document.myform.password.value;  
  
if (userid==null || userid=="" || userid.length<5){  
  alert("enter only integer of at least 5 digit");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
}  
</script> 
</head> 
<body>  

  <div class="wrapper">
    <form class="form-signin" name="myform" action="regisimp.jsp" onsubmit="return validateform()">       
      <h2 class="form-signin-heading">Please register your id </h2>
      <input type="number" class="form-control" name="userid" placeholder="customer id (only integer)" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password (at least of 6 digit)" required=""/>      
    <br>
      <button class="btn btn-lg btn-primary btn-block" type="submit" value="register">Register</button> 
    
    </form>
  </div>
</body>
</html>

 