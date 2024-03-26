
<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");      
    try{
	
		
		
		if(type.equalsIgnoreCase("admin"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("admin_Main.jsp");
			}
			else
			{
				response.sendRedirect("wrong_Login.jsp");
			}
		}
		
		
		
		 if(type.equalsIgnoreCase("user"))
		{
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			application.setAttribute("user",username);
			
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
			String sql1="SELECT * FROM user where username='"+username+"' and status='Waiting'";
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next())
			    {
				response.sendRedirect("user_Main1.jsp");
				}
				else
				{
				response.sendRedirect("user_Main.jsp");
			    }
			}
			else
			{
				response.sendRedirect("wrong_Login.jsp");
			}
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>