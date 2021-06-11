    <%@page import="java.sql.*" %>
    <header>
        <nav class="navbar navbar-light bg-light">           
            <div class="container-fluid">
                <div style="width: 1em;"></div>
                <a class="navbar-brand">Shady Mina</a>
                <form class="d-flex" >
                    <button  class="btn btn-primary btn-adj" type="submit">Logout</button>
                </form>
                <div style="width: 1em;"></div>
            </div>
        </nav>
    </header>
    <section class="banner" >
        <h1 class="text_banner "  >Contacts Databank</h1>

    </section>

    <section  >
    
    <%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaf","root","");
		Statement retrieve = con.createStatement();
		ResultSet result = retrieve.executeQuery("SELECT * FROM `contacts`");	
		int idAdding =0;
		String idCont;
		String up;
		String down ;
		while (result.next()){
			idAdding++;
			idCont = "idCont"+idAdding;
			up="up"+idAdding;
			down="down"+idAdding;			
			String name ="Name:"+ result.getString("name") ;
			String phone = "Phone:"+ result.getString("phone");
			String company_name =result.getString("company_name");
			String email =  "Email:"+result.getString("email");
			String msg =  "Message:"+result.getString("message");
			
			%>
			<div class="container" style="text-align: left;cursor: pointer;">  
            <h3  onclick="toggel<%out.print(idAdding);%>()" style="text-align: left;font-weight: bolder;" ><%out.print(company_name);%><em id= "<%out.print(down);%>"  class="fas fa-angle-down"> </em><em  id= "<%out.print(up); %>"  style="display: none;" class="fas fa-angle-up"></em></h3>          
            <h5 style="display: none; text-align: left;margin-left: 1.3em;" id="<%out.print(idCont);%>" > <%out.print(name );%>  <br> <%out.print(phone );%>  <br> <%out.print(email );%> <br><%out.print(msg );%></h5>
            <hr>
            <script>
            toggel<%out.print(idAdding);%>=()=>{
                  let mytoggel = document.getElementById("<%out.print(idCont);%>");
                  let upA = document.getElementById("<%out.print(up);%>");
                  let downA = document.getElementById("<%out.print(down);%>");
                  if(mytoggel.style.display==="none")  {
                      mytoggel.style.display= "block";
                      upA.style.display=""
                      downA.style.display="none"                      
                  }else{
                     mytoggel.style.display="none"
                     upA.style.display="none"
                     downA.style.display=""
                  }
              }
            </script>
        </div>
							
			<%	
		}						
							
	}catch(Exception e){
		out.print(e);
	}
					
			 %>
    </section>

  