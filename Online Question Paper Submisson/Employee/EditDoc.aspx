﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditDoc.aspx.vb" Inherits="Client_EditDoc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat ="server"  >
<meta name="description" content="" />
<meta name="keywords" content="" />
<title> Online QPS</title>
<style type ="text/css" >
    #form1
    {
        max-height :5000px;
    }
    .style2
    {
        margin-left :1200px;
        margin-top :1px;
    }
    .lblS1
    {
        position :absolute ;
        margin-left :25px;
        margin-top :10px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS2
    {
        position :absolute ;
        margin-left :25px;
        margin-top :50px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS3
    {
        position :absolute ;
        margin-left :25px;
        margin-top :90px;
        font-size :20px;
        font-style :oblique ;
    }
    .lblS4
    {
        position :absolute ;
        margin-left :25px;
        margin-top :320px;
        font-size :20px;
        font-style :oblique ;
    }
    .txtS1
    {
        position :absolute;
        margin-left :180px;
        margin-top :10px;
        font-size :35px;
        font-family :Gabriola;
        color :Teal;
        width:200px;
        top: 48px;
        left: 44px;
    }
    .txtS2
    {
        position :absolute ;
        margin-top :90px;
        margin-left :180px;
        width :200px;
        height :200px;
        font-family:Gabriola;
        font-size :30px;
        font-weight :bold;
    }
    .txtS3
    {
        position :absolute ;
        margin-left :180px;
        margin-top :50px;
        font-size :15px;
        font-weight :bolder ;
        font-family :Gabriola ;
        width:200px;
    }
    .TreeS
    {
        margin-top :320px;
        margin-left :200px;
    }
    .style3
    {
        left: 0px;
        top: 0px;
        height: 424px;
    }
    .style4
    {
        position : absolute;
        margin-top : 90px;
        margin-left : 180px;
        width : 200px;
        height : 200px;
        font-family: Gabriola;
        font-size : 30px;
        font-weight : bold;
        left: 44px;
        top: 124px;
    }
    .style5
    {
        position : absolute;
        margin-left : 180px;
        margin-top : 50px;
        font-size : 15px;
        font-weight : bolder;
        font-family : Gabriola;
        width: 200px;
        left: 43px;
        top: 81px;
    }
    .style6
    {
        position: absolute;
        top: 406px;
        left: 240px;
        width: 150px;
        height: 30px;
        z-index: 1;
    }
</style>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../style.css" />
<script type="text/javascript" src="../jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="../jquery.dropotron-1.0.js"></script>
<script type="text/javascript" src="../jquery.slidertron-1.1.js"></script>
<script type="text/javascript">
    $(function () {
        $('#menu > ul').dropotron({
            mode: 'fade',
            globalOffsetY: 11,
            offsetY: -15
        });
        $('#slider').slidertron({
            viewerSelector: '.viewer',
            indicatorSelector: '.indicator span',
            reelSelector: '.reel',
            slidesSelector: '.slide',
            speed: 'slow',
            advanceDelay: 4000
        });

    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <a href="../Home.aspx" class="style2 ">Logout</a>
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2> Examiner Main Screen </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
            <li class="first" ><a href ="EmpHome.aspx">Examiner Home</a></li>
            <li>
				<span class="opener">Question Paper<b></b></span>
				<ul>
                    <li><a href="NewDoc.aspx" >New Question Paper</a></li>
					<li><a href="ViewAllDoc.aspx" >View Question Paper</a></li>
					<li><a href="EditDoc.aspx">Edit Question Paper</a></li>
					
				</ul>
			</li>
                      <li class="last">
				<span class="opener">Exit<b></b></span>
				<ul>
					<li><a href="../Home.aspx" >Logout</a></li>
				</ul>
			</li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
					<img src="../images/50.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/51.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/52.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/53.jpg" alt="" />
				</div>
				<div class="slide">
					<img src="../images/54.jpg" alt="" />
				</div>
			</div>
		</div>
		<div class="indicator">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>
			<span>5</span>
		</div>
	</div>
	<div id="page" class="style3">
        <asp:Label ID="DocumentID" runat="server" Text="Examiner ID" CssClass ="lblS1 " 
            style="left: 51px; top: 73px"></asp:Label>
        <asp:Label ID="LDocID" runat="server" Text="Label" CssClass ="txtS1 " 
            style="left: 43px; top: 70px; right: 557px"></asp:Label>
        <asp:TextBox ID="content" runat="server" CssClass ="style4" 
            TextMode ="MultiLine" Font-Names="Times New Roman" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="Course Name" CssClass ="lblS2 " 
            style="left: 47px; top: 81px"></asp:Label>
        <asp:Textbox ID="DocType" runat="server" Text="" CssClass ="style5" 
            Font-Names="Times New Roman"></asp:Textbox>
        <asp:Label ID="Label2" runat="server" Text="Comments" CssClass="lblS3 " 
            style="left: 46px; top: 87px"></asp:Label>
		<br class="clearfix" /> 
        <asp:Button ID="Button1" runat="server" Text="Update" 
            style=" margin-left : 500px;" CssClass="style6" />
	</div>
	<div id="page-bottom">
		<br class="clearfix" />
	</div>
</div>
<div id="footer">
	Copyright (c) 2018-2019 OnlineQuestionpaper.com. All rights reserved
</div>
</form>
</body>
</html>
