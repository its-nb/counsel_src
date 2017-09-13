

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="css/home.css" rel="stylesheet" type="text/css">
       <link rel="shortcut icon" href="">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%session.setAttribute("title","index.jsp");%>
        <%@include file="header.jsp" %>
        <title>Online Counselling System</title>
    </head>
   <body>
   
    
    <div class="back_image">
        
        <div class="reg" style="overflow-y:scroll; height:390px; background:#ffffff">
            
              <pre>
            <h3 style="margin-left: 100px; margin-bottom: -50px;margin-top: -15px;">New Students Register Here</h3>
            <form action="Register" method="post">
            <input name="cname"  placeholder="First Name" type="text">
                                
            <input name="csurname"  placeholder="Last Name" type="text">
            
            <input name="croll"  placeholder="Roll Number" type="text">
            
            <input name="caddress"  placeholder="City" type="text">
                     
            <input name="cdob"  placeholder="Date Of Birth" type='date'> 
            
            <input name="contact"  placeholder="Contact Number" type="int"> 
            
            <input name="cemail"  placeholder="Mail ID" type="email">
            
            <input name="cpassword" placeholder="Password" type="text">
            
            
            
            
            
                        
                        
                    <input value="Register"   type="submit" class="btn" style="padding-bottom: 40px; width: 150px;"> 
            </form>
            </pre>
        </div>
    </div>
    
    
    

</body>

<%@ include file="footer.jsp"%>
</html>
