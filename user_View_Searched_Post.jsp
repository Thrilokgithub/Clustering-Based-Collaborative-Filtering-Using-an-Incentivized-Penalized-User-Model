<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched  Post</title>

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
.style21 {font-size: 14px}
.style22 {color: #FFFF00}
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
        <h2><span class="style1">Clustering Based Collaborative Filtering Using an Incentivized Penalized User Model</span></h2>
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
          <h2>Searched Post <span class="style20"><%=request.getParameter("name")%></span> Details</span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p> 
           
              
						    <%
							try{
							
							    String s1="",s2="",s3="",s4="",s5="",s6="",s7="";
	                            int i=0,j=0;
								
								String input= request.getParameter("keyword");	
								String name = request.getParameter("name");
								String community = request.getParameter("community");
								int rank =  Integer.parseInt(request.getParameter("rank"));
								int new_rank=rank+1;
								
								String user=(String)application.getAttribute("user"); 
								
								String str = "update posts set rank="+new_rank+" where post_name='"+name+"' ";
								connection.createStatement().executeUpdate(str);
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
					   			String str1 = "insert into search(user_name,community,post,keyword,dt) values('"+user+"','"+community+"','"+name+"','"+input+"','"+dt+"')";
							    connection.createStatement().executeUpdate(str1);
								
								
								String str3 = "select * from posts where post_name='"+name+"' ";
								Statement st3=connection.createStatement();
								ResultSet rs3 = st3.executeQuery(str3);
							    if(rs3.next())
								{
								i=rs3.getInt(1);
		                        s2=rs3.getString(2);
		                        s3=rs3.getString(3);
		                        s4=rs3.getString(4);
		                        s5=rs3.getString(5);
		                        s6=rs3.getString(6);
		                        j=rs3.getInt(8);
		
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
     <td width="227" rowspan="8" >
	 <div style="margin:10px 13px 10px 13px;" ><div align="center" class="style8">
	 <input  name="image2" type="image" src="post_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;"  />
     </div></div>	 </td>
   </tr>
   <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style19 style22" style="margin-left:20px;">User Domain</div></td>
     <td><span class="style21">&nbsp;&nbsp;<%=s2%></span></td>
   </tr>
   <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Post Name </div></td>
     <td width="175"><span class="style21"> &nbsp;&nbsp;<%=s3%></span></td>
   </tr>
   <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Color </div></td>
     <td><span class="style21">&nbsp;&nbsp;<%=s4%></span></td>
   </tr>
   <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Discription</div></td>
     <td><span class="style21">&nbsp;&nbsp;<%=decrypted_Desc%></span></td>
   </tr>
   <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Uses</div></td>
     <td><span class="style21">&nbsp;&nbsp;<%=decrypted_Uses%></span></td>
   </tr>
   
    <tr>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style19 style22" style="margin-left:20px;">Rank</div></td>
     <td><span class="style21">&nbsp;&nbsp;<%=j%></span></td>
   </tr>
   <tr>
     <td   width="164" height="62" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Rating of Pro </div                        ></td>
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
	  String str4 = "select * from reviews where post_name='"+name+"' ";
	  Statement st4 = connection.createStatement();
	  ResultSet rs4 = st4.executeQuery(str4);
	  int countt=1;
	  while(rs4.next())
	  {
	   String by = rs4.getString(3);
	   String review = rs4.getString(4);
	   String date = rs4.getString(5);
	   if(countt==1)
	   {
	   countt=countt+1;
	   %>
	   <tr>
	  <td  width="227" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Reviewed By</div></td>
     <td  width="164" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Review</div></td>
	 <td  width="175" height="30" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style19 style22" style="margin-left:20px;">Date</div></td>
	   </tr>
	   <%
	   }
	   %> 
	   
	   <tr>
	  <td width="227" height="40"><span class="style21"> &nbsp;&nbsp;<%=by%></span></td>
     <td width="164"><span class="style21"> &nbsp;&nbsp;<%=review%></span></td>
	 <td width="175"><span class="style21"> &nbsp;&nbsp;<%=date%></span></td>
	   </tr>
	   <%
	   
	   
	  }
	   %>
	    <tr>
	  <td width="227" height="30"><span class="style21"></span></td>
     <td width="164"><span class="style21"><a href="user_Review.jsp?p_Name=<%=name%>">Review </a></span></td>
	 <td width="175"><span class="style21"><a href="user_Recommend.jsp?p_Name=<%=name%>">Recommend</a> </span></td>
	   </tr>
	   <%
       	
       	out.println("");
						}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
 </table>
                 
                    
            <p><a href="user_Main.jsp">Back</a></p>
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
