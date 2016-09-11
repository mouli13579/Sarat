<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Website.Forms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .row {
padding:10px;
}
    </style>
    <script src="../Scripts/login.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-xs-12">
        <h1 style="text-align:center">Login Page</h1>
         <div class="col-xs-12">

         
         <div class="col-xs-3"></div>
         <div class="col-xs-6 container"  style="border:1px solid #808080; border-radius:10px; padding:20px;">
              <div class="col-xs-12 row">
                  <div class="col-xs-5">
                   <label id="lblUserName" class="lblreg"> User Name  </label>
                </div>  
                <div class="col-xs-7">
                        <input type="text" id="txtUName" />
                 </div>
              </div>
              <div class="col-xs-12 row">
                  <div class="col-xs-5">
                   <label id="lblPwd" class="lblreg"> Password  </label>
                </div>  
                   <div class="col-xs-7">
                     <input type="password" id="txtPwd" />
                 </div>
                
              </div>
              <div class="col-xs-12 row">
                  <div class="col-xs-2 row">

                 </div>
                 <div class="col-xs-5 row">
                     <a href="#" >forgot password</a>
                 </div>
                 <div class="col-xs-5 row">
                     <a href="Register.aspx" >Register</a>
                 </div>
              </div>
              <div class="col-xs-12 row">
                  <div class="col-xs-4 row">

                 </div>
                 <div class="col-xs-7 row">
                     <input type="button" class="btn-info" style="margin-right:20px;" id="btnRegister" onclick=login() value="Submit" />
                     <input type="button" class="btn-info" id="btnCancel" onclick="cancel();" value="Cancel" />
                 </div>
                 <div class="col-xs-1 row">

                 </div>
              </div>
         </div>
         <div class="col-xs-3"></div>
             </div>
    </div>
</asp:Content>
