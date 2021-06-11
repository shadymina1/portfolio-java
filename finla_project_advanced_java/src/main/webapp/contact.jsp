<jsp:include page="nav.jsp"  />
<%@page import="java.sql.*" %>


					<%			
					
				
					String name = request.getParameter("name");
					String company_name = request.getParameter("company_name");
					String email = request.getParameter("email");
					String phone = request.getParameter("phone");				
					String message = request.getParameter("message");
					
				//	if(name != null && company_name != null && phone != null && email !=null && message != null){
							try{
							Class.forName(" com.mysql.cj.jdbc.Driver");
							Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaf","root","");
							Statement insert = con.createStatement();
							insert.executeUpdate("INSERT INTO contacts (msgid, name , company_name,phone, message,email) VALUES (null, '"+name+"', '"+company_name+"', '"+phone+"','"+email+"','"+message+"')");
						out.print("database working ");
						}catch(Exception e){
							out.print(e);
						}

					//	}
					%>

   <section class="banner-contact">
        <div class="container banner-contact" >
            <h1 class="myname">Contact Me!</h1>
           
            <h5 class="skils-home">
                
                Phone Number: <br>
                (416)524-7694 <br>
                Email: <br>
                shady.mina.ca@gmail.com 
            </h5>
       
        </div>
    </section>
    <section>
       
        <div>
            <h1>Your inquiry is most welcome!</h1>
        </div>
        <form action="contact.jsp" method="POST">
				<input class="input-" type="text" name="name" placeholder="Full Name">
				<br>
				<input class="input-" type="text" name="company_name" placeholder="Company Name">
				<br>
				<input class="input-" type="email" name="email" placeholder="Email">
				<br>
				<input class="input-" type="text" name="phone" placeholder="Phone Number">
				<br>
				<textarea name="message" placeholder="Waiting for your comment"></textarea>
				<br> <br>
				<input class="btn btn-primary btn-adj" type="submit" value="submit">
                <br><br> <br>
        </form>
    </section>

  

<jsp:include page="footer.jsp"  />


