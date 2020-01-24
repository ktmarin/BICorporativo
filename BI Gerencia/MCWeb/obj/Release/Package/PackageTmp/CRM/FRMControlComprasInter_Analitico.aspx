
<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMControlComprasInter_Analitico.aspx.cs" Inherits="MCWebHogar.CRM.Reports.FRMControlComprasInter_Analitico"   EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <div class="main container">

 
<%--Adding text to chart title--%>
      <link href="../Styles/style_crmv.css" rel="stylesheet" />

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
    <style type = "text/css">

        .ImageButton1
        {
            background-image: url(../images/Excel_32.png);
            background-repeat:no-repeat;
            width: 32px;
            height: 32px;
        }
 

        #container
        {
            border:none 0px transparent;
            margin:0px;
            padding:0px;
            

        }
    .sortAsc
    {
        background-image: url(../images/asc.gif);
        background-repeat: no-repeat;
        background-position: center right;
        cursor: pointer;
        width:auto;
    }
    .sortDesc
    {
        background-image: url(../images/desc.gif);
        
        background-repeat: no-repeat;
        background-position: center right;
        cursor: pointer;
        width:auto;
    }
    .gridhh
    {
        font-family:Arial;
        font-size:8pt;
        width:100%;
         background-image:none;
         /*margin-top:10px; detalle*/ 
          /*border: solid 1px gray;*/ 
    }
    .gridhh  thead
    {
         background-color:#f7f7f7;
         border-color:navy;
         /*border-color:none;*/ 
         /*color:black;*/
         background:#f7f7f7 url(../images/box_bg.gif) repeat-x;
       
    }


    .gridhh th
        {
	        /*background:#f9f9f9 url(../images/box_bg.gif) repeat-x;*/
              background: none;

            /*height:19px; encabezado y el de abajo el borde del en*/
           border: solid 2px transparent; 
           
            background:#ffffff url(../images/box_bg.gif) repeat-x;
       
	        /*border-bottom-color:Gray;*/
        
            font-weight:normal;
            	/*color:black ;*/
                /*padding:2px;*/
	  
        }


</style>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#spinner").bind("ajaxSend", function () {
                $(this).show();
            }).bind("ajaxStop", function () {
                $(this).hide();
            }).bind("ajaxError", function () {
                $(this).hide();
            });
        });
        $(document).ready(function () {

      
            $('#UpPrincipal').click(function () {
                  //$('#spinner').show();
                //  $("#DivPrincipal").hide("slow");
                //$("#DivMostrar").show("slow");

                $("#DivPrincipal").css({ 'display': 'none' });
                $("#Izquierdo").css({ 'display': 'none' });
                $("#Derecho").css({ 'display': 'none' });
                $("#ListadodeGrupos").css({ 'height': '30px' });

                $("#DownPrincipal").show("slow");
                $("#UpPrincipal").hide("slow");

            });
            $('#DownPrincipal').click(function () {
                //$('#spinner').show();
                //$("#DivPrincipal").show("slow");
                //$("#DivMostrar").hide("slow");

                $("#DivPrincipal").css({ 'display': 'Block' });
                $("#Izquierdo").css({ 'display': 'Block' });
                $("#Derecho").css({ 'display': 'Block' });
                $("#ListadodeGrupos").css({ 'height': 'auto' });

                $("#DownPrincipal").hide("slow");
                $("#UpPrincipal").show("slow");

                



            });
            $("#DivClick").click(function () {
                $("#DivMostrar").show("slow");
                $("#DivPrincipal").hide("slow");
            });
            $("#ClickPrincipal").click(function () {
                $("#DivPrincipal").show("slow");
                $("#DivMostrar").hide("slow");


            });


            //$("#DivPrincipal").hide("slow");
            //$("#DivPrincipal").show("slow");
            //$("#DivMostrar").hide("slow");


            //$("#DownPrincipal").click(function () {
            //    //$("#DivPrincipal").show("slow");
            //        $("#DivMostrar").show("slow");
            //        //$("#DivPrincipal").show("slow");
            //});

            //$("#UpPrincipal").click(function () {
              
            //    //$("#DivPrincipal").hide("slow");
            //        $("#DivMostrar").hide("slow");
            //});

            //    $("#DivPrincipal").show("slow");
            //    $("#DivMostrar").hide("slow");
            //$('#BTN_Lectura').click(function () {
            //    $('#spinner').show();
            //    $("#DivPrincipal").show("slow");
            //});

            //$("#DivClick").click(function () {
            //    $("#DivMostrar").show("slow");
            //    $("#DivPrincipal").hide("slow");
            //});
            //$("#ClickPrincipal").click(function () {
            //    $("#DivPrincipal").show("slow");
            //    $("#DivMostrar").hide("slow");


            //});

        });
</script>

        <script type='text/javascript'>
            xAddEventListener(window, 'load',
                function () { new xTableHeaderFixed('gvTheGrid', 'table-container', 0); }, false);
    </script>


       
         

    <div id="ControlGeneral" class="Contenido" style="height: auto; overflow: hidden; width: 1360px; background-color:white; margin-top:70px; padding:20px;"<%-- style="margin-top:70px;"--%>>

          <div class="rowsPanel panel panel-primary" style="margin-top:10px;">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse1">
               Control de Compras <span class="rightBar glyphicon glyphicon-chevron-down"></span>
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse1">

                         <div id="Encabezado" style="float: left; height: 5px; width: 100%; border-bottom: solid; border-color: gray; border-bottom-color: orangered;">
                             <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>
            </div>



            <div id="SeleccionProveedor"  style="width: 100%;">
                <div id="Div222" style="margin-left: 0px; margin-top: 5px; width: 100%; height: 35px; float: left;">

                    <asp:Label ID="Label2" runat="server" Text="Fecha Desde:"></asp:Label>&nbsp;
                            <asp:DropDownList
                                ID="DT_Mes1" runat="server">
                                <asp:ListItem Value="1"></asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>



                    <asp:DropDownList
                        ID="DT_Anio1" runat="server">
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem Selected="True">2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Hasta:"></asp:Label>&nbsp;
                            <asp:DropDownList
                                ID="DT_Mes2" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                            </asp:DropDownList>

                    <asp:DropDownList
                        ID="DT_Anio2" runat="server">
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem Selected="True">2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                    </asp:DropDownList>

                    &nbsp;&nbsp;
                                 <asp:Button ID="CMD_Grupos" runat="server" Text="Cargar Datos"
                                     CssClass=" btn btn-success" Height="35px"
                                     Width="130px" ForeColor="White" EnableTheming="False" EnableViewState="False"
                                     UseSubmitBehavior="False" ViewStateMode="Disabled" OnClick="CMD_Grupos_Click" />
                    &nbsp;&nbsp;
                    


                </div>

            </div>

                  <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>

                        </div>

                    </div>
                </div>


           <div class="rowsPanel panel panel-primary" style="margin-top:10px;">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse2">
                Cuadro General
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse2">

                                <div id="Izquierdo" style="overflow: auto; float: left; width: 50%; height: 435px; margin: 0px 0px 13px 0px;">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <asp:UpdatePanel ID="UpdatePanelGrafico" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                                <ContentTemplate>
                                                    <div id="Tipo Grafico" style="width: 100%; margin: 0px;">
                                                        <asp:Label ID="Label3" runat="server" Text="Hasta:" Visible="False"></asp:Label>
                                                        &nbsp;
                                                        <asp:DropDownList
                          ID="DropTipoMoneda" runat="server" Visible="False">
                                                            <asp:ListItem Selected="True">Detalle Familias</asp:ListItem>
                                                            <asp:ListItem>Venta Neta Meses</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Label ID="Label5" runat="server" Text="Tipo Gráfico:" Visible="False"></asp:Label>
                                                        &nbsp;
                                                        <asp:DropDownList
                          ID="DropTipoGrafico" runat="server" Width="150" AutoPostBack="true" OnSelectedIndexChanged="DropTipoGrafico_SelectedIndexChanged" OnTextChanged="DropTipoGrafico_TextChanged" Visible="False">
                                                            <asp:ListItem Selected="True">Barra</asp:ListItem>
                                                            <asp:ListItem>Pie</asp:ListItem>
                                                            <asp:ListItem>Lineal</asp:ListItem>
                                                            <asp:ListItem>Barra Vertical</asp:ListItem>
                                                            <asp:ListItem>Burbujas</asp:ListItem>
                                                            <asp:ListItem>Dona</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Button ID="CMD_Fase_Detalle" runat="server" OnClick="CMD_Fase_Detalle_Click" Text="Detalles" />
                                                    </div>
                                                    <div id="Graficos" style="width: 100%; margin: 0px; background-color: transparent; height: 385px;">

                                                        <asp:Chart ID="ChartFases" runat="server" Height="385px" Width="500px" BorderlineWidth="3">
                                                            <%--Adding text to chart title--%>
   <Titles> <asp:Title 
                    Text="Canal por fase"
                    ForeColor="Black"
                    Docking="Top"
                    Font="Arial, 15pt, style=Bold"
                    BorderColor="Gray"
                    >
           </asp:Title>
   </Titles>
                                                            <Series>
                                                                <asp:Series BorderWidth="3" Color="56, 120, 192" IsValueShownAsLabel="True"
                                                            LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Fase" ChartType="Bar" LabelBorderWidth="5" MarkerStep="1" YValuesPerPoint="1">
                                                                </asp:Series>
                                                                <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>
                                                            </Series>
                                                            <ChartAreas>
                                                                <asp:ChartArea Name="ChartArea1">
                                                                    <AxisY>
                                                                        <MajorGrid Enabled="False" />
                                                                    </AxisY>
                                                                    <AxisX>
                                                                        <MajorGrid Enabled="False" />
                                                                    </AxisX>
                                                                </asp:ChartArea>
                                                            </ChartAreas>
                                                            <Legends>
                                                                <asp:Legend Name="Legend1" Alignment="Center" BackImageAlignment="Center" Docking="Top" LegendStyle="Row">
                                                                </asp:Legend>
                                                            </Legends>
                                                        </asp:Chart>
                                                    </div>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="DropTipoGrafico" EventName="SelectedIndexChanged" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                </div>

                                <div id="Derecho" style="float: left; width: 50%; background-color: transparent; height: 440px; margin-left: 0px">
                                    <asp:UpdatePanel ID="UpdatePanelGrafico0" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                        <ContentTemplate>

                                            <div id="Tipo Grafico0" style="width: 100%; margin: 0px;">
                                                <asp:Label ID="Label6" runat="server" Text="Hasta:" Visible="False"></asp:Label>&nbsp;
                      <asp:DropDownList
                          ID="DropTipoMoneda0" runat="server" Visible="False">
                          <asp:ListItem Selected="True">Detalle Familias</asp:ListItem>
                          <asp:ListItem>Venta Neta Meses</asp:ListItem>
                      </asp:DropDownList>

                                                <asp:Label ID="Label7" runat="server" Text="Tipo Gráfico:" Visible="False"></asp:Label>&nbsp;
                      <asp:DropDownList
                          ID="DropTipoGrafico0" runat="server" Width="150" AutoPostBack="true" OnSelectedIndexChanged="DropTipoGrafico_SelectedIndexChanged" OnTextChanged="DropTipoGrafico_TextChanged" Visible="False">
                          <asp:ListItem Selected="True">Barra</asp:ListItem>
                          <asp:ListItem>Pie</asp:ListItem>
                          <asp:ListItem>Lineal</asp:ListItem>
                          <asp:ListItem>Barra Vertical</asp:ListItem>
                          <asp:ListItem>Burbujas</asp:ListItem>
                          <asp:ListItem>Dona</asp:ListItem>
                      </asp:DropDownList>


                                                <asp:Button ID="CMD_Cierre_Detalle" runat="server" OnClick="CMD_Cierre_Detalle_Click" Text="Detalles" />


                                            </div>
                                            <div id="Graficos0" style="width: 100%; margin: 0px; background-color: transparent; height: 385px;">

                                                <asp:Chart ID="ChartVentas" runat="server" Height="385px" Width="500px" BorderlineWidth="3">
                                                    
                                                    <Titles> <asp:Title 
                    Text="Cierres para el mes"
                    ForeColor="Black"
                    Docking="Top"
                    Font="Arial, 15pt, style=Bold"
                    BorderColor="Gray"
                    >
           </asp:Title>
   </Titles>
                                                    
                                                    <Series>
                                                        <asp:Series BorderWidth="3" Color="56, 120, 192" IsValueShownAsLabel="True"
                                                            LabelFormat="#,0;(#,0)" Legend="Legend1" Name="FechaCierre" ChartType="Pie" LabelBorderWidth="5" MarkerStep="1" YValuesPerPoint="1">
                                                        </asp:Series>
                                                        <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                            <AxisY>
                                                                <MajorGrid Enabled="False" />
                                                            </AxisY>
                                                            <AxisX>
                                                                <MajorGrid Enabled="False" />
                                                            </AxisX>
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                    <Legends>
                                                        <asp:Legend Name="Legend1" Alignment="Center" BackImageAlignment="Center" Docking="Top" LegendStyle="Row">
                                                        </asp:Legend>
                                                    </Legends>
                                                </asp:Chart>

                                            </div>
                                        </ContentTemplate>

                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="DropTipoGrafico" EventName="SelectedIndexChanged" />
                                        </Triggers>

                                    </asp:UpdatePanel>


                                </div>

                    <div style="float:left; width:100%; height:407px;  margin-top:10px;">

                                <div id="Izquierdo0" style="overflow: auto; float: left; width: 50%; height: 440px; margin: 0px 0px 13px 0px;">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:UpdatePanel ID="UpdatePanelGrafico1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                                <ContentTemplate>
                                                    <div id="Tipo Grafico1" style="width: 100%; margin: 0px;">
                                                        <asp:Label ID="Label8" runat="server" Text="Hasta:" Visible="False"></asp:Label>
                                                        &nbsp;
                                                        <asp:DropDownList
                          ID="DropTipoMoneda1" runat="server" Visible="False">
                                                            <asp:ListItem Selected="True">Detalle Familias</asp:ListItem>
                                                            <asp:ListItem>Venta Neta Meses</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Label ID="Label9" runat="server" Text="Tipo Gráfico:" Visible="False"></asp:Label>
                                                        &nbsp;
                                                        <asp:DropDownList
                          ID="DropTipoGrafico1" runat="server" Width="150" AutoPostBack="true" OnSelectedIndexChanged="DropTipoGrafico_SelectedIndexChanged" OnTextChanged="DropTipoGrafico_TextChanged" Visible="False">
                                                            <asp:ListItem Selected="True">Barra</asp:ListItem>
                                                            <asp:ListItem>Pie</asp:ListItem>
                                                            <asp:ListItem>Lineal</asp:ListItem>
                                                            <asp:ListItem>Barra Vertical</asp:ListItem>
                                                            <asp:ListItem>Burbujas</asp:ListItem>
                                                            <asp:ListItem>Dona</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <asp:Button ID="CMD_Prob_Detalles" runat="server" OnClick="CMD_Prob_Detalles_Click" Text="Detalles" />
                                                    </div>
                                                    <div id="Graficos1" style="width: 100%; margin: 0px; background-color: transparent; height: 385px;">
                                                        <asp:Chart ID="ChartProbabilidad" runat="server" Height="385px" Width="500px" BorderlineWidth="3">
                                                            <Titles> <asp:Title 
                    Text="Proyectos próximos 3 meses"
                    ForeColor="Black"
                    Docking="Top"
                    Font="Arial, 15pt, style=Bold"
                    BorderColor="Gray"
                    >
           </asp:Title>
   </Titles>
                                                            <Series>
                                                                <asp:Series BorderWidth="3" Color="56, 120, 192" IsValueShownAsLabel="True"
                                                            LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Probabilidad" ChartType="Funnel" LabelBorderWidth="5" MarkerStep="1" YValuesPerPoint="1">
                                                                </asp:Series>
                                                                <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>
                                                            </Series>
                                                            <ChartAreas>
                                                                <asp:ChartArea Name="ChartArea1">
                                                                    <AxisY>
                                                                        <MajorGrid Enabled="False" />
                                                                    </AxisY>
                                                                    <AxisX>
                                                                        <MajorGrid Enabled="False" />
                                                                    </AxisX>
                                                                </asp:ChartArea>
                                                            </ChartAreas>
                                                            <Legends>
                                                                <asp:Legend Name="Legend1" Alignment="Center" BackImageAlignment="Center" Docking="Top" LegendStyle="Row">
                                                                </asp:Legend>
                                                            </Legends>
                                                        </asp:Chart>
                                                    </div>
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="DropTipoGrafico" EventName="SelectedIndexChanged" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                </div>

                                <div id="Derecho0" style="float: left; width: 50%; background-color: transparent; height: 440px; margin-left: 0px">
                                    <asp:UpdatePanel ID="UpdatePanelGrafico2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                        <ContentTemplate>

                                            <div id="Tipo Grafico2" style="width: 100%; margin: 0px;">
                                                <asp:Label ID="Label10" runat="server" Text="Hasta:" Visible="False"></asp:Label>&nbsp;
                      <asp:DropDownList
                          ID="DropTipoMoneda2" runat="server" Visible="False">
                          <asp:ListItem Selected="True">Detalle Familias</asp:ListItem>
                          <asp:ListItem>Venta Neta Meses</asp:ListItem>
                      </asp:DropDownList>

                                                <asp:Label ID="Label11" runat="server" Text="Tipo Gráfico:" Visible="False"></asp:Label>&nbsp;
                      <asp:DropDownList
                          ID="DropTipoGrafico2" runat="server" Width="150" AutoPostBack="true" OnSelectedIndexChanged="DropTipoGrafico_SelectedIndexChanged" OnTextChanged="DropTipoGrafico_TextChanged" Visible="False">
                          <asp:ListItem Selected="True">Barra</asp:ListItem>
                          <asp:ListItem>Pie</asp:ListItem>
                          <asp:ListItem>Lineal</asp:ListItem>
                          <asp:ListItem>Barra Vertical</asp:ListItem>
                          <asp:ListItem>Burbujas</asp:ListItem>
                          <asp:ListItem>Dona</asp:ListItem>
                      </asp:DropDownList>


                                                <asp:Button ID="CMD_Prob_Detalle" runat="server" OnClick="Button1_Click" Text="Detalles" />


                                            </div>
                                            <div id="Graficos2" style="width: 100%; margin: 0px; background-color: transparent; height: 385px;">

                                                <asp:Chart ID="ChartVenta_Neta" runat="server" Height="385" Width="500" BorderlineWidth="3" AntiAliasing="All" OnClick="ChartVenta_Neta_Click">
                                                    <Titles> <asp:Title 
                    Text="Ventas por probabilidad"
                    ForeColor="Black"
                    Docking="Top"
                    Font="Arial, 15pt, style=Bold"
                    BorderColor="Gray"
                    >
           </asp:Title>
   </Titles>
                                                    <Series>
                                                        <asp:Series BorderWidth="3" Color="56, 120, 192" IsValueShownAsLabel="True"
                                                            LabelFormat="#,0;(#,0)" Legend="Legend1" Name="NombreOportunidad" ChartType="Column" LabelBorderWidth="5" MarkerStep="1" YValuesPerPoint="1">
                                                        </asp:Series>
                                                        <%--<asp:Series BorderWidth="3" Name="Inventario" Color="DarkOrange" IsValueShownAsLabel="True"
                                    LabelFormat="#,0;(#,0)" Legend="Legend1" ChartType="Spline">
                                </asp:Series>

                                <asp:Series BorderWidth="3" Color="Red" ChartArea="ChartArea1" IsValueShownAsLabel="True" LabelFormat="#,0;(#,0)" Legend="Legend1" Name="Ajustes" ChartType="Spline">
                                </asp:Series>--%>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                            <AxisY>
                                                                <MajorGrid Enabled="False" />
                                                            </AxisY>
                                                            <AxisX>
                                                                <MajorGrid Enabled="False" />
                                                            </AxisX>
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                    <Legends>
                                                        <asp:Legend Name="Legend1" Alignment="Center" BackImageAlignment="Center" Docking="Top" LegendStyle="Row">
                                                        </asp:Legend>
                                                    </Legends>
                                                </asp:Chart>

                                            </div>
                                        </ContentTemplate>

                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="DropTipoGrafico" EventName="SelectedIndexChanged" />
                                        </Triggers>

                                    </asp:UpdatePanel>


                                </div>


                    </div>
                          

                        </div>

                    </div>
                </div>

     



    </div>
       </div>
</asp:Content>
