<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
<title>Online Counselling System</title>
    </head>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">
<div class="back_image">
 <div class="reg">
              <pre>
            <form action="Vote" method="get">
                <%String col=request.getParameter("col");
                
                if(col.equals("no")){%>
                         <h3 style="margin-top: -15px;margin-left: 100px;">Please confirm your details :  </h3>
                         <h2 style="margin-top: -40px;margin-left: 100px;">Roll Number : <%out.println(request.getParameter("roll"));%></h2>
                         <h2 style="margin-top: -40px;margin-left: 100px;">Name : <%out.println(request.getParameter("name"));%></h2>
                         <h2 style="margin-top: -40px;margin-left: 100px;">Phone : <%out.println(request.getParameter("contact"));%></h2>
                         <h2 style="margin-top: -40px;margin-left: 100px;">Address : <%out.println(request.getParameter("address"));%></h2>
                         <h2 style="margin-top: -40px;margin-left: 100px;">Email ID : <%out.println(request.getParameter("email"));%></h2>
                         
                       <input value="Proceed"   type="submit"  class="btn" style="padding-bottom: 40px; width: 150px;"> 
                </form>
                <%}else{%>
                <h3 style="margin-top: -15px;margin-left: 100px;">You have already chosen !!  </h3>
                <h2 style="margin-top: -40px;margin-left: 100px;">Your choice is :<%out.println(request.getParameter("col"));%> </h2>
                <%}%>
            </pre>  
        </div>
    </div>
</body>
<%@ include file="footer.jsp"%>
</html>
