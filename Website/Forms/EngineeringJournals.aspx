<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="EngineeringJournals.aspx.cs" Inherits="Website.Forms.EngineeringJournals" %>
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
                    <span class="main-text">Issue Publication last Date: Apr</span> 20, 2017
                </p>
            </div>
        </div>
        <div class="col-xs-9 home-content ">
            <div class="col-xs-12" style="height: 10px;">
            </div>
            <div class="col-xs-12 zeropad">
                <div class="col-xs-5">
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Mechanics,Design,FEA</label>
                        </header>
                        <div class="divMech">
                            <div class="Mechbg"></div>
                            <ul>
                                <li class="">
                                    <label>Applied Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Solid Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Bio-Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Triboloty</label>
                                </li>
                                <li class="">
                                    <label>Structural Dynamics</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="card">                        
                        
                            <h5 class="card-header">Mechanics,Design,FEA</h5>
                            <ul>
                                <li class="">
                                    <label>Applied Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Solid Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Bio-Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Triboloty</label>
                                </li>
                                <li class="">
                                    <label>Structural Dynamics</label>
                                </li>
                            </ul>
                       
                    </div>
                </div>
                <div class="col-xs-1 "></div>
                <div class="col-xs-6">
                    <div class="card">
                        <h5 class="card-header">Advanced materials characterization and coatings</h5>
                        <ul>

                            <li class="">
                                <label>Smart Materials</label>
                            </li>
                            <li class="">
                                <label>Composite Materials</label>
                            </li>
                            <li class="">
                                <label>Nano Materials</label>
                            </li>
                            <li class="">
                                <label>Mulitifunctional Materials</label>
                            </li>
                            <li class="">
                                <label>metallurgical characterisation</label>
                            </li>
                        </ul>
                    </div>
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Advanced materials characterization and coatings</label>
                        </header>
                        <div class="divMech">
                            <div class="Matbg"></div>
                            <ul>

                                <li></li>
                                <li class="">
                                    <label>Smart Materials</label>
                                </li>
                                <li class="">
                                    <label>Composite Materials</label>
                                </li>
                                <li class="">
                                    <label>Nano Materials</label>
                                </li>
                                <li class="">
                                    <label>Mulitifunctional Materials</label>
                                </li>
                                <li class="">
                                    <label>metallurgical characterisation</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                </div>

            </div>
            <div class="col-xs-12" style="height: 10px;">
            </div>
            <div class="col-xs-12 zeropad">
                <div class="col-xs-5">
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Robotics and Automation</label>
                        </header>
                        <div class="divMech">
                            <div class="Robbg"></div>
                            <ul>

                                <li></li>
                                <li class="">
                                    <label>Forward and inverse kinematics</label>
                                </li>
                                <li class="">
                                    <label>Wheeled Robots</label>
                                </li>
                                <li class="">
                                    <label>Industrial Robots</label>
                                </li>
                                <li class="">
                                    <label>Sensors  and Actuators</label>
                                </li>
                                <li class="">
                                    <label>Robot Path Planning UAV</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="card">
                        <h5 class="card-header">Robotics and Automation</h5>
                        <ul>

                            <li></li>
                            <li class="">
                                <label>Forward and inverse kinematics</label>
                            </li>
                            <li class="">
                                <label>Wheeled Robots</label>
                            </li>
                            <li class="">
                                <label>Industrial Robots</label>
                            </li>
                            <li class="">
                                <label>Sensors  and Actuators</label>
                            </li>
                            <li class="">
                                <label>Robot Path Planning UAV</label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-1"></div>

                <div class="col-xs-6 ">
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Fuels, Combustion & Energy</label>
                        </header>
                        <div class="divMech">
                            <div class="FCEbg"></div>
                            <ul>

                                <li class="">
                                    <label>Alternate Fuels</label>
                                </li>
                                <li class="">
                                    <label>Bio Fuels</label>
                                </li>
                                <li class="">
                                    <label>IC Engines</label>
                                </li>
                                <li class="">
                                    <label>Combustion</label>
                                </li>
                                <li class="">
                                    <label>Emission Control</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="card">
                        <h5 class="card-header">Fuels, Combustion & Energy</h5>
                        <ul>

                                <li class="">
                                    <label>Alternate Fuels</label>
                                </li>
                                <li class="">
                                    <label>Bio Fuels</label>
                                </li>
                                <li class="">
                                    <label>IC Engines</label>
                                </li>
                                <li class="">
                                    <label>Combustion</label>
                                </li>
                                <li class="">
                                    <label>Emission Control</label>
                                </li>
                            </ul>
                    </div>

                </div>
            </div>
            <div class="col-xs-12" style="height: 10px;">
            </div>
            <div class="col-xs-12 zeropad">
                <div class="col-xs-5">
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Engineering Optimization and Prediction techniques</label>
                        </header>
                        <div class="divMech">
                            <div class="EOPbg"></div>
                            <ul>
                                <li class="">
                                    <label>Advanced Optimization techniques</label>
                                </li>
                                <li class="">
                                    <label>Hybrid Algorithm</label>
                                </li>
                                <li class="">
                                    <label>Bio-Inspired Algorithm</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="card">
                        <h5 class="card-header">Engineering Optimization and Prediction techniques</h5>
                       <ul>
                                <li class="">
                                    <label>Advanced Optimization techniques</label>
                                </li>
                                <li class="">
                                    <label>Hybrid Algorithm</label>
                                </li>
                                <li class="">
                                    <label>Bio-Inspired Algorithm</label>
                                </li>
                            </ul>
                    </div>
                </div>
                <div class="col-xs-1"></div>
                <div class="col-xs-6 ">
                    <%--<div class="box-style PIE">
                        <header class="header-panel" align="center">
                            <label>Heat and Mass Transfer, Thermal Sciences </label>
                        </header>
                        <div class="divMech">
                            <div class="HMTSbg"></div>
                            <ul>
                                <li class="">
                                    <label>Heat Transfer CFD</label>
                                </li>
                                <li class="">
                                    <label>Radiation</label>
                                </li>
                                <li class="">
                                    <label>Fuild Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Refrigeration</label>
                                </li>
                                <li class="">
                                    <label>Thermodynamics</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                     <div class="card">
                        <h5 class="card-header">Heat and Mass Transfer, Thermal Sciences</h5>
                        <ul>
                                <li class="">
                                    <label>Heat Transfer CFD</label>
                                </li>
                                <li class="">
                                    <label>Radiation</label>
                                </li>
                                <li class="">
                                    <label>Fuild Mechanics</label>
                                </li>
                                <li class="">
                                    <label>Refrigeration</label>
                                </li>
                                <li class="">
                                    <label>Thermodynamics</label>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
            <div class="col-xs-12" style="height: 10px;">
            </div>
            <div class="col-xs-12 zeropad">
                <div class="col-xs-5">
                    <%--<div class="box-style">
                        <header class="header-panel" align="center">
                            <label>Production and Industrial Engineering</label>
                        </header>
                        <div class="divMech">
                            <div class="PIEbg"></div>
                            <ul>

                                <li></li>
                                <li class="">
                                    <label>Machining</label>
                                </li>
                                <li class="">
                                    <label>Advanced Machining</label>
                                </li>
                                <li class="">
                                    <label>Assembly</label>
                                </li>
                                <li class="">
                                    <label>Disassembly</label>
                                </li>
                                <li class="">
                                    <label>Decision Sciences</label>
                                </li>
                                <li>
                                    <label>Industrial Engineering</label>
                                </li>
                                <li class="">
                                    <label>Supply Chain Optimization</label>
                                </li>
                                <li class="">
                                    <label>Supply Chain Risk Management</label>
                                </li>
                                <li>
                                    <label>Quality Management</label>
                                </li>
                                <li>
                                    <label>Operations Management</label>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="card">
                        <h5 class="card-header">Production and Industrial Engineering</h5>
                         <ul>

                                <li></li>
                                <li class="">
                                    <label>Machining</label>
                                </li>
                                <li class="">
                                    <label>Advanced Machining</label>
                                </li>
                                <li class="">
                                    <label>Assembly</label>
                                </li>
                                <li class="">
                                    <label>Disassembly</label>
                                </li>
                                <li class="">
                                    <label>Decision Sciences</label>
                                </li>
                                <li>
                                    <label>Industrial Engineering</label>
                                </li>
                                <li class="">
                                    <label>Supply Chain Optimization</label>
                                </li>
                                <li class="">
                                    <label>Supply Chain Risk Management</label>
                                </li>
                                <li>
                                    <label>Quality Management</label>
                                </li>
                                <li>
                                    <label>Operations Management</label>
                                </li>
                            </ul>
                    </div>
                </div>
                <div class="col-xs-1"></div>
                <div class="col-xs-6 ">
                </div>
            </div>
            <div class="col-xs-12" style="height: 10px;">
            </div>
        </div>
    </div>
</asp:Content>
