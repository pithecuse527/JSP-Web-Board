<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
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
        if(userID == null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Sign in first.')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        }
        int bbsID = 0;
        if(request.getParameter("bbsID") != null) bbsID = Integer.parseInt(request.getParameter("bbsID"));
        if(bbsID == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Invalid post.')");
            script.println("location.href = 'bbs.jsp'");
            script.println("</script>");
        }
           
        Bbs bbs = new BbsDAO().getBbs(bbsID);
           
        if(!userID.equals(bbs.getUserID())){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('Unauthorized.')");
            script.println("location.href = 'bbs.jsp'");
            script.println("</script>");
        }
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
                <li><a href="bbs.jsp" class="active">Board</a></li>
                <li><a href="members.jsp">Members</a></li>
            </ul>
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
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>">
                <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                    <thead>
                        <tr>
                            <th colspan="2" style="background-color: #eeeeee; text-align: center; ">Edit Post</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><input type="text" class="form-control" placeholder="Title" name="bbsTitle" 
                                       maxlength="50" value="<%= bbs.getBbsTitle() %>"></td>
                        </tr>
                        <tr>
                            <td><textarea class="form-control" placeholder="Content" name="bbsContent" 
                                          maxlength="2048" style="height: 350px;"><%= bbs.getBbsContent() %></textarea></td>
                        </tr>
                    </tbody>
                </table>
                <span class='text-primary'>Please use English only.</span>
                <input type="submit" class="btn btn-primary pull-right" value="Edit">
            </form>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>