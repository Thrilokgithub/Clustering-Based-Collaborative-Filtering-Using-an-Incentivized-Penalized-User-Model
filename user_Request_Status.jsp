	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "Accepted";
       		Statement st1 = connection.createStatement();
       		String query1 ="update requests set status='"+str+"' where id='"+id+"' ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("user_All_Recieved_Request.jsp");  
			
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
