<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="EditorialGuideLines.aspx.cs" Inherits="Website.Forms.EditorialGuideLines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/home.css" rel="stylesheet" />
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
            <div style="height: 25px;display:inline">
                <img style="width:50px;" src="../Images/pdficon.png" /><a download="EditorialGuide" href="../FileServer/PdfFiles/ParaaEditorialpolicy.pdf" >Download as PDF</a>
            </div>
            <div>
                <h3>Editorial Policies</h3>

                <ol>
                    <li>
                        <p>
                            All the authors must go through the following documents before their manuscript submission.
                        </p>
                        <ul>
                            <li>
                                Manuscript preparation guidelines
                            </li>
                            <li>
                                Manuscript submission process
                            </li>
                            <li>
                                Peer review process
                            </li>
                            <li>
                                Author benefits
                            </li>
                        </ul>
                    </li>
                    <li>
                        <p>
                            All the published scientific articles are freely available in the journal archive for download and/or view at no cost.
                        </p>
                    </li>
                    <li>
                        <p>
                            Commercial use, distribution and reproduction of published article in any medium without proper permission from publisher/proper citation of article are offensive. 
                        </p>
                    </li>
                    <li>
                        <p>
                            Paraa publishers follows the double blind peer-review procedure for all submitted manuscripts to its journals to ensure high quality peer review process. Double blind is the most common type of peer-reviewing in which the identity of the reviewers and authors are not disclosed to one another. 
                        </p>
                    </li>
                    <li>
                        <p>
                            All submitted articles are subject to preliminary screening and then an extensive peer review based on EIC decision; (Generally two reviewer’s comments will be considered). All manuscripts are assessed rapidly and the decision taken by the journal's Editor-in-cheif based on associate editor recommendation. (please refer the editorial system).
                        </p>
                    </li>
                    <li>
                        <p>
                            All necessary efforts are made to accelerate the peer review process leading timely publication.
                        </p>
                    </li>
                    <li>
                        <p>
                            Authors have the flexibility to publish a wide range of articles in all the journals of Paraa publications e.g. Research Paper, Review articles, short communications, Technical note, High quality conference proceedings and case studies.
                        </p>
                    </li>
                    <li>
                        <p>
                            An approval from their  institutional research review board should be provided in case of For human or animal based experimental investigations are listed in the paper. 
                        </p>
                    </li>
                    <li>
                        <p>
                            All the authors complaints related to the journal should be referred to mewjmea@paraa.com 
                        </p>
                    </li>
                    <li>
                        <p>
                            Paraa publications allow similarity index up to 15% for a technical note, 20% for a research manuscript and 25% for review paper. 
                        </p>
                        <p>
                            Besides the overall similarity index should not be from a single document, it is preferred to have lesser than 5% similarity index from a single source. 
                        </p>
                        <p>
                            The articles appear in the similarity report must be properly cited and referred.
                        </p>
                        <p>
                            Any other kind of plagiarism by authors is highly opposed (From published/unpublished work)
                        </p>
                    </li>
                    <li>
                        <p>
                            It is a condition of publication that manuscripts submitted to this journal should not be published and is not concurrently submit elsewhere.
                        </p>
                    </li>
                    <li>
                        <p>
                            Intentional Citation manipulation of an author/journal is highly prohibited   
                        </p>
                    </li>
                    <li>
                        <p>
                            If any violation of publication ethics, the authors are put in black listed for manuscript submission to all the journals under paraa publications and an email will be sent to the author’s head of institution based on the author’s affiliation.
                        </p>
                    </li>
                    
                </ol>
            </div>
        </div>

    </div>
</asp:Content>
