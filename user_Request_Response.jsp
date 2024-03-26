<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Request_Response</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
.style3 {font-size: 16px}
.style5 {
	font-size: 20px;
	color: #FF6600;
}
.style6 {
	color: #FFFF00;
	font-weight: bold;
}
.style7 {color: #FFFF00}
.style9 {font-weight: bold}
.style10 {color: #FF0000}
.style11 {color: #FF0000; font-weight: bold; }
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
          <h2 class="style11"> Search User Based on User Domain Sign.... </h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p>
			<FORM ACTION="user_Request_Response.jsp" METHOD="post">
                
              <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
			  <%
			  try
			  {
			  
			   ArrayList a1=new ArrayList();
			  String str = " select * from Communitys ";
			  Statement st = connection.createStatement();
			  ResultSet rs = st.executeQuery(str);
			  while(rs.next())
			  {
			  a1.add(rs.getString(2));
			  }
			  %>
                      <TD width="129" bgcolor="#FF0000"><P><span class="style6">Select User Domain </span>&nbsp;&nbsp;</P></TD>
                      <TD width="144"> <select id="s1" name="community" class="text">
         <option>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
        </select></TD>
		 <%
			  }
			  catch(Exception e)
			  {
			  out.print(e);
			  }
			  %>
                    </TR>
					
					<tr>
					<td></td>
					  <TD width="129"><div align="justify"><INPUT name="submit" TYPE="submit" STYLE="width:100px; height:25px;" VALUE="Search"/></div></TD>
				    </tr>
					<TR>
                     
                    </TR>
                  </TABLE>
              </DIV>
     
            </FORM>
		
			

			 
		  <p>&nbsp;	      </p>
			  <p>
			    <%               
							try{
							
							    String Community="",hash_Sign="",name="",id="";
							   
							    String user=(String)application.getAttribute("user");
								String community= request.getParameter("community");	
								
								
		
							    
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								
							    /*if(!fname.equalsIgnoreCase(""))
								{
									Statement st3 = connection.createStatement();
									   String query3 ="insert into searchfriends(username,friendsearched,dt) values('"+user+"','"+fname+"','"+dt+"')";
									   st3.executeUpdate (query3); 	   
								}*/
								
								
								%>
			    
			    
			    
	          </p>
			  
  
                      <%
					  
								Statement stmt=connection.createStatement();
								String strQuery = "select * from user where community='"+community+"' ";
								ResultSet rs = stmt.executeQuery(strQuery);
								int count=1;
								while(rs.next())
								{
									id=rs.getString(1);
									name=rs.getString(2);
					if(name.equalsIgnoreCase(user))
					{}
						else
						{		
								
						if(count==1)
						{
						count=count+1;
						%>
						<table width="388" border="1" align="center"  cellpadding="0" cellspacing="0"   font-size:14px;">
						<tr>
						<td height="40"></td>
						<td align="center" class="style5">All <%=Community%> </td>
						<td></td>
						</tr>
                      <tr>
                        <td  width="69" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style3 style9 style15"><strong> ID </strong></div></td>
						<td  width="245" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style3 style15"><strong>Friend Name </strong></div></td>
                        <td  width="66" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style3 style15"><strong>Details</strong></div></td>
						<%
						}				
			    	 					
										
										
									%>
                      <tr>
					  
                       
                       
                       
                        <td  valign="baseline" height="0"><span class="style10 style3">&nbsp;&nbsp;
                            
                        </span>
                          <div align="center" class="style10 style3">
                            <%out.println(id);%>
                        </div></td>
							
							<td  valign="baseline" height="0"><span class="style10 style3">&nbsp;&nbsp;
                            
                            </span>
							  <div align="center" class="style16 style10 style3">
                            <%out.println(name);%>
                        </div></td>
							
								<td  > <p align="center" class="style3"><a href="user_Friend_Profile.jsp?name=<%=name%>">View</a></p></td>
		      </tr>
                        <%
						}
						}
					
				
						connection.close();
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
                      </tr>
          </table>
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
          <li><a href="user_All_My_Friends.jsp"><span>View All Friends</span></a></li>
		  <li><a href="user_All_Recieved_Request.jsp"><span>View Recieved Requests</span></a></li>
		  <li><a href="user_All_Sent_Request.jsp"><span>View Sent Requests</span></a></li>
		  <li><a href="user_Main.jsp"><span>User Main</span></a></li>
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
