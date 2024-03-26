<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Sent  Request</title>
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
.style7 {font-size: 12px}
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
          <h2> All Sent Requests of <span class="style2"> <%=application.getAttribute("user")%></span></h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p>
			           
                      <%@ include file="connect.jsp" %>
					  <%
					  
					
					  try{
				                String user="",to="",date="",status="",dob="",contact="",location="",community="";

								int i=0,count=1,count1=1;;
				                
								user = (String)application.getAttribute("user");
				              
								String str1 = "select * from requests where reqfrom='"+user+"' ";
								Statement st1=connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
								while(rs1.next())
								{
								    if(count==1)
									{
									count=count+1;
									%>
		  <table width="655" border="1"  cellpadding="0" cellspacing="0"   font-size:14px;">
            <tr>
              <td  width="40" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style7 style8">SI NO</div></td>
              <td  width="103" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style6 style8"> Image</div></td>
              <td  width="103" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style6 style8">Requested To </div></td>
              <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style6 style8">Date </div></td>
		      <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style6 style8">User Domain</div></td>
			  <td  width="101" height="28" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style15 style10 style6 style8">Status</div></td>
            <tr>
									<%
									}
									to = rs1.getString(3);
									date  = rs1.getString(4);
									status = rs1.getString(5);
									
									
									String str2 = "Select * from user where username = '"+to+"' ";
									Statement st2 = connection.createStatement();
									ResultSet rs2 = st2.executeQuery(str2);
									if(rs2.next())
									{
									 i = rs2.getInt(1);
									 dob = rs2.getString(7);
									 contact = rs2.getString(5);
									 location = rs2.getString(12);
									 community = rs2.getString(13);
									}   
									
						%>
            <tr>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(count1);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						<td width="111" rowspan="1" ><div class="style6" style="margin:10px 13px 10px 13px;">
						<input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=i%>" style="width:80px; height:80px;"  /></div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(to);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(date);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						<td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(community);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
						
						
           
             <td  valign="baseline" height="0"><div align="center" class="style16 style11 style6">
						  <p>
						    <%out.println(status);%>
						  </p>
						  <p>&nbsp; </p>
						</div></td>
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
                      <tr>
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
