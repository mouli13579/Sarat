<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Website.Forms.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
    <script src="../Scripts/libs/json2.js"></script>
    
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-12 zeropad container">
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
                    <span class="main-text">Publishing are opened now</span>
                </p> 
                <p>
                    <span class="main-text">Article Publication:</span> Within 21 Days
                </p>
                <%--<p>
                    <span class="main-text">Issue Publication last Date: Apr</span> 20, 2017
                </p>--%>
            </div>
        </div>
        <div class="col-xs-9 home-content ">
            <div style="height: 25px;"></div>
            
            <p>
                Paraa Publications is an emerging scientific and engineering publishers, publishes high quality books for academic study and professional development and peer reviewed scientific articles of qualified researchers. We covers wide range of engineering and science subjects.
            </p>
            <p>
                We ensure the quality and stream lined syllabus of our books to reach all levels of students and professionals.
            </p>
            <p>
                We ensure our journals publish novel contributions and recent developments in science and technology that will new directions to the professionals.
            </p>
        </div>

    </div>
</asp:Content>
