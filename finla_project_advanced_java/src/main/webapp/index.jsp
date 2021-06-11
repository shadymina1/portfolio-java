<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="./css/style.css">
<script src="https://kit.fontawesome.com/c4b1e249b0.js" crossorigin="anonymous"></script>  
<title>Shady's Dashboard</title>
</head>
<body>
 
	<% 
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");
	
	String credUser = "shadymina";
	String credPass = "java";
    if(user ==null || pass==null){
    	%> <jsp:include page="dash.jsp"  /> <%
    }else{   	
        if(credUser=="shadymina" && credPass =="java"){
        	%> <jsp:include page="msg.jsp"  /><% 		
        }else{
        	out.print("NOOO");
        	out.print("<h1>"+user +"<br>");
        	out.print(pass+"</h1>");       	
        }
    }
	%>


    <footer>
        <section>
            <h3 style="color: gray;">This is a privat area, <br> If you need a ride to the main website, click <a href="#"> here </a></h3>
        </section>
      
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./js/script.js"></script>
    

</body>
</html>