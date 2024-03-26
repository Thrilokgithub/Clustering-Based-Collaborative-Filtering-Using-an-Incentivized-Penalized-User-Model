<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Main</title>
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
          <h2><span>Welcome to <span class="style2"><%=(String)application.getAttribute("admin")%> </span>Main.</span></h2>
          
          <div class="clr"></div>
          <div class="img"></div>
          <img src="images/Admin.png" width="596" height="358" />
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
		  <li><strong><a href="admin_Add_Community.jsp">Add User Domain</a></strong></li>
          <li><strong><a href="admin_All_Users.jsp">View All Users and Authorize </a></strong></li>
		  <li><strong><a href="admin_All_Similar_Community_Users.jsp">View Similar User Domain Users</a></strong></li>
		  <li><strong><a href="admin_Add_Posts.jsp">Add Post Based on User Domain</a>
		  </strong>
		  <li><strong><a href="admin_All_Posts_Ranks.jsp">View All  Posts with Ranks,Rates</a></strong></li>
		  <li><strong><a href="admin_All_Recommended_Posts.jsp">View All Recommended Posts</a></strong></li>
		  <li><strong><a href="admin_All_Reviewed_Posts.jsp">View All Reviewed Posts</a></strong></li>
		  <li><strong><a href="admin_All_User_Search_History.jsp">View Users Search History</a></strong></li>
		   <li><strong><a href="admin_Rank_Results.jsp">View Rank Results</a></strong></li>
		    <li><strong><a href="admin_Search_Results.jsp">View Search Results</a></strong></li>
		  
		  
          <li><strong><a href="admin_Login.jsp">Log Out</a></strong></li>
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
