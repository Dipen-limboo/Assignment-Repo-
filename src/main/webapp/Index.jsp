<%%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./style.css">

</head>
<body>
<section class="login-form">
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
   <div class="login-Container">
    <div class="login-content">
        <form method="post" action="login" class="register_form"><br><br>
            <h4>Log In</h4> <hr> <br>
            <div class="container">
                <label >Email:</label><br>
                <input type="text" placeholder="Enter Email" name="Email" required><br>
                <label >Password:</label><br>
                <input type="password" placeholder="Enter Password" name="psw" required><br><br>
                <div class="psw">
                    <span>Forgot <a href="#">password?</a></span><br><br>
                </div>
                <button type="submit">Login</button>
            </div><br><br><br><br><br><br>
            <p>Don't have an account? <span><a href="./register.jsp">Register Now</a></span></p>
        </form>
    </div>
    <div class="content">
        <div class="content-header">
            <h4>
                Welcome back!
            </h4><br>
            <p>To keep connected with us please login with your valid information.</p><br>
            <button type="submit"><a href="./register.jsp">Register</a></button>
        </div>
    </div>
   </div>
</section>
<script type="text/javascript">
var status = document.getElementById("status").value;
if(status =="failed") {
alert("Wrong Email or Password");
}
if(status =="invalidEmail") {
	alert("Please Enter correct username Email");
	}
if(status =="invalidpwd") {
	alert("Invalid Password");
	}
</script>
</body>
</html>