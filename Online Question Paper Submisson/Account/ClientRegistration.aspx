﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ClientRegistration.aspx.vb" Inherits="Account_ClientRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat ="server"  >
<meta name="description" content="" />
<meta name="keywords" content="" />
<title> Online QPS</title>
<style type ="text/css" >
    #form1
    {
        margin-left :0;
        max-height :5000px;
    }
    .lblstyle1
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        position :absolute;
        top: 729px;
        left: 4px;
        width: 172px;
    }
    .lblstyle8
    {
        font-size :larger ;
        position :inherit;
        margin-left :700px;
        position :absolute;
        top: 628px;
        left: 0px;
        width: 223px;
        color:Red ;
    }
    .lblstyle9
    {
        font-size:x-large ;
        position :inherit;
        margin-left :150px;
        margin-top :400px;
        position :absolute;
        top: 628px;
        left: 0px;
        width: 223px;
    }
    .txtstyle7
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :0px;
        position :absolute ;
        width:200px;
    }
    .lblstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :50px;
        position :absolute;
        top: 727px;
        left: 0px;
        width: 189px;
    }
    .lblstyle3
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :100px;
        position :absolute;
        top: 725px;
        left: 0px;
        width: 172px;
    }
    .lblstyle4
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :150px;
        position :absolute;
        top: 722px;
        left: 0px;
        width: 211px;
    }
    .lblstyle5
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :200px;
        position :absolute;
        top: 719px;
        left: 0px;
    }
    .lblstyle6
    {
        font-size :x-large;
        position :inherit;
        margin-left :150px;
        margin-top :250px;
        position :absolute;
        top: 722px;
        left: 0px;
        width: 180px;
    }
    .lblstyle7
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :150px;
        margin-top :300px;
        position :absolute ;
    }
    .txtstyle1
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :50px;
        width:200px;
        position :absolute ;
        azimuth:rightwards ;
    }
    .txtstyle2
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :100px;
        position :absolute;
        top: 726px;
        left: 1px;
        width: 200px;
    }
    .txtstyle3
    {
        font-size :x-large;
        position :inherit;
        margin-left :400px;
        margin-top :150px;
        position :absolute;
        top: 823px;
        left: 0px;
        width: 200px;
    }
    .txtstyle4
    {
        font-size :larger;
        position :inherit;
        margin-left :400px;
        margin-top :200px;
        position :absolute;
        width :200px;
        top: 671px;
        left: 2px;
        height: 33px;
    }
    .txtstyle5
    {
        font-size :larger;
        position :inherit;
        margin-left :400px;
        margin-top :250px;
        position :absolute;
        width :200px;
        top: 668px;
        left: 0px;
        height: 33px;
    }
    .txtstyle6
    {
        font-size :x-large ;
        position :inherit ;
        margin-left :400px;
        margin-top :300px;
        position :absolute ;
        width:200px;
    }
    .btn1
    {
        margin-left :590px;
        position :absolute;
        margin-top :450px;
        height: 35px;
        top: 648px;
        left: -100px;
        width: 113px;
    }
    .phstyle
    {
        margin-left :400px;
        position :absolute;
        margin-top :400px;
        height: auto ;
        top: 628px;
        left: 0px;
    }
    .style1
    {
        width: 902px;
        height: 84px;
        position: absolute;
        top: 0px;
        left: 0px;
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
    <p class="style1" style="z-index: 1">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [Desg]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [Dept]"></asp:SqlDataSource>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="Empass" CssClass="style4" 
            ErrorMessage="Enter Digits Only" ValidationExpression="[ 0-9 ]+" 
            
            style="z-index: 1; position: absolute; top: 1053px; left: 680px; width: 148px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="EmpName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            style="z-index: 1; position: absolute; top: 858px; left: 682px; width: 163px"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="LogName" CssClass="style4" 
            ErrorMessage="Enter Alphabets Only" ValidationExpression="[ a-z A-Z ]+" 
            
            style="z-index: 1; position: absolute; top: 807px; left: 681px; width: 178px"></asp:RegularExpressionValidator>
    </p>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="../Home.aspx">Online QPS</a></h1>
		</div>
		<div id="slogan">
			<h2>Professor Details </h2>
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first" ><a href="../Home.aspx">Home</a></li>
			<li><a href="../Courses.aspx">Courses</a></li>
			<li><a href="../About.aspx">About</a></li>
			<li><a href="../Contact.aspx">Contact</a></li>
		</ul>
		<br class="clearfix" />
	</div>
	<div id="slider">
		<div class="viewer">
			<div class="reel">
				<div class="slide">
				  <img src="../images/50.JPG" alt=""/>
				</div>
				<div class="slide">
					<img src="../images/51.JPG"alt="" />
				</div>
				<div class="slide">
					<img src="../images/52.JPG"alt="" />
				</div>
				<div class="slide">
					<img src="../images/53.JPG"alt="" />
				</div>
				<div class="slide">
					<img src="../images/54.JPG" alt=""/>
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
    <div>
        <br />
        <br />
        <asp:Label ID="name" runat="server" Text ="Login Name" CssClass ="lblstyle1" > </asp:Label>
        <asp:Label ID="emname" runat="server" Text ="Professor Name" CssClass ="lblstyle2" > </asp:Label>
        <asp:Label ID="pass" runat="server" Text ="Password" CssClass ="lblstyle3" > </asp:Label>
        <asp:Label ID="Cpass" runat="server" Text ="Confirm Password" 
            CssClass ="lblstyle4" ></asp:Label>
        <asp:Label ID="Label1" runat="server" Text ="Email" CssClass ="lblstyle5" > </asp:Label>
        <asp:Label ID="Label2" runat="server" Text ="Phone Number" CssClass ="lblstyle6" > </asp:Label>
        <asp:Label ID="Label3" runat="server" Text ="Address" CssClass ="lblstyle7" > </asp:Label>
        <asp:TextBox ID="LogName" runat ="server" CssClass ="txtstyle7"></asp:TextBox>
        <asp:TextBox ID="EmpName" runat ="server" CssClass ="txtstyle1"></asp:TextBox>
        <asp:TextBox ID="Empass" runat ="server" CssClass ="txtstyle2" TextMode ="Password" ></asp:TextBox>
        <asp:TextBox ID="EmCpass" runat ="server" CssClass ="txtstyle3" 
            TextMode ="Password" MaxLength="10" ></asp:TextBox>
        <asp:TextBox ID="TextBox1" runat="server" CssClass ="txtstyle4 "></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass ="txtstyle5 "></asp:TextBox>
        <asp:TextBox ID="addr" runat ="server" CssClass ="txtstyle6" 
            TextMode ="MultiLine" Font-Names="Times New Roman"  ></asp:TextBox>
        <asp:Button ID="signup" runat ="server" CssClass ="btn1" Text="Signup" Font-Size="Larger"  />
        <asp:Label ID="Label4" runat="server" Text ="Incorrect password" CssClass ="lblstyle8" Visible ="false"> </asp:Label>
        <br /><br /> <br /> <br /> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
