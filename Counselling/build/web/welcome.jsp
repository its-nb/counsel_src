<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Online Counselling System</title>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">

    
    
    
    <div class="back_image">
       
        <div class="reg">
            <form action="Choose" method="get">
            <h3 style="margin-left: 100px; margin-bottom: -10px">Enter Your Roll Number</h3>
           
            <br>
            <input type="int" name="roll" placeholder="Confirm your roll number" style="margin-left: 50px;"> 
             <br><br><br>
             <h3 style="margin-left: 100px;margin-bottom: -30px;">Choose your college </h3>
             <input type="radio" name="preference" value="RVC Engineering" style="width:40px;margin-left: 50px;">RVC Engineering<br>
              <input type="radio"  name="preference" style="width:40px;margin-left: 50px;" value="PDS University">PDS University<br>
               <input type="radio" name="preference" style="width:40px;margin-left: 50px;" value="MSR Institute of Technology">MSR Institute of Technology<br>
                <input type="radio" name="preference" style="width:40px;margin-left: 50px;" value="BMSN College of Engineering">BMSN College of Engineering<br>
                 <input type="radio" name="preference" style="width:40px;margin-left: 50px;" value ="Sri Sram College Of Engineering">Sri Sram College Of Engineering<br>

            
            <br>
           
             <input value="Confirm" type="submit"  class="btn" style="margin-left: 130px;"> 
            
         
            
           </form>  
        </div>
        
  
    </div>
   
    
   
    

</body>

<%@ include file="footer.jsp"%>
</html>
