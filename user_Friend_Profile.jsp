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
.style4 {color: #7e7e7e}
.style5 {font-size: 16px; color: #7e7e7e; }
.style6 {color: #FF6600}
.style7 {color: #FFFF00}
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
          <h2>Friend <span class="style2"> <%=request.getParameter("name")%></span> Details</h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
					
				
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						String user=request.getParameter("name");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(10);
								s7=rs.getString(13);
								
								
								if(s6.equals("Waiting")){
							
									
									s1 = new String(Base64.encode(s1.getBytes()));
									s2 = new String(Base64.encode(s2.getBytes()));
									s3 = new String(Base64.encode(s3.getBytes()));
									s4 = new String(Base64.encode(s4.getBytes()));
									s5 = new String(Base64.encode(s5.getBytes()));
									
								
							}
								
								
								
								
					%>
					<tr>
					<td width="230" rowspan="7" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=i%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					
					  <td  width="143" height="40" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left" class="style14 style3 style7" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="166" valign="middle" height="40" style="color:#000000;"><div align="left" class="style11 style5 style3 style4 style4" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="143" height="40" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left" class="style14 style3 style7" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="166" valign="middle" height="40"><div align="left" class="style11 style5 style3 style4" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="143" height="40" align="left" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left" class="style14 style3 style7" style="margin-left:20px;"><strong>Address</strong></div> </td>                    	
<td  width="166" align="left" valign="middle" height="40"><div align="left" class="style11 style5 style3 style4" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="143" height="40" align="left" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left " class="style14 style3 style7" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
					  <td  width="166" align="left" valign="middle" height="40"><div align="left" class="style11 style5 style3 style4" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td  width="143" height="40" align="left" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left " class="style14 style3 style7" style="margin-left:20px;"><strong>User Domain</strong></div></td>
					  <td  width="166" align="left" valign="middle" height="40"><div align="left" class="style11 style5 style3 style6" style="margin-left:20px;"><%out.println(s7);%></div></td>
					</tr>
					<tr>
					  <td  width="143" height="40" valign="middle" bgcolor="#FF0000" class="style2" style="color: #2c83b0;"><div align="left" class="style5 style7" style="margin-left:20px;"><strong>Send Request</strong></div></td>
					  <td  width="166" valign="middle" height="40" style="color:#000000;"><div align="left" class="style11 style5 style3 style4 style4" style="margin-left:20px;"><a href="user_Send_Request.jsp?to=<%=s1%>&community=<%=s7%>"><%out.println("* Yes *");%></a></div></td>
					</tr>
					 
				
					
					<%
					
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
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
