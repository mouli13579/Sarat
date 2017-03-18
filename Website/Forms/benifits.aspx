<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="benifits.aspx.cs" Inherits="Website.Forms.benifits" %>

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
            <div>
                <h3 style="font-family: cursive;">Author Benefits :</h3>
                <ol>
                    <li>All the published scientific articles are freely available in the journal archive for download and/or view at no cost.</li>
                    <li>Each article submitted to the journal will be thoroughly checked for similarity index.</li>
                    <li>Provide your comments both major and minor to enrich the research quality. Please specify the page/section/paragraph/line number for better communication.</li>

                    <li>Please go through the authors response document before reviewing the revised manuscript.</li>
                    <li>Each accepted article will be edited by experts and typesetting will be done properly.</li>
                    <li>Minimum publication time.</li>
                </ol>
                <p>For further information please contact<a href="#"> support@paraapublications.com</a></p>

            </div>
            <div>
                <h3 style="font-family: cursive;">Reviewer Benefits :</h3>
                <p>
                    <ul style="list-style-type: circle">
                        <li>Each reviewer will be offered up to $10 for review of an article, if it gets published in the journal  & up to $5 for review of an article irrespective of publication. (However this will be applicable to the reviewers who have done at least reviews for minimum 10 articles).</li>
                        <li>A reviewer will be considered as editor of the journal based on his contributions to journal.</li>
                    </ul>
                    <h6><u>Reviewer Guidelines:</u></h6>
                </p>
                <p>
                    A reviewer must be known for his/her contribution in the specific domain.
An abstract will be send to take the reviewers consent. A reviewer should reply with willingness/ unwillingness to perform review within five days to the editor.
Upon the acceptance, an unpublished manuscript along with a review form and reviewer guide lines will be sent.
All unpublished manuscripts submitted to reviewer for review process are highly confidential documents, hence no discussions with his/her colleagues/friends are strongly recommended. 
                </p>
                <ol>
                    <li>The purpose of peer review system is to enhance the quality of research and presentation through reviewer’s valuable significant comments and compliments. A reviewer should  identify the novelty of the contributions in that domain.</li>
                    <li>Summarize your understanding of the article describing strengths and weakness of the article.</li>
                    <li>Provide your comments both major and minor to enrich the research quality. Please specify the page/section/paragraph/line number for better communication.</li>

                    <li>Please go through the authors response document before reviewing the revised manuscript.</li>
                </ol>
                <p>Please go through the “Peer review process” for more details.</p>

            </div>
        </div>
    </div>
</asp:Content>
