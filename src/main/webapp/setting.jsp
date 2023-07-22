
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="Main.css">
</head>
<body>
    <section id="setting">
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
        <div class="setting-content">
            <form  class="form" action="setting" method = "post" >
                <h4>Setting</h4> <hr> 
                <div class="container">
                    <label >First Name: &emsp; &emsp; &emsp; &emsp; </label>
                    <input type="text" placeholder="First name" name="fname" ><br>
                    <label >Last Name:&emsp; &emsp; &emsp; &emsp; &nbsp;</label>
                    <input type="text" placeholder="Last name" name="lname" >><br>
                    <label >Email: &emsp; &emsp; &ensp; &emsp; &emsp; &emsp; &nbsp;</label>
                    <input type="text" placeholder="Enter your email" name="Email">><br>
                    <label >Password: &emsp; &emsp; &emsp; &emsp;</label>
                    <input type="password" placeholder="Enter your password" name="psw">><br>
                    <label >Confirm Password: &emsp; &emsp; &emsp; &emsp;</label>
                    <input type="password" placeholder="Enter your password" name="cpsw">><br>
                </div>
                <div class="btn">
                    <button type="submit">Update</button>
            
                </div>
            </form>
        </div>
    </section>
</body>
</html>