<%
 if(session.getAttribute("Email") == null){
	response.sendRedirect("Index.jsp");
	}
	%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portifolo</title>
    <link rel="stylesheet" href="./Main.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <div class="first">
        <nav>
            <h2 class="logo">Porti<span>folio</span></h2>
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About Me</a></li>
                <li><a href="#skills">Skills</a></li>
                <li><a href="#contact">Contact Me</a></li>
                <li class="profile"><a href="#"><span>D</span></a>
                    <ul class="dropdown">
                        <li><a href="./setting.jsp">Settings</a></li>
                        <li><a href="./Index.jsp">Log Out</a>
                    </ul>
                </li>
            </ul>
        </nav>
        <section id = "home">
        <div class="content">
            <h4>Hello, My name is</h4>
            <h1>Dipen <span>Limbu</span></h1>
            <h3>I am a Web Developer.</h3>
            <div class="new">
                <form>
                    <input type="Email" name="Email" id="Email" placeholder="Email">
                    <input type="submit" name="submit" value="GO">
                </form>
            </div>
            
        </div>
    </div>
</section>
    <section id="about" class="about">
        <div class="main">
            <img src="./pic.jpg">
            <div class="about-text">
                <h2>About Me</h2>
                <h5>Web Developer <span> and Designer</span></h5>
                <p>I am a front-end devleoper and back-end developer. I can make websites interactive with web animations. I can provide you clean code and interfaces with perfect design. A responsive design makes your websites more accessible to all the users.</p>
            <button type="button">Let's talk</button>
            </div>
        </div>
    </section>
    <section id="skills" class="skills">
        <div class="title">
            <h2>Skills</h2>
        </div>
        <div class="box">
            <div class="card">
                <i class="fas fa-bars"></i>
                <h5>UI/UX Knowledge</h5>
                <div class="par">
                    <p>Basic Knowledge on Figma.</p>

                    <p style="text-align: center;">
                        <a class="button" href="#">Read more</a>
                    </p>
                </div>
            </div>
            <div class="card">
                <i class="fas fa-user"></i>
                <h5>Front-end Developer</h5>
                <div class="par">
                    <p>Knowledge about HTML, CSS, Javascript.</p>
                    <p style="text-align: center;">
                        <a class="button" href="#">Read more</a>
                    </p>
                </div>
            </div>
            <div class="card">
                <i class="fas fa-bell"></i>
                <h5>Back-end Developer</h5>
                <div class="par">
                    <p>Knowledge on Java, Node js and it's framework Express js along with database which is MySQL.</p>

                    <p style="text-align: center;">
                        <a class="button" href="#">Read more</a>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section id="contact" class="contact-me">
        <p><br><br> Let me get you a beautiful website.</p>
        <a class="button-two" href="#">Hire me</a>
    </section>

    <footer>
        <p>Dipen Limbu</p>
        <p>Please contact me through my below medium.</p>
        <div class="social">
            <a href="https://www.facebook.com/dipen.limbu.98229241"><i class="fab fa-facebook-f"></i></a>
            <a href="https://www.instagram.com/dipenlimboo444/"><i class="fab fa-instagram"></i></a>
        </div>
        <p class="end">CopyRight By Dipen Limbu</p>
    </footer>

</body>
</html>
