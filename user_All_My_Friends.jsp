<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All User Friends</title>
<%@ include file="connect.jsp" %>
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
.style6 {font-size: 15px}
.style7 {
	font-size: 12px;
	font-weight: bold;
}
.style8 {color: #FFFF00}
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
          <li><a href="about_Project.html"><span>About Project </span></a></li>
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
          <h2>All Friends of <span class="style2"><%=application.getAttribute("user")%> </span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p> 
			<table width="655" border="1"  cellpadding="0" cellspacing="0"   font-size:14px;">
            <tr>
              <td  width="40" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style7 style8">SI NO</div></td>
              <td  width="103" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>Image</strong></div></td>
              <td  width="103" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>Name</strong></div></td>
              <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>DOB</strong></div></td>
              <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>Contact</strong></div></td>
              <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>Location</strong></div></td>
		      <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style8 style6 style10 style15"><strong>User Domain</strong></div></td>
            <tr>
		    <%
			try{
				String req_from="",req_to="";
				
				String user = (String)application.getAttribute("user");
				String status="Accepted";
				int count=1;
				String str = "select * from requests where status='"+status+"' and reqto='"+user+"' or status='"+status+"' and reqfrom='"+user+"'";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
				
				req_from = rs.getString(2);
				req_to = rs.getString(3);
				
				if(req_from.equals(user))
				{
				String dob="",contact="",location="",community="";
				int id=0;
				
				String str1 = "select * from user where username='"+req_to+"' ";
				Statement st1 = connection.createStatement();
				ResultSet rs1 = st1.executeQuery(str1);
				 if(rs1.next())
				{
				id = rs1.getInt(1);
				dob = rs1.getString(7);
				contact = rs1.getString(5);
				location = rs1.getString(12);
				community = rs1.getString(13);
				}
				     %> <tr>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(count);%></p>
					<p>&nbsp; </p></div></td>
					<td width="111" rowspan="1" ><div class="style6" style="margin:10px 13px 10px 13px;">
					<input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=id%>" style="width:80px; height:80px;"  /></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(req_to);%></p>
					<p>&nbsp; </p></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(dob);%></p>
					<p>&nbsp; </p></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(contact);%></p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(location);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(community);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
            </tr><%
				}

				else if(req_to.equals(user))
				{
				String dob="",contact="",location="",community="";
				int id=0;
				
				String str1 = "select * from user where username='"+req_from+"' ";
				Statement st1 = connection.createStatement();
				ResultSet rs1 = st1.executeQuery(str1);
				if(rs1.next())
				{
				id = rs1.getInt(1);
				dob = rs1.getString(7);
				contact = rs1.getString(5);
				location = rs1.getString(12);
				community = rs1.getString(13);
				}
				     %> <tr>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(count);%></p>
					<p>&nbsp; </p></div></td>
					<td width="111" rowspan="1" ><div class="style6" style="margin:10px 13px 10px 13px;">
					<input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=id%>" style="width:80px; height:80px;"  /></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(req_from);%></p>
					<p>&nbsp; </p></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(dob);%></p>
					<p>&nbsp; </p></div></td>
					<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
					<p><%out.println(contact);%></p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(location);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(community);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
            </tr><%
				}
				
				count=count+1;
				}
				}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                      <tr>
                        <td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
						<td  valign="baseline" height="0">&nbsp;</td>
                     </tr>
          </table>
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
