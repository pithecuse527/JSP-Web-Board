<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                <li><a href="main.jsp">Main</a></li>
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
    <!--
        20182123   유상훈
    20182139   정태윤
                   20182916   정동민
                   20182137   정귀인 

    -->
    <div class="container">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="jumbotron" style="padding-top: 20px;">
                <h2 style="text-align: center;">Members</h2>
                <br>
                <div>
                    <h5 style="text-align: center;">20182123 유상훈</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20182139 정태윤</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20182916 정동민</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20182137 정귀인</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20152262 지홍근</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20152226 오경찬</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20152240 이헌준</h5>
                </div>
                <div>
                    <h5 style="text-align: center;">20142235 이태현</h5>
                </div>
            </div>
        </div>
        <div class="col-lg-4"></div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>