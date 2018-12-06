<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=deice-width, initial-scale=1">
    <link rel="stylesheet" 
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          crossorigin="anonymous">
    <title>Team-5-Board</title>
</head>
<body>
    <%
        String userID = (String) session.getAttribute("userID");
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
    <div class="container">
        <div class="row">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                    <tr>
                        <th colspan="3" style="background-color: #eeeeee; text-align: center; ">Post</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 20%;">Title</td>
                        <td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></td>
                    </tr>
                    <tr>
                        <td>User</td>
                        <td colspan="2"><%= bbs.getUserID() %></td>
                    </tr>
                    <tr> 
                        <td>Date</td>
                        <td colspan="2"><%= bbs.getBbsDate().substring(0, 11) %></td>
                    </tr>
                    <tr>
                        <td>Content</td>
                        <td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").
                                                                                         replaceAll(">", "&rt;").replaceAll("\n", "<br>") %></td>
                    </tr>
                </tbody>
            </table>
            <a href="bbs.jsp" class="btn btn-primary">List</a>
            <%
                if (userID != null && userID.equals(bbs.getUserID())){
            %>
                <a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">Edit</a>
                <a onclick="return confirm('Delete this post?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">Delete</a>
            <%
                }
            %>
            <input type="submit" class="btn btn-primary pull-right" value="Post">
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>