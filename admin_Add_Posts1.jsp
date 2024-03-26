<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Posts</title>

<%@ include file = "connect.jsp" %>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "com.oreilly.servlet.*"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "javax.crypto.Cipher" %> 
<%@ page import = "org.bouncycastle.util.encoders.Base64" %>
<%@ page import = "javax.crypto.spec.SecretKeySpec" %>
<%@ page import = "java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import = "java.security.MessageDigest,java.security.DigestInputStream" %>
<%@ page import = "java.math.BigInteger" %>

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
.style20 {
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
          <h2 class="style20">Add Posts Based on User Domain's</h2>
          
          <div class="clr"></div>
          
          <p>&nbsp;</p>
          <p>
		  
		  <%
				try {
				
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String file=null;
					String community=null,name=null,color=" ",desc=null,uses=null,image=null;
					String ee=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("community"))
							{
								community=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("color"))
							{
								color=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							
							}
					
							
						 int f = 0;
							Enumeration files = multi.getFileNames();	
							while (files.hasMoreElements()) 
							{
								paramname = (String) files.nextElement();
								if(paramname != null)
								{
									f = 1;
									image = multi.getFilesystemName(paramname);
									String fPath = context.getRealPath("Gallery\\"+image);
									file1 = new File(fPath);
									fs = new FileInputStream(file1);
									list.add(fs);
								}
						    }		
							
							FileInputStream fs1 = null;
							
							String str = "select * from posts where post_name='"+name+"' ";
							Statement st = connection.createStatement();
							ResultSet rs = st.executeQuery(str);
							if(rs.next())
							{
							%><p>Post Already Exists</p>
							  <p align="right"><a href="admin_Add_Posts.jsp">Back</a></p>
							<%
							}
							else
							{
							String keys1 = "ef50a0ef2c3e3a5f";
      		                KeyPairGenerator kg1 = KeyPairGenerator.getInstance("RSA");
				            Cipher encoder1 = Cipher.getInstance("RSA");
				            KeyPair kp1 = kg1.generateKeyPair();
				            Key pubKey1 = kp1.getPublic();
				            byte[] pub1 = pubKey1.getEncoded();
				            String encrypted_Desc = new String(Base64.encode(desc.getBytes()));
			                String encrypted_Uses = new String(Base64.encode(uses.getBytes()));
							
							int rank =0;
                            PreparedStatement ps=connection.prepareStatement("insert into posts(community,post_name,color,description,uses,image,rank) values(?,?,?,?,?,?,?)");
							ps.setString(1,community);
							ps.setString(2,name);
							ps.setString(3,color);	
							ps.setString(4,encrypted_Desc);
							ps.setString(5,encrypted_Uses);
							ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
							ps.setInt(7,rank);
							ps.executeUpdate();
							
							%>
							   <p>Post Added Sucessfully</p>
							   <p align="right"><a href="admin_Add_Posts.jsp">Back</a></p>
							<%
							
						  }  
						  }
						catch (Exception e) 
						{
							out.println(e.getMessage());
						}
					%>
					
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
