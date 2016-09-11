<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Website.Forms.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/reg.css" rel="stylesheet" />
    <script src="../Scripts/register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-xs-12">
        <h1>Registration Form</h1>
         <div class="main-content">
             <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblFName" class="lblreg"> First Name  </label>
                </div>
                <div class="col-xs-4">
                         <input type="text" id="txtFName" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblLName" class="lblreg">  Last Name  </label>
                 </div>
                 <div class="col-xs-4">
                     <input type="text" id="txtLName" />
                 </div>
             </div>
              <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblUserName" class="lblreg"> User Name  </label>
                </div>  
                <div class="col-xs-4">
                        <input type="text" id="txtUName" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblEmail" class="lblreg">  Email  </label>
                </div>
                   <div class="col-xs-4">
                     <input type="text" id="txtEmail" />
                 </div>
             </div>
              <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblPwd" class="lblreg"> Password  </label>
                </div>  
                   <div class="col-xs-4">
                     <input type="password" id="txtPwd" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblCnfPwd" class="lblreg">  Confirm Password  </label>
                </div>
                   <div class="col-xs-4">
                    <input type="password" id="txtCnfPwd" />
                 </div>
             </div>
            <%-- <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblAdd1" class="lblreg"> Address Line 1  </label>
                </div>  
                   <div class="col-xs-4">
                     <input type="text" id="txtAdd1" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblAdd2" class="lblreg">  Address Line 2  </label>
                </div>
                   <div class="col-xs-4">
                    <input type="text" id="txtAdd2" />
                 </div>
             </div>
            --%> <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblCity" class="lblreg"> City  </label>
                </div>  
                   <div class="col-xs-4">
                     <input type="text" id="txtCity" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblCountry" class="lblreg">  Country  </label>
                </div>
                   <div class="col-xs-4">
                    <input type="text" id="txtCountry" />
                 </div>
             </div>
             <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblPostalCode" class="lblreg"> Pin Code  </label>
                </div>  
                   <div class="col-xs-4">
                     <input type="text" id="txtPin" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblMobile" class="lblreg">  Mobile  </label>
                </div>
                   <div class="col-xs-4">
                    <input type="text" id="txtMobile" />
                 </div>
             </div>
             <div class="col-xs-12 row">
                 <div class="col-xs-4 row">

                 </div>
                 <div class="col-xs-4 row">
                     <input type="button" class="btn-info" id="btnRegister" value="Submit" />
                     <input type="button" class="btn-info" id="btnCancel" onclick="cancel();" value="Cancel" />
                 </div>
                 <div class="col-xs-4 row">

                 </div>
             </div>
         </div>
    </div>
</asp:Content>
