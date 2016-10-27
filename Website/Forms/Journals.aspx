<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Journals.aspx.cs" Inherits="Website.Forms.Articles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-xs-12  zeropad container">
         <div class="col-xs-3 left-menu zeropad">
            <ul>
                <li><a href="FormSubmission.aspx">Submit A ManuScript</a></li>
                <li><a href="EditorialGuideLines.aspx">Editorial Guide Lines</a></li>
                <li><a href="#">Template</a></li>               

            </ul>
            <div class="divCall">
               <span class="main-text"> Call For Paper</span>
                <p>
                    Submissions open for VOLUME 1. ISSUE 2. You may submit your research / review / survey papers from today.
                </p>
                <p>
                    <span class="main-text">Last  Submission Date:  Sep</span> 30, 2016
                </p>
                <p>
                    <span class="main-text">Article Publication:</span> Within 21 Days
                </p>
                <p>
                    <span class="main-text">Issue Publication last Date: Oct</span> 21, 2016
                </p>
            </div>
        </div>
        <div class="col-xs-9  zeropad">
            <ul class="list-style">
                            <li><a href="EngineeringJournals.aspx">Engineering Journals</a></li>
                            <li><a href="#">Scientific Journals</a></li>
                        </ul>
        </div>
    </div>
</asp:Content>
