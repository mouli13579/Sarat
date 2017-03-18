<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="ReviewProcess.aspx.cs" Inherits="Website.Forms.ReviewProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-12 zeropad container">
        <div class="col-xs-3 left-menu zeropad">
            <ul>
                <li><a href="FormSubmission.aspx">Submit A ManuScript</a></li>
                <li><a href="EditorialGuideLines.aspx">Editorial Guide Lines</a></li>
                <li><a href="benifits.aspx">Benefits</a></li>
                <li><a href="ReviewProcess.aspx">Peer Review Process</a></li>
                <li><a href="#">Template</a></li>

            </ul>
            <div class="divCall">
                <span class="main-text">Call For Paper</span>
                <p>
                    Submissions open for VOLUME 1. ISSUE 1. You may submit your research / review / survey papers from today.
                </p>
                <p>
                    <span class="main-text">Publishing are opened now</span>
                </p>
                <p>
                    <span class="main-text">Article Publication:</span> Within 21 Days
                </p>

            </div>
        </div>
        <div class="col-xs-9 home-content ">
            <div style="height: 25px;"></div>
             <div class="container col-xs-12" style="text-align:center;margin-top:50px;">
                                    <img src="../Images/processflow.jpg" style="width:600px;" />
                                </div>
        </div>
    </div>
</asp:Content>
