<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="FormSubmission.aspx.cs" Inherits="Website.Forms.FormSubmission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    #txtAbstract {
max-height:80px;
}
</style>

    <script src="../Scripts/formsubmission.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-12 zeropad container">
        <div class="col-xs-1 zeropad">
        </div>
        <div class="col-xs-10 zeropad">

            <div style="height: 25px;"></div>
            <p>
                Please click on submit manuscript and fill the form appeared below
            </p>
            <div class="col-xs-12 zeropad form-horizontal">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtprefix">Prefix :</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="txtprfix" placeholder="Enter prefix" /><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtCAuthor">Corresponding Author :</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="txtCAuthor" placeholder="Enter Corresponding Author" /><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtEmail">Email :</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="txtEmail" placeholder="Enter Email Address" /><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="ddlCategory">Select Category :</label>
                    <div class="col-sm-9">
                        <select class="form-control">
                            <option>Select Category
                            </option>
                            <option>Engineering
                            </option>
                        </select><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtTitle">Title of Manuscript :</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="txtTitle" placeholder="Enter Title of Manuscript" /><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtAbstract">Abstract(Max 300 words)</label>
                    <div class="col-sm-9">
                        <textarea rows="3" class="form-control" id="txtAbstract"></textarea><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txtKeywords">Keywords :</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="txtKeyword1" placeholder="Keywords by coma seperated(Eg: Automatic assembly, Assembly sequence..etc)" /><br />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="coverletter">Cover Letter :</label>
                    <div class="col-sm-9" style="padding-bottom: 20px;">
                        <div class="input-group">
                            <label class="input-group-btn">
                                <span class="btn btn-primary">Browse
                                <input type="file" style="display: none;">
                                </span>
                            </label>
                            <input type="text" class="form-control" readonly placeholder="Only Word Documents Max Size 1MB">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="coverletter">Author Information :</label>

                    <div class="col-sm-9" style="padding-bottom: 20px;">
                        <div class="input-group">
                            <label class="input-group-btn">
                                <span class="btn btn-primary">Browse
                                <input type="file" style="display: none;">
                                </span>
                            </label>
                            <input type="text" class="form-control" placeholder="Only Word Documents Max Size 1MB" readonly> 
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="coverletter">Blind Manuscript :</label>

                   <div class="col-sm-9" style="padding-bottom: 20px;">
                        <div class="input-group">
                            <label class="input-group-btn">
                                <span class="btn btn-primary">Browse
                                <input type="file" style="display: none;">
                                </span>
                            </label>
                            <input type="text" placeholder="Only Word Documents Max Size 1MB" class="form-control" readonly> 
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-sm-3" for="Sfiles">Attach Supporting Files :</label>
                    <div class="col-sm-9" style="padding-bottom: 20px;">
                        <div class="input-group">
                            <label class="input-group-btn">
                                <span class="btn btn-primary">Browse
                                <input type="file"  multiple style="display: none;">
                                </span>
                            </label>
                            <input type="text" placeholder="You can Upload Multiple Files [Max 10 MB Size]" class="form-control" readonly >
                        </div>
                    </div>
                   
                </div>
                <div class="form-group">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <input type="button" class="btn-info" value="Submit Manuscript" />
                        <input type="button" class="btn-info" value="Cancel" />

                    </div>
                    <div class="col-sm-4">
                    </div>

                </div>

            </div>
            <div style="height: 25px; clear: both;"></div>
        </div>
        <div class="col-xs-1 zeropad">
        </div>
    </div>
</asp:Content>
