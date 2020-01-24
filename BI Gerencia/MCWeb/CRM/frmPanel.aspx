<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="frmPanel.aspx.cs" Inherits="MCWebHogar.CRM.frmPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <%--<section class="content-header">
       <div class="row">
      
        </div>
    </section>--%>
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab">
                            <i class="fa fa-pie-chart"></i>
                            <span>Dashboard</span>
                                           </a></li>
                        <li class="pull-right"><a style="display:none;" id="configRpt" href="./frmConfig.aspx" class="text-muted"><i class="fa fa-gear"></i></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="row">
                              
                                <div class="col-md-12" style="text-align:center;  overflow-x: auto;">
                                    <iframe id="frameRpt"
                                         frameborder="0"
                                        width="1200" height="530"
                                        allowFullScreen="true">
                                    </iframe>
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
