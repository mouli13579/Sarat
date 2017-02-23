<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Website.Forms.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />
   <style>
 /*p.ex{
    padding:0.5cm;
}

col-sm-6 {
    padding: 0.5cm;
}*/
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <div class="col-xs-12">
        <h1>Contact Us</h1>   
   </div>
    --%>
<%--        <div class="container">
    <div class="jumbotron jumbotron-sm" style="background-color:#339966;margin-top:2%;color:white;">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h2" style="margin-top:-2%">
                   Paraa Publications
                </h1>
            </div>
        </div>
    </div>
</div>--%>
<div class="container">
    <div class="row">
        <div class="col-xs-6">
            <div class="well">
                <h3 style="line-height:20%;"><i class="fa fa-home fa-1x" style="line-height:6%;color:#339966"></i> Address</h3>               
                <p  class="ex" style="margin-top:6%;line-height:35%">D.No.-49-34-23/2,N.G.O.S.Colony</p>
                <p style="margin-top:6%;line-height:35%">Akkayyapalem,Ward-12</p>
                <p style="margin-top:6%;line-height:35%">Viskhapatnam</p>
                <p style="margin-top:6%;line-height:35%">Andhra Pradesh-530016</p>
                <br />
                <br />
                <h3 style="line-height:20%;"><i class="fa fa-envelope fa-1x" style="line-height:6%;color:#339966"></i> E-Mail Address:</h3>
                <p style="margin-top:6%;line-height:35%">support@paraapublications.com</p>
                <br />
                <br />
              <%--  <h3 style="line-height:20%;"><i class="fa fa-user fa-1x" style="line-height:6%;color:#339966"></i> Sorumlu Kişi:</h3>
                <p style="margin-top:6%;line-height:35%">Sorumlu Kişi</p>
                <br />
                <br />
                <h3 style="line-height:20%;"><i class="fa fa-yelp fa-1x" style="line-height:6%;color:#339966"></i> Destek Merkezi:</h3>
                <p style="margin-top:6%;line-height:35%"><a href="siteadresi.com/destek">siteadresi.com/destek</a></p>--%>
            </div>
        </div>
        <div class="col-sm-6">
           <%-- <iframe src="https://www.google.co.in/maps/dir/17.738607,83.3012714/NGGOS+Colony,+Akkayyapalem,+Visakhapatnam,+Andhra+Pradesh/@17.7380756,83.3020063,18z/data=!4m8!4m7!1m0!1m5!1m1!1s0x3a39432e74818875:0xf51e2983aef6ed75!2m2!1d83.3030997!2d17.7379295?hl=en" width="565" height="430" frameborder="0" style="border:0" allowfullscreen></iframe>--%>
           <img src="~/Images\map.PNG"  style="width:480px;height:480px;" runat="server"/>
           <%-- <asp:Image ImageUrl="~\Images\map.PNG" runat="server" Height="450px" Width="450px" />--%>
        </div>
    </div>
</div>     

    
   
</asp:Content>
