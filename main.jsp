<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=deice-width, initial-scale=1">
    <link rel="stylesheet" 
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/custom.css">
    <title>Team-5-Board</title>
</head>
<body>
    <%
        String userID = (String) session.getAttribute("userID");

    %>
    <nav class="navbar navbar-default">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
                  data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="main.jsp">Team-5-Board</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="main.jsp" class="active">Main</a></li>
                <li><a href="bbs.jsp">Board</a></li>
                <li><a href="members.jsp">Members</a></li>
            </ul>
            <%
                if(userID == null) {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="botton" 
                       aria-haspopup="true"
                       aria-expended="false">Connect<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="login.jsp">Sign in</a></li>
                        <li><a href="join.jsp">Sign up</a></li>
                    </ul>
                </li>
            </ul>
            <%
                } else {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="botton" 
                       aria-haspopup="true"
                       aria-expended="false">Account settings<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logoutAction.jsp">Log out</a></li>
                    </ul>
                </li>
            </ul>          
            <%
                }
            %>
        </div>
    </nav>
    <!-- jumbotron area -->
    <div class="container">
        <div class="jumbotron">
            <div class="container">
                <h1>Welcome!</h1>
                <p>Simple JSP Website using Model 1.</p>
                <p>This website is created for UOU Linux System & Labs class. (Team-5)</p>
                <p><a class="btn btn-primary btn-pull" href="https://github.com/pithecuse527/JSP-Web-Board" role="button">source codes</a></p> 
            </div>
        </div>
    </div>
    <!--
    <div class="container">
        <div id="myCarousel" class="carousel slide multi-item-carousel" data-ride="carousel" style="width: 400px; margin: auto;">
            <!--
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
            </ol>
            
            <div class="carousel-inner responsive">
                <div class="item active">
                    <div class="col-xs-3"><img src="images/1.jpg" class="img-responsive"></a></div>
                </div>
                <div class="item active">
                    <div class="col-xs-3"><img src="images/2.jpg" class="img-responsive"></a></div>
                </div>
                <div class="item active">
                    <div class="col-xs-3"><img src="images/3.jpg" class="img-responsive"></a></div>
                </div>
                <div class="item active">
                    <div class="col-xs-3"><img src="images/4.jpg" class="img-responsive"></a></div>
                </div>
            </div>
        </div>
    </div>
-->
    <div class="container" align="center">
        <br>
        <br>
        <h4>
            Optimized for
        </h4>
            <div class="col-xs-3"><img src="images/6.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/7.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/8.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/10.png" class="responsive" style="max-width: 40%;"></a></div>
    </div>
    <div class="container" align="center">
        <br>
        <br>
        <h4>
            Powered by
        </h4>
            <div class="col-xs-3"><img src="images/11.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/12.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/13.png" class="responsive" style="max-width: 40%;"></a></div>
            <div class="col-xs-3"><img src="images/14.png" class="responsive" style="max-width: 40%;"></a></div>
    </div>
    <br>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>