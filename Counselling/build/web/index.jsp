<html>
<head>
<title>Online Counselling System</title>
</head>
<body>
    <%session.setAttribute("title","index.jsp");%>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">
    <div class="back_image">
        <div class="reg">
              <pre>
            <form action="Password" method="post">
             <h3 style="margin-left: 110px; margin-bottom: -50px;margin-top: -15px;">Enter Your credentials</h3>
             
             
             
             <input name="roll"  style="margin-left: 30px;" placeholder="Enter Roll no" type="text">
             <input type="password" style="margin-left: 30px;" name="pass" placeholder="Enter password here">
            <p style="margin-left: 150px;">${param.message}</p>
            <input value="Login" type="submit" class="btn" > <a href="http://localhost:8080/Counselling/reg.jsp" class="btn_link">New User Register</a>
            
                         
            </form>
            </pre>
        </div>
    </div>
  <%@ include file="footer.jsp"%>
</body>
</html> 