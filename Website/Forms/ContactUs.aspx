<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Website.Forms.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
<div class="container col-xs-12" style="padding:20px;">
    <div class="row" style="display:inline-block;padding:20px;">
        <div class="col-xs-6" style="padding:20px;">
            <div class="well">
                <h3 style="line-height:20%;"><i class="fa fa-home fa-1x" style="line-height:6%;color:#339966"></i> Address</h3>     
                <br />          
                <p  class="ex" style="margin-top:6%;line-height:35%">D.No.-49-34-23/2, N.G.O.S.Colony,</p>
                <p style="margin-top:6%;line-height:35%">Akkayyapalem,Ward-12,</p>
                <p style="margin-top:6%;line-height:35%">Visakhapatnam,</p>
                <p style="margin-top:6%;line-height:35%">Andhra Pradesh,</p>
                <p style="margin-top:6%;line-height:35%">INDIA.</p>
                <p style="margin-top:6%;line-height:35%">PIN-530016.</p>
                <br />
                <br />
                <h3 style="line-height:20%;"><i class="fa fa-envelope fa-1x" style="line-height:6%;color:#339966"></i> E-Mail Address:</h3>
                <br />
                <p style="margin-top:6%;line-height:35%">support@paraapublications.com</p>
                <br />
                <br />
              </div>
        </div>
        <div class="col-xs-6">
           
           <a href="https://www.google.co.in/maps/place/Sai+Baba+Temple/@17.736791,83.2978188,17z/data=!4m12!1m6!3m5!1s0x3a39432ec3b2b80b:0x13e89e0a71e05c60!2sSai+Baba+Temple!8m2!3d17.736275!4d83.2998466!3m4!1s0x3a39432ec3b2b80b:0x13e89e0a71e05c60!8m2!3d17.736275!4d83.2998466?hl=en" target="_blank">
              <img src="~/Images/map.PNG"  style="width:480px;height:480px; border: 1px solid #808080; border-radius: 15px;" runat="server"/>
           </a>
           
        </div>
    </div>
</div>     

    
   
</asp:Content>
