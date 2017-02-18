<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="manuscript.aspx.cs" Inherits="Website.Forms.manuscript" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
    <link href="../Styles/manuscript.css" rel="stylesheet" />
    <script src="../Scripts/manuscript.js"></script>
    <style>
        .tablerow label {
            font-weight: bold;
        }

        .table td, .table th {
            border: none;
        }
    </style>
    <script src="../Scripts/libs/jsrender.js"></script>
    <script id="FormsList" type="text/x-jsrender">
       <div class="tablerow">
                                            <label>Title : </label>
                                            <span>{{>Title}}</span><br />
                                            <label>Prefix : </label>
                                            <span>{{>Prefix}}</span><br />
                                            <label>Corresponding Author : </label>
                                            <span>{{>CorrespondingAuthor}}</span><br />
                                            <label>Category : </label>
                                            <span>{{>CategoryName}}</span><br />
                                            <label>Keywords : </label>
                                            <span>{{>Keywords}}</span>
          </div>
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
                    <tbody>

                        <tr>
                            <td>
                                <div class="col-xs-12">
                                    <div class="col-xs-6">
                                        <div id="formbody"></div>
                                    </div>
                                    <div class="col-xs-6">
                                        <label>Documents : </label>
                                        <br />
                                        <div id="documentsRow">
                                        </div>

                                    </div>
                                </div>
                                <div class="container col-xs-12">
                                    <%-- <div class="row">
                                        <ul class="breadcrumb">
                                            <li class="completed"><a href="javascript:void(0);">Recieved</a></li>
                                            <li class="active"><a href="javascript:void(0);">Editor Approval</a></li>
                                            <li><a href="javascript:void(0);">Reviewer Approval</a></li>
                                           <%-- <li><a href="javascript:void(0);">Ready To Publish</a></li>
                                    <li><a href="javascript:void(0);">Published</a></li>
                                    </ul>
                                </div>
                                    --%>
                                    <div class="stepwizard">
                                        <div class="stepwizard-row">                                            
                                            <div class="stepwizard-step">                                                
                                                <button type="button" class="btn btn-default btn-circle">1</button>
                                                <p>Recieved</p>
                                                <p>21-01-2017</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle">2</button>
                                                <p>Editor in Chief</p>
                                                <p>26-01-2017</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle">3</button>
                                                <p>Associate Editor</p>
                                                <p>01-02-2017</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle" disabled="disabled">4</button>
                                                <p>Reviewers</p>
                                                <p>05-02-2017</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-success btn-circle" disabled="disabled">5</button>
                                                <p>Published</p>
                                                <p>10-02-2017</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
