<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #5286bc}
.style3 {font-size: 16px}
.style4 {color: #FF6600}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="user_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h2><span class="style1">Clustering Based Collaborative Filtering Using an Incentivized Penalized User Model<small></small></span></h2>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="294" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style2"> Requested Details </span></h2>
          
          <div class="clr"></div>
       
            <p></p>
          <p><%@ include file="connect.jsp" %>   
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream" %>

<%
    try {
	
	    String commu = "";
	 	String to=request.getParameter("to");
		String community=request.getParameter("community");
	    String from=(String )application.getAttribute("user");
		
		String str1 = "select * from user where username='"+from+"' ";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		
		if(rs1.next())
		{
	     commu = rs1.getString(13);
		
		if(commu.equals(community))
		  {
		    String sql="SELECT * FROM requests where reqfrom='"+from+"' and reqto='"+to+"' or reqto='"+from+"' and reqfrom='"+to+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next())
			{
				%>
          <p class="style3">Request Already Sent to <span class="style4"> <%=to%></span><strong></strong></p>
<%
			}
			else
			{
		
      	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	    Date now = new Date();

        String strDate = sdfDate.format(now);
        String strTime = sdfTime.format(now);
        String dt = strDate + "   " + strTime;   
        String status="waiting";

        Statement st=connection.createStatement();
        st.executeUpdate("insert into  requests (reqfrom,reqto,status,dt) values ('"+from+"','"+to+"','"+status+"','"+dt+"')" );
        %><p class="style3">Request sent Sucessfully to <span class="style4"> <%=to%></span></p>
<%
		
			}
			}
		
			else
			{
			%><p class="style3">Sorry you cannot Send Request to<span class="style4"> <%=to%></span> because Their User Domain is<span class="style4"> <%=community%></span></p>
<%
			}
			}
			}
		catch(Exception e)
	{
		out.print(e);
	}

%>
            </p>
            
            <p>&nbsp;</p>
            <p align="right"><a href="user_Request_Response.jsp">Back</a></p>
            <div class="clr"></div>
        </div>
        <div class="article">
          
          <div class="clr"></div>
        
          
          <div class="clr"></div>
        </div>
       
      </div>
      <div class="sidebar">
        <div class="searchform">
         
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="user_Main.jsp"><span>User Main  </span></a></li>
          <li><a href="user_Login.jsp"><span>Log Out </span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>





