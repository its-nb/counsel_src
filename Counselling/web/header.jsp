
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/header.css" rel="stylesheet" type="text/css">
        <title>Online Counselling System</title>
    </head>
    <body>
        <%
            String n = (String) session.getAttribute("title");
            if (n == "index.jsp") {session.setAttribute("title","1");%>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: #ffffff;">Online counselling System</label>
            </div>
            <div class="menu1">
                <ul>
                    <li><a href="index.jsp">Home</a> </li>
                    <li><a href="aboutus.jsp">About</a></li> 
                    <li><a href="contactus.jsp">Contact us</a></li> 
                </ul>
            </div>
        </div>
        

        <%} else {%>
        <div class="back">
            <div class="logo">
                <label style=" font-size: 35px;color: #ffffff;">Online counselling System</label>
            </div>
            <div class="menu2">
                <ul>
                    <li><a href="http://localhost:8080/Counselling/index.jsp" style=" background: #ff3333;">LogOut </a></li>
                </ul>
            </div>
        </div>
        <%}
        %>




    </body>
</html>
