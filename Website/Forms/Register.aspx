<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Website.Forms.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/reg.css" rel="stylesheet" />
    <script src="../Scripts/register.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-xs-12">
        <h3>Registration Form</h3>
         <div class="main-content form-group">
             <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblFName" class="lblreg"> First Name *  </label>
                </div>
                <div class="col-xs-4">
                         <input class="form-control input-sm" type="text" required id="txtFName" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblLName" class="lblreg">  Last Name *  </label>
                 </div>
                 <div class="col-xs-4">
                     <input class="form-control input-sm" type="text" id="txtLName" />
                 </div>
             </div>
              <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label  id="lblUserName" class="lblreg"> User Name * </label>
                </div>  
                <div class="col-xs-4">
                        <input class="form-control input-sm" type="text" id="txtUName" />
                 </div>
                 <div class="col-xs-2">
                   <label for="txtEmail" id="lblEmail" class="lblreg">  Email *  </label>
                </div>
                   <div class="col-xs-4">
                     <input class="form-control input-sm" type="text" id="txtEmail" />
                   </div>
             </div>
              <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblPwd" class="lblreg"> Password * </label>
                </div>  
                   <div class="col-xs-4">
                     <input class="form-control input-sm" type="password" id="txtPwd" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblCnfPwd" class="lblreg">  Confirm Password  </label>
                </div>
                   <div class="col-xs-4">
                    <input class="form-control input-sm" type="password" id="txtCnfPwd" />
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
                     <input class="form-control input-sm" type="text" id="txtCity" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblCountry" class="lblreg">  Country  </label>
                </div>
                   <div class="col-xs-4">
                    <input class="form-control input-sm" type="text" id="txtCountry" />
                 </div>
             </div>
             <div class="col-xs-12 row">
                <div class="col-xs-2">
                   <label id="lblPostalCode" class="lblreg"> Alternate Email </label>
                </div>  
                   <div class="col-xs-4">
                     <input class="form-control input-sm" type="text" id="txtAltEmail" />
                 </div>
                 <div class="col-xs-2">
                   <label id="lblMobile" class="lblreg">  Mobile  </label>
                </div>
                   <div class="col-xs-4">
                    <input class="form-control input-sm has-error"  type="text" id="txtMobile" onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
                 </div>
             </div>
             <div class="col-xs-12 row">
                 <div class="col-xs-4 row">

                 </div>
                 <div class="col-xs-4 row">
                     <input type="button" class="btn-info" id="btnRegister" onclick="register();" value="Submit" />
                     <input type="button" class="btn-info" id="btnCancel" onclick="cancel();" value="Cancel" />
                 </div>
                 <div class="col-xs-4 row">

                 </div>
             </div>
             <div class="col-xs-12 row">
                 <label class="lblreg">  Note : * mandatory fields  </label>
                 <%--<input type="button" onclick="checkMail()" value="check" />--%>
             </div>
         </div>
    </div>
</asp:Content>
