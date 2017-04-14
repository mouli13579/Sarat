<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Website.Admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/dashboard.js"></script>
     <script src="../Scripts/libs/jsrender.js"></script>
    <style>
        .card-block {
        margin:5px;
        }
    </style>
     <script id="FormsList" type="text/x-jsrender">
         <div class="col-xs-12">
             <div class="col-xs-3 card card-block">
                 <h4 class="card-title">Author's</h4>
                  <p class="card-text">No. Of Author's : {{>AuthorCount}}</p>
             </div>
             <div class="col-xs-3 card card-block">
                  <h4 class="card-title">Editor's</h4>
                  <p class="card-text">No. Of Editor's : {{>EditorCount}}</p>
             </div>
             <div class="col-xs-3 card card-block">
                  <h4 class="card-title">Reviewer's</h4>
                  <p class="card-text">No. Of Reviewer's : {{>ReviewerCount}}</p>
             </div>
            
         </div>
         <div class="col-xs-12">
              <div class="col-xs-5 card card-block">
                  <h4 class="card-title">Admin's</h4>
                  <p class="card-text">Number Of Admin's : {{>AdminCount}}</p>
             </div>

             <div class="col-xs-5 card card-block">
                 <h4 class="card-title">Article's</h4>
                  <p class="card-text">Number of Articles : {{>ArticlesCount}}</p>
             </div>
             <div class="col-xs-2">
                
             </div>
         </div>
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height: 25px;"></div>
     <div id="formbody">

     </div>
</asp:Content>
