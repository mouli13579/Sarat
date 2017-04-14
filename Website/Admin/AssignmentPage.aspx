<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/admin.Master" AutoEventWireup="true" CodeBehind="AssignmentPage.aspx.cs" Inherits="Website.Admin.AssignmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/libs/jsrender.js"></script>
     <style>
        .tablerow label {
            font-weight: bold;
        }
    </style>
    <link href="../Styles/manuscript.css" rel="stylesheet" />
    <script src="../Scripts/Assignment.js"></script>
    <script id="FormsList" type="text/x-jsrender">
       <div class="tablerow">
                                            <label>Reference Number: </label>
                                            <span style="color: #e49c19;padding: 10px;"> {{>FormRefNumber}} </span><br />                                           
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
                                <div class="container col-xs-12" style="margin-top:50px;">
                                   
                                    <div class="stepwizard">
                                        <div class="stepwizard-row">                                            
                                            <div class="stepwizard-step">                                                
                                                <button type="button" class="btn btn-default btn-circle">1</button>
                                                <p>Recieved</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle">2</button>
                                                <p>Editor in Chief</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle">3</button>
                                                <p>Associate Editor</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle" disabled="disabled">4</button>
                                                <p>Reviewers</p>
                                            </div>
                                            <div class="stepwizard-step">
                                                <button type="button" class="btn btn-default btn-circle" disabled="disabled">5</button>
                                                <p>Published</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="container col-xs-12">
                                    Assignment 
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
</asp:Content>
