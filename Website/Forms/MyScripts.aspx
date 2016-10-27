<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="MyScripts.aspx.cs" Inherits="Website.Forms.MyScripts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
    <script src="../Scripts/myScripts.js"></script>
    <style>
        .tablerow label {
        font-weight:bold;
        }
    </style>
    <script src="../Scripts/libs/jsrender.js"></script>
    <script id="FormsList" type="text/x-jsrender">
        <tr>
             <td>
                  <div class="col-xs-12">
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
    <div class="col-xs-3 left-menu zeropad">
        <ul>
            <li><a href="FormSubmission.aspx">Submit A ManuScript</a></li>
                <li><a href="EditorialGuideLines.aspx">Editorial Guide Lines</a></li>
                <li><a href="#">Template</a></li>               

        </ul>
        <div class="divCall">
            <span class="main-text">Call For Paper</span>
            <p>
                Submissions open for VOLUME 1. ISSUE 2. You may submit your research / review / survey papers from today.
            </p>
            <p>
                <span class="main-text">Last  Submission Date:  Oct</span> 01, 2016
            </p>
            <p>
                <span class="main-text">Article Publication:</span> Within 21 Days
            </p>
            <p>
                <span class="main-text">Issue Publication last Date: Oct</span> 21, 2016
            </p>
        </div>
    </div>
    <div class="col-xs-9 home-content ">
        <div style="height: 25px;"></div>
        <div>
            <div class="table-responsive">
                <table class="table ">
                    <tbody id="formbody">
                        
                           
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
