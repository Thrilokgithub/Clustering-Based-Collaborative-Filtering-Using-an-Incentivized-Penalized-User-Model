<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Post</title>

<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import ="java.math.BigInteger" %>

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
.style19 {font-size: 16px}
.style20 {color: #5286bc}
.style21 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li></li>
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
          <h2><span class="style21">Recommendation and Reviewed Details on Post </span><%=request.getParameter("name")%> </span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p> 
           
              
<%

try
		{
  String type = request.getParameter("type");

  SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
  SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

  Date now = new Date();

  String strDate = sdfDate.format(now);
  String strTime = sdfTime.format(now);
  String dt = strDate + "   " + strTime;   
  
  String user = (String)application.getAttribute("user");
  

  if(type.equals("review"))
  {
   String p_Name="",review="";
   p_Name = request.getParameter("p_Name");
   review = request.getParameter("desc");
   
   Statement st=connection.createStatement();
   st.executeUpdate("insert into  reviews (post_name,user_name,review ,dt) values ('"+p_Name+"','"+user+"','"+review+"','"+dt+"')" );
   %>
   <p class="style19">Reviewed Sucessfully on Post<span class="style20"> <%=p_Name%></span></p>
   <p><a href="user_Search_Post.jsp">Back</a></p>
   <%
  }
  if(type.equals("recommend"))
  {
  String p_Name="",community="",recommend="",to_User="";
  p_Name = request.getParameter("p_Name");
  community = request.getParameter("community");
  to_User = request.getParameter("friend");
  recommend = request.getParameter("desc");
  
   Statement st=connection.createStatement();
   st.executeUpdate("insert into  recommendations (community,post_name,Rec_From,rec_to,Recommendation,dt) values ('"+community+"','"+p_Name+"','"+user+"','"+to_User+"','"+recommend+"','"+dt+"')" );
   
   %>
   <p class="style19">Recommended Sucessfully to User <span class="style20"> <%=to_User%></span></p>
   <p><a href="user_Search_Post.jsp">Back</a></p>
   <%
   }
				}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
         %> 
                    
          <p>&nbsp;</p>
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
