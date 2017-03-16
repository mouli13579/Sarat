﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Website.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../Scripts/libs/jssor.slider-22.2.16.mini.js"></script>
   <%--  <script type="text/javascript">
         jQuery(document).ready(function ($) {

             var jssor_1_SlideshowTransitions = [
               { $Duration: 1200, $Opacity: 2 }
             ];

             var jssor_1_options = {
                 $AutoPlay: true,
                 $SlideshowOptions: {
                     $Class: $JssorSlideshowRunner$,
                     $Transitions: jssor_1_SlideshowTransitions,
                     $TransitionsOrder: 1
                 },
                 $ArrowNavigatorOptions: {
                     $Class: $JssorArrowNavigator$
                 },
                 $BulletNavigatorOptions: {
                     $Class: $JssorBulletNavigator$
                 }
             };

             var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

             /*responsive code begin*/
             /*you can remove responsive code if you don't want the slider scales while window resizing*/
             function ScaleSlider() {
                 var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                 if (refSize) {
                     refSize = Math.min(refSize, 600);
                     jssor_1_slider.$ScaleWidth(refSize);
                 }
                 else {
                     window.setTimeout(ScaleSlider, 30);
                 }
             }
             ScaleSlider();
             $(window).bind("load", ScaleSlider);
             $(window).bind("resize", ScaleSlider);
             $(window).bind("orientationchange", ScaleSlider);
             /*responsive code end*/
         });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }

            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                position: absolute;
                /* size of bullet elment */
                width: 16px;
                height: 16px;
                background: url('img/b05.png') no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb05 div {
                background-position: -7px -7px;
            }

                .jssorb05 div:hover, .jssorb05 .av:hover {
                    background-position: -37px -7px;
                }

            .jssorb05 .av {
                background-position: -67px -7px;
            }

            .jssorb05 .dn, .jssorb05 .dn:hover {
                background-position: -97px -7px;
            }

        /* jssor slider arrow navigator skin 12 css */
        /*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
        .jssora12l, .jssora12r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 30px;
            height: 46px;
            cursor: pointer;
            background: url('img/a12.png') no-repeat;
            overflow: hidden;
        }

        .jssora12l {
            background-position: -16px -37px;
        }

        .jssora12r {
            background-position: -75px -37px;
        }

        .jssora12l:hover {
            background-position: -136px -37px;
        }

        .jssora12r:hover {
            background-position: -195px -37px;
        }

        .jssora12l.jssora12ldn {
            background-position: -256px -37px;
        }

        .jssora12r.jssora12rdn {
            background-position: -315px -37px;
        }
    </style>--%>

    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{ b: 0, d: 600, y: -290, e: { y: 27 } }],
              [{ b: 0, d: 1000, y: 185 }, { b: 1000, d: 500, o: -1 }, { b: 1500, d: 500, o: 1 }, { b: 2000, d: 1500, r: 360 }, { b: 3500, d: 1000, rX: 30 }, { b: 4500, d: 500, rX: -30 }, { b: 5000, d: 1000, rY: 30 }, { b: 6000, d: 500, rY: -30 }, { b: 6500, d: 500, sX: 1 }, { b: 7000, d: 500, sX: -1 }, { b: 7500, d: 500, sY: 1 }, { b: 8000, d: 500, sY: -1 }, { b: 8500, d: 500, kX: 30 }, { b: 9000, d: 500, kX: -30 }, { b: 9500, d: 500, kY: 30 }, { b: 10000, d: 500, kY: -30 }, { b: 10500, d: 500, c: { x: 87.50, t: -87.50 } }, { b: 11000, d: 500, c: { x: -87.50, t: 87.50 } }],
              [{ b: 0, d: 600, x: 410, e: { x: 27 } }],
              [{ b: -1, d: 1, o: -1 }, { b: 0, d: 600, o: 1, e: { o: 5 } }],
              [{ b: -1, d: 1, c: { x: 175.0, t: -175.0 } }, { b: 0, d: 800, c: { x: -175.0, t: 175.0 }, e: { c: { x: 7, t: 7 } } }],
              [{ b: -1, d: 1, o: -1 }, { b: 0, d: 600, x: -570, o: 1, e: { x: 6 } }],
              [{ b: -1, d: 1, o: -1, r: -180 }, { b: 0, d: 800, o: 1, r: 180, e: { r: 7 } }],
              [{ b: 0, d: 1000, y: 80, e: { y: 24 } }, { b: 1000, d: 1100, x: 570, y: 170, o: -1, r: 30, sX: 9, sY: 9, e: { x: 2, y: 6, r: 1, sX: 5, sY: 5 } }],
              [{ b: 2000, d: 600, rY: 30 }],
              [{ b: 0, d: 500, x: -105 }, { b: 500, d: 500, x: 230 }, { b: 1000, d: 500, y: -120 }, { b: 1500, d: 500, x: -70, y: 120 }, { b: 2600, d: 500, y: -80 }, { b: 3100, d: 900, y: 160, e: { y: 24 } }],
              [{ b: 0, d: 1000, o: -0.4, rX: 2, rY: 1 }, { b: 1000, d: 1000, rY: 1 }, { b: 2000, d: 1000, rX: -1 }, { b: 3000, d: 1000, rY: -1 }, { b: 4000, d: 1000, o: 0.4, rX: -1, rY: -1 }]
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $Idle: 2000,
                $CaptionSliderOptions: {
                    $Class: $JssorCaptionSlideo$,
                    $Transitions: jssor_1_SlideoTransitions,
                    $Breaks: [
                      [{ d: 2000, b: 1000 }]
                    ]
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 600);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 01 css */
        /*
        .jssorb01 div           (normal)
        .jssorb01 div:hover     (normal mouseover)
        .jssorb01 .av           (active)
        .jssorb01 .av:hover     (active mouseover)
        .jssorb01 .dn           (mousedown)
        */
        .jssorb01 {
            position: absolute;
        }
        .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
            position: absolute;
            /* size of bullet elment */
            width: 12px;
            height: 12px;
            filter: alpha(opacity=70);
            opacity: .7;
            overflow: hidden;
            cursor: pointer;
            border: #000 1px solid;
        }
        .jssorb01 div { background-color: gray; }
        .jssorb01 div:hover, .jssorb01 .av:hover { background-color: #d3d3d3; }
        .jssorb01 .av { background-color: #fff; }
        .jssorb01 .dn, .jssorb01 .dn:hover { background-color: #555555; }

        /* jssor slider arrow navigator skin 02 css */
        /*
        .jssora02l                  (normal)
        .jssora02r                  (normal)
        .jssora02l:hover            (normal mouseover)
        .jssora02r:hover            (normal mouseover)
        .jssora02l.jssora02ldn      (mousedown)
        .jssora02r.jssora02rdn      (mousedown)
        .jssora02l.jssora02lds      (disabled)
        .jssora02r.jssora02rds      (disabled)
        */
        .jssora02l, .jssora02r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 55px;
            height: 55px;
            cursor: pointer;
            background: url('img/a02.png') no-repeat;
            overflow: hidden;
        }
        .jssora02l { background-position: -3px -33px; }
        .jssora02r { background-position: -63px -33px; }
        .jssora02l:hover { background-position: -123px -33px; }
        .jssora02r:hover { background-position: -183px -33px; }
        .jssora02l.jssora02ldn { background-position: -3px -33px; }
        .jssora02r.jssora02rdn { background-position: -63px -33px; }
        .jssora02l.jssora02lds { background-position: -3px -33px; opacity: .3; pointer-events: none; }
        .jssora02r.jssora02rds { background-position: -63px -33px; opacity: .3; pointer-events: none; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:25px;"></div>
    <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 950px; height: 300px; overflow: hidden; visibility: hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" style="position: absolute; top: 0px; left: 0px; background-color: rgba(0,0,0,0.7);">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                    <div style="position: absolute; display: block; background: url('img/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                </div>
                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 950px; height: 300px; overflow: hidden;">

                    <div>
                        <img data-u="image" src="../Images/slide42.jpg" />
                    </div>
                    <div>
                        <img data-u="image" src="../Images/slide43.jpg" />
                    </div>
                   
                </div>
                <!-- Bullet Navigator -->
                <div data-u="navigator" class="jssorb05" style="bottom: 16px; right: 16px;" data-autocenter="1">
                    <!-- bullet navigator item prototype -->
                    <div data-u="prototype" style="width: 16px; height: 16px;"></div>
                </div>
                <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora12l" style="top: 0px; left: 0px; width: 30px; height: 46px;" data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora12r" style="top: 0px; right: 0px; width: 30px; height: 46px;" data-autocenter="2"></span>
            </div>
    <div style="height:25px;"></div>
     <div class="col-xs-12">
        <p>
            PARAA is an emerging academic journal in the field of Engineering and Technology which publishes articles in the disciplines of Mechanics, Advanced Materials Characterization, Robotics and Automation, Fuel Combustion and Energy, Heat & Mass Transfer, Production & industrial engineering, Engineering, Optimization & Production Techniques.  This journal motive and aim is to publish high level research and quality journals. This journal is a scholarly journal maintains high standards of scientific excellence and its editorial board ensures a rapid peer review process with the help of the Editorial Manager System. Manuscripts are accepted for publication only if editors agree on the quality of a submitted manuscript.
        </p>
         <p>
              Providing an open access to the authors, allows free and unrestricted access to the published findings in the concerned domain. Thus helping the authors to keep informing and educating about the latest research in associated disciplines.
         </p>
         <p>
             Publishing journals monthly online, we welcome all the authors, engineers, scientists and students to come forward with their ideas and research articles. We have a team of scientist who review and provide guidance for writing quality journals. Accepted journals are published in upcoming issue with online ISSN number.
         </p>
         <p>
             PARAA PUBLICATIONS mission is to help the research personnel and publish their quality articles in the journal. We offer a simple interface and online service helps you easy discoverability and alerting options to publish the best journal in time.
         </p>
    </div>
    <div style="height:25px;"></div>
</asp:Content>
