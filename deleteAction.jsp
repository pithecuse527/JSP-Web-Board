<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Team-5-Board</title>
</head>
<body>
    <%
        String userID = null;
        if((userID = (String) session.getAttribute("userID")) == null){
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
        } else {
            BbsDAO bbsDAO = new BbsDAO();
            int result = bbsDAO.delete(bbsID);
            if (result == -1){
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('DB Error!')");
                script.println("history.back()");
                script.println("</script>");
            } else {
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("location.href = 'bbs.jsp'");
                script.println("</script>");
            }
        }
    %>
</body>
</html>