<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.Master" AutoEventWireup="true" CodeBehind="RecentForms.aspx.cs" Inherits="Website.Admin.RecentForms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Scripts/libs/jsrender.js"></script>
    <script src="../Scripts/RecentForms.js"></script>
    <script id="FormsList" type="text/x-jsrender">
        <tr>
             <td>
                  <div class="col-xs-12 card card-block">
                                    <div class="col-xs-6">
                                        <div class="tablerow">
                                            <label>Title : </label><span> {{>Title}}</span><br />
                                            <label>Prefix : </label><span> {{>Prefix}}</span><br />
                                            <label>Corresponding Author : </label><span> {{>CorrespondingAuthor}}</span><br />
                                            <label>Category : </label><span>{{>CategoryName}}</span><br />
                                            <label>Keywords : </label><span>{{>Keywords}}</span>
                                        </div>
                                    </div>
                                    <div class="col-xs-6">
                                        <a href="#" onclick="viewForm('{{>FormSubmissionID}}')" >View More</a><br />
                                       
                                    </div>
                  </div>
             
            </td>
       </tr
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 25px;"></div>
        <div>
            <div class="table-responsive">
                <table class="table ">
                    <tbody id="formbody">
                        
                           
                    </tbody>
                </table>
            </div>
        </div>
</asp:Content>
