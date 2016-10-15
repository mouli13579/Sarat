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
        <h3 style="text-align:center">Login Page</h3>
         <div class="col-xs-12">

         
         <div class="col-xs-3"></div>
         <div class="col-xs-6 container"  style="border:1px solid #808080; border-radius:10px; padding:20px;">
              <div class="col-xs-12 row">
                  <div class="col-xs-5">
                   <label id="lblUserName" class="lblreg"> User Name  </label>
                </div>  
                <div class="col-xs-7">
                        <asp:TextBox runat="server" class="form-control input-sm" ID="txtUName" />
                    <%--<input type="text" id="txtUName" class="form-control input-sm" />--%>
                 </div>
              </div>
              <div class="col-xs-12 row">
                  <div class="col-xs-5">
                   <label id="lblPwd" class="lblreg"> Password  </label>
                </div>  
                   <div class="col-xs-7">
                     <asp:TextBox runat="server" class="form-control input-sm" TextMode="Password" ID="txtPwd" />
                       <%--<input type="password" id="txtPwd" class="form-control input-sm" />--%>
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
                     <asp:Button ID="btnLogin" runat="server" CssClass="btn-info"  OnClick="btnLogin_Click" Text="Login" />
                     <asp:Button ID="btnCancel" runat="server" CssClass="btn-info" OnClick="btnCancel_Click" Text="Cancel" />
                     <%--<input type="button" class="btn-info" style="margin-right:20px;" id="btnlogin" value="Submit" onclick="login()"; />
                     <input type="button" class="btn-info" id="btnCancel" onclick="cancel();" value="Cancel" />--%>
                     
                 </div>
                 <div class="col-xs-1 row">

                 </div>
              </div>
             <div class="col-xs-12 row">
                  <div class="col-xs-4 row">

                 </div>
                 <div class="col-xs-7 row">
                  <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>  
                 </div>
                 <div class="col-xs-1 row">

                 </div>
              </div>
         </div>
         <div class="col-xs-3"></div>
             </div>
    </div>
</asp:Content>
