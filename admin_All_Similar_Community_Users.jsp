<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Similar Community Users</title>
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
.style4 {font-size: 16px; color: #333333; }
.style5 {color: #2c83b0}
.style15 {font-size: 22px}
.style17 {color: #FFFF00}
.style18 {
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
          <p class="style4 style15 style18">All Similar User Domain Users Based on User Domain Hash Sign.</p>
          
          <div class="clr"></div>
          
          <p>&nbsp;</p>
          <p>
		  <FORM ACTION="admin_All_Similar_Community_Users.jsp" METHOD="post">
                
              <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
               
			    <%@ include file="connect.jsp" %>     <TR>
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
                      <TD width="129"><P class="style18">Select User Domain &nbsp;&nbsp;</P></TD>
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
								String community_hsahSign= request.getParameter("community");	
								
								
								
		  
           
					  
						String s1,s2,s3,s4,community="";
						int i=0;
					
						
						   	String query="select * from user where community = '"+community_hsahSign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1,count1=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							%>
		  <table width="652" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="33" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">ID</div></td>
              <td  width="116" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">UserImage</div></td>
              <td  width="101" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">Username</div></td>
              <td  width="108" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">Mobile</div></td>
              <td  width="130" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">Address</div></td>
              <td  width="89" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style3 style17">Location</div></td>
            </tr>
			
			<p class="style4">Name of User Domain :<span class="style5"> <%=Community%></span></p>
			
			
			<%
							
							}
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(12);
								
					
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style7 style3">&nbsp;</p>
                  <div align="center" class="style7 style3">
                    <p>
                      <%out.println(count1);%>
                    </p>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="116" rowspan="1" ><div class="style7 style3" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="admin_ProfilePic.jsp?id=<%=i%>" style="width:95px; height:100px;"  />
              </a> </div></td>
              <td  valign="baseline" height="0"><p class="style7 style3">&nbsp;</p>
                  <div align="center" class="style7 style3">
                    <%out.println(s1);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style7 style3">&nbsp;</p>
                  <div align="center" class="style7 style3">
                    <%out.println(s2);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style7 style3">&nbsp;</p>
                  <div align="center" class="style7 style3">
                    <%out.println(s3);%>
                </div></td>
				   <td  valign="baseline" height="0"><p class="style7 style3">&nbsp;</p>
                  <div align="center" class="style7 style3">
                    <%out.println(s4);%>
                </div></td>
            </tr>
            <%
			count1=count1+1;
						
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
