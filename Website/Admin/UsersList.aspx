<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.Master" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="Website.Admin.UsersList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <script src="../Scripts/libs/jsrender.js"></script> 
    <script src="../Scripts/UsersList.js"></script>
     <script id="FormsList" type="text/x-jsrender">
       <tr>
           <td><span>{{>UserName}}</span></td>
           <td><span>{{>FirstName}} {{>LastName}}</span></td>           
           <td><span>{{>Email}}</span></td>           
           <td><span>{{>PhoneNumber}}</span></td>           
           <td><span>{{>City}}</span></td>           
           <td><span>{{>AlternateEmail}}</span></td>
       </tr>
                                    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-12 row">
        <div style="height: 25px;"></div>
        <div class="col-xs-11">
                <table class="table">
                    <thead>
                        <th>
                            UserName
                        </th>
                        <th>
                            Full Name
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Phone
                        </th>
                        <th>
                            City
                        </th>
                        <th>
                            Alternate Email
                        </th>
                    </thead>
                    <tbody id="formbody">
                    </tbody>
                </table>
            </div>

       
    </div>

</asp:Content>
