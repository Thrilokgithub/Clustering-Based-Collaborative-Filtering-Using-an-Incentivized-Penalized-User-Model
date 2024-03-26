<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Recommended Posts</title>
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
.style7 {color: #FFFF00}
.style8 {color: #FFFF00; font-weight: bold; }
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
          <h2>Posts Recommended to User : <span class="style2"><%=(String)application.getAttribute("user")%></span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p>
			
		<%@ include file="connect.jsp" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
		<%
      	try 
	      {
      		String post_Name="";
			int id=0;
			String user =(String)application.getAttribute("user");
			
      		String str = "select * from recommendations where Rec_to='"+user+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(str);
			while(rs.next())
			{
			id = rs.getInt(1);
			post_Name = rs.getString(3);
			
           String str1 = " select * from posts where post_name='"+post_Name+"' "; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	       while ( rs1.next() )
	       {
		   
		   String name = rs1.getString(3);
		   String color = rs1.getString(4);
		  
  %>

<table width="260" border="0" align="center">
  <tr>
    <td width="119" bgcolor="#FF0000"><div align="left" class="style8">
      <div align="center">Post Name</div>
    </div></td>
    <td width="131"><div align="left"><span class="style7"><%=name%></span></div></td>
  </tr>
  
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style8">
      <div align="center"> Color</div>
    </div></td>
    <td><div align="left"><span class="style7"><%=color%></span></div></td>
  </tr>
  <tr>
    <td bgcolor="#FF0000"><div align="left" class="style8">
      <div align="center">View Post  </div>
    </div></td>
    <td><div align="left" class="style8">
      <div align="left"><a href="user_Recommended_Posts1.jsp?name=<%=name%>&id=<%=id%>">View&nbsp;</a></div>
    </div></td>
  </tr>
</table>

<p>&nbsp;</p>
<p align="center">

  <%
  	 
out.println("---------------------------------------------------------------------------");
	  
	   }
          }
         }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </p>
            
            <p>&nbsp;</p>
            <p align="right"><a href="user_Main.jsp">Back</a></p>
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
