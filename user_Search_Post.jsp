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
.style9 {font-size: 14px}
.style10 {color: #5286bc}
.style11 {
	color: #FFFF00;
	font-weight: bold;
}
.style12 {
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
          <h2>Search Post by Content Keyword</span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p> 
            <FORM ACTION="user_Search_Post.jsp" METHOD="post">
                
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="113"><P class="style12">USER  KEYWORD</P></TD>
                      <TD width="157"><INPUT TYPE="text" name="keyword" /></TD>
                      <TD width="62"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3" bgcolor="#FF0000"><P align="center" class="style11">[ searching content Based on Post Description ] </P></TD>
                    </TR>
              </TABLE>
              
                <P>&nbsp; </P>
            </FORM>
                <%
							try{
							    String community="",name="",color="",desc="",Decrypted_Desc="",L_Decrypted_Desc="",rank="";
								
								
								String user = (String)application.getAttribute("user");
								String input = request.getParameter("keyword");	
								String L_input = input.toLowerCase();
								
								String str = " select * from communitys ";
								Statement st = connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								while(rs.next())
								{
								community = rs.getString(2);
								String str1 = "select * from user where username='"+user+"' and community='"+community+"' ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
								if(rs1.next())
								{
								String str2 = " select * from posts where community='"+community+"' ";
								Statement st2 = connection.createStatement();
								ResultSet rs2 = st2.executeQuery(str2);
								while(rs2.next())
								{
								name = rs2.getString(3);
								color = rs2.getString(4);
								desc = rs2.getString(5);
								rank = rs2.getString(8);
								
							String keys1 = "ef50a0ef2c3e3a5f";
      		                KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				            Cipher encoder1 = Cipher.getInstance("RSA");
				            KeyPair kp1 = kg1.generateKeyPair();
				            Key pubKey1 = kp1.getPublic();
				            byte[] pub1 = pubKey1.getEncoded();
				            Decrypted_Desc = new String(Base64.decode(desc.getBytes()));
							L_Decrypted_Desc = Decrypted_Desc.toLowerCase();
								if ( L_Decrypted_Desc.indexOf(L_input)>=0)
								{
								%>
              </P>
             <div ALIGN="center" CLASS="style9"><SPAN STYLE="color:#00aeff"><span class="style10">&nbsp;User Domain :</SPAN> <SPAN STYLE="color:#7e7e7e;"><%= community%></SPAN></div>
              <span class="style9"></br>
			  </span>
              <div ALIGN="center" CLASS="style9"><SPAN STYLE="color:#00aeff"><span class="style10">&nbsp;Post Name :</SPAN> <SPAN STYLE="color:#7e7e7e;"><a href="user_View_Searched_Post.jsp?name=<%=name%>&keyword=<%=input%>&rank=<%=rank%>&community=<%=community%>"><%= name%></a></SPAN></div>
              <span class="style9"></br>
			  </span>
              <div ALIGN="center" CLASS="style9"><SPAN STYLE="color:#00aeff">&nbsp;<span class="style10">Color</span> :</SPAN> <SPAN STYLE="color:#7e7e7e;"><%= color%></SPAN></div>
              </br>
             
               
                  <%
						  	}
								 %><div align="center"><%out.print("-----------------------------------------------------");%></div><%
								}
								}
								}
			
					}catch(Exception e){						  
						e.printStackTrace();
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
