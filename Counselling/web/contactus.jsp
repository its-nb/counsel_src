

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/home.css"/>
        <%session.setAttribute("title","index.jsp");%>
        <%@ include file="header.jsp"%>
        <<title>Online Counselling System</title>
    </head>
    <body>
        
       
        <div class="contact-us" style=" margin-left:400px; margin-top: 30px;">
        <h1 style=" margin-left: 200px; margin-bottom: -20px;">Contact US</h1>
        <form action="Choose" method="post">
            <br><br>  <label style=" font-size: 20px; margin-left: 28px; ">Name: <input name="name" type="text" placeholder="Enter name" style="margin-left: 167px; width: 350px;"/></label>
          <br><br>  <label style=" font-size: 20px; margin-left: 28px;">Phone number: <input name="pnumber" type="text" placeholder="Enter Phone number"style="margin-left: 96px; width: 350px;"/></label>
         <br><br>   <label style=" font-size: 20px; margin-left: 28px;">Email: <input name="email" type="text" placeholder="Enter mail id"style="margin-left: 165px; width: 350px;"/></label>
         <br><br>   <label style=" font-size: 20px; margin-left: 28px;">Comments and questions:<textarea name="comment" style="width:350px; border: none; border: 2px solid red; ; margin-top: 25px; margin-left: 15px; "></textarea></label>
            <br><br>
            <input type="submit" name="btn" class ="btn" style="margin-left: 200px;" value="Submit"/>
            
        </form>
    
    </div>
        
      
        </div> 
        <div style="margin-top: 30px;">
        <%@ include file="footer.jsp"%>
        </div>
    </body>
</html>
