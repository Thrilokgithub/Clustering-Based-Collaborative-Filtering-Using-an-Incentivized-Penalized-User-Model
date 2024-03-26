<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Added  Posts</title>
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
.style21 {font-size: 16px}
.style22 {color: #FF6600}
.style23 {
	color: #FF0000;
	font-weight: bold;
}
.style24 {font-size: 16px; color: #FFFF00; }
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
          <li class="active"><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li><a href="user_Login.jsp"><span>User</span></a></li>
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
          <h2 class="style23">All Posts By Clustering-Based Collaborative Filtering..</h2>
          
          <div class="clr"></div>
          
          <p>&nbsp;</p>
          <p>
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
            <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s9="",s8,s10,s11,s12,s13,community="";
	int i=0,j=0;

      	try 
	{
	
	String str1 = " Select * from communitys ";
	Statement st1 = connection.createStatement();
	ResultSet rs1 = st1.executeQuery(str1);
	while(rs1.next())
	{ 
	community = rs1.getString(2);
     int count =1;   
           String query="select * from posts where community='"+community+"' order by rank DESC"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
	   
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		j=rs.getInt(8);
		
		                    String keys1 = "ef50a0ef2c3e3a5f";
      		                KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				            Cipher encoder1 = Cipher.getInstance("RSA");
				            KeyPair kp1 = kg1.generateKeyPair();
				            Key pubKey1 = kp1.getPublic();
				            byte[] pub1 = pubKey1.getEncoded();
				            String decrypted_Desc = new String(Base64.decode(s5.getBytes()));
			                String decrypted_Uses = new String(Base64.decode(s6.getBytes()));
	
%>
          </p>
          
 <table width="574" border="1"  cellpadding="0" cellspacing="0"  >
   <tr>
     <td width="246" rowspan="8" >
	 <div style="margin:10px 13px 10px 13px;" ><div align="center" class="style8">
	 <input  name="image2" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;"  />
     </div></div>	 </td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style24" style="margin-left:20px;">User Domain</div></td>
     <td><span class="style15 style21">&nbsp;<span class="style22">&nbsp;<%=s2%></span></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style24" style="margin-left:20px;">Post Name </div></td>
     <td width="186"><span class="style15 style21"> &nbsp;&nbsp;<%=s3%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style24" style="margin-left:20px;">Color </div></td>
     <td><span class="style15 style21">&nbsp;&nbsp;<%=s4%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style24" style="margin-left:20px;">Discription</div></td>
     <td><span class="style15 style21">&nbsp;&nbsp;<%=decrypted_Desc%></span></td>
   </tr>
   <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style24" style="margin-left:20px;">Uses</div></td>
     <td><span class="style15 style21">&nbsp;&nbsp;<%=decrypted_Uses%></span></td>
   </tr>
   
    <tr>
     <td  width="134" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style24" style="margin-left:20px;">Rank</div></td>
     <td><span class="style15 style21">&nbsp;&nbsp;<%=j%></span></td>
   </tr>
   <tr>
     <td   width="134" height="62" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style24" style="margin-left:20px;">Rating of Pro </div                        ></td>
     <td><span class="style8 style21">&nbsp;&nbsp; <% 
    if(j<=3)
    {
    	%>
      <input  name="image" type="image" src="Gallery/1.png" width="140" height="30" >
      <%
    }
    if(j>3 && j<=6)
    {
    	%>
      <input  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
      <%
    }
    if(j>6 && j<=9)
    {
    	%>
      <input  name="image" type="image" src="Gallery/3.png" width="100" height="30" >
      <%
    }
    if(j>9 && j<=12)
    {
    	%>
      <input  name="image" type="image" src="Gallery/4.png" width="120" height="30" >
      <%
    }
    if(j>12 && j<=15)
    {
    	%>
      <input  name="image" type="image" src="Gallery/5.png" width="140" height="30" >
      <%
    }
    if(j>15 && j<=300)
    {
    	%>
      <input  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
      <%
    }
    %>
    
     </span></td>
   </tr>
   

       <%
	   if(count==1)
	   {
	   %>
	   <p class="style21"><span class="style22"><%=community%> </span>Domain</p>
	   <%
	   count=count+1;
	   }
       	
       	out.println("");
						}}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
 </table>
          <p>&nbsp;</p>
          <p align="right"><a href="admin_Main.jsp">Back</a></p>
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
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="admin_Main.jsp"><span>Admin Main </span></a></li>
          <li><a href="admin_Login.jsp"><span>Log Out</span></a></li>
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
