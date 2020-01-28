<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="frmPanel.aspx.cs" Inherits="MCWebHogar.CRM.frmPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <%--<section class="content-header">
       <div class="row">
      
        </div>
    </section>--%>

    <style>
        .embed-container {
            position: relative;
            padding-bottom: 56.25%;
            height: 0;
            overflow: hidden;
        }

            .embed-container iframe {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }

        .embed-container {
            position: relative;
            height: 0;
            overflow: hidden;
        }

        .16by9 {
            padding-bottom: 56.25%;
        }

        .4by3 {
            padding-bottom: 75%;
        }

        .embed-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .mi-iframe {
            width: 100px;
            height: 50px;
        }

        /* CSS pantallas de 320px o superior */
        @media (min-width: 320px) {

            .mi-iframe {
                width: 200px;
                height: 150px;
            }
        }

        /* CSS pantalla 768px o superior */
        @media (min-width: 768px) {

            .mi-iframe {
                width: 500px;
                height: 350px;
            }
        }
    </style>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">
                            <i class="fa fa-pie-chart"></i>
                            <span>Dashboard</span>
                        </a></li>
                        <li class="pull-right"><a style="display: none;" id="configRpt" href="./frmConfig.aspx" class="text-muted"><i class="fa fa-gear"></i></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="row">
                                <div class="col-md-12" <%--style="text-align: center; overflow-x: auto;"--%>>
                                    <div class="embed-container">

                                        <iframe id="frameRpt"
                                            frameborder="0"
                                            width="1200" height="530"
                                            allowfullscreen="true"></iframe>
                                    </div>
                                </div>
                                <div class="col-md-4" id="colPanel"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /.tab-content -->
                </div>
            </div>
        </div>

    </section>
    <script src="../Scripts/panel.js">
    </script>
    <script>
        var panels = new Panel();
        panels.init();
    </script>
</asp:Content>
