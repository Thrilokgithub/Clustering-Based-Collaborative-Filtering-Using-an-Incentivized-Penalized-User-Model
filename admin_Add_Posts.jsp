<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Posts</title>
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
.style18 {font-size: 15px}
.style20 {color: #FF0000}
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
          <h2>Add Posts Based on User Domain's</h2>
          
          <div class="clr"></div>
          
          <p>&nbsp;</p>
          <p>
		  <%@ include file="connect.jsp" %>    
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
		  
		  <form action="admin_Add_Posts1.jsp" method="post" enctype="multipart/form-data">
                <table width="600" border="0"  cellpadding="0" cellspacing="0"  >
				     <tr>
<td  width="188" height="45" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style7 style18 style20" style="margin-left:20px;">Select The User Domain</div></td>
					 <td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
					  <select type="text" name="community" >
                      <option>--Select--</option>
                     <%  
					 for(int i=0;i<a1.size();i++)
        	         {
        	         %>
                     <option><%= a1.get(i)%></option>
           
                     <%}%>
                     </select>
					  </div>					  </td>
					</tr>
					<tr>
<td  width="188" height="45" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style7 style18 style20" style="margin-left:20px;">Post  Name </div></td>
<td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="name"></div></td>
					</tr>
					<tr>
<td  width="188" height="45" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style7 style18 style20" style="margin-left:20px;">Color </div></td>
<td  width="412" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="color"></div></td>
					</tr>
					<tr>
<td  width="188" height="45" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style7 style18 style20" style="margin-left:20px;">Post  Description <br /></div></td>
<td  width="412" valign="middle" height="45"><div align="left" style="margin-left:20px;"><textarea name="desc" cols="25" rows="5"></textarea>
</div></td>
					</tr>
					<tr>
<td  width="188" height="45" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style7 style18 style20" style="margin-left:20px;">Post  Uses </div></td>
<td  width="412" align="left" valign="middle" height="45"><div align="left" style="margin-left:20px;"><input type="text" name="uses"></div></td>
					</tr>
					<tr>
<td   width="188" height="74" align="left" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left" class="style8 style18 style20" style="margin-left:20px;">Select Image </div></td>
<td  width="412" align="left" valign="middle" height="74" style="color: #2c83b0;"><div align="left" style="margin-left:20px;"><input type="file" name="pic"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/>&nbsp;&nbsp;<input type="reset" name="Reset" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
			</table>
		  </form>
		
		 <%
			  }
			  catch(Exception e)
			  {
			  out.print(e);
			  }
			  %>
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
