<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMRotacionesMenu.aspx.cs" Inherits="MCWeb.Rotaciones.FRMRotacionesMenu" EnableEventValidation = "false"%>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../Scripts/jquery-2.1.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <link href="../Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
    
    <link href="../Styles/jquery-ui-1.8.18.custom.css" rel="stylesheet" type="text/css" />
    
    <link href="../Styles/jquery-ui-1.8.21.custom.css" rel="stylesheet" type="text/css" />


    <link href="../Styles/style.css" rel="stylesheet" type="text/css" />

<%--    <script src="../Scripts/autocomplete.js" type="text/javascript"></script>--%>

    <%--<script src="../Scripts/popuporderedit.js" type="text/javascript"></script>--%>
        
           <script type="text/javascript">

               $(function () {

                   $('#btnOpenSupplierSearch').click(function () {

                       $('#dialog').dialog('open');

                   });


                   $('#dialog').dialog({
                       autoOpen: false,
                       modal: true,
                       width: 980,
                       heigth: 250,
                       title: 'Buscar Cliente',
                       buttons: {
                           "Cancel": function () {
                               $(this).dialog("close");
                           }
                       },
                       open: function (type, data) {

                           $(this).parent().appendTo("form");

//                           $("[id*='CMDBuscarC']").click();

                           $('#TXTFiltroCliente').focus();
                       }

                   });
               });
               function SupplierSelected(CodCliente, NombreCliente, Telefono) {

                   $("[id*='CodCliente']").val(CodCliente);
                   $("[id*='NombreCliente']").val(NombreCliente);
                   $("[id*='Telefono']").val(Telefono);

                   //cierro el popup de seleccion
                   $('#dialog').dialog("close");



               }
               function btnOpenSupplierSearch_onclick() {


               }

              
  



    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent"  runat="server">


     <div class="col-md-2">
                        <%-- <asp:Button ID="CMDBuscarClientes" CssClass="btn btn-sm btn-success" runat="server" Text="Buscar Cliente" OnClick="CMDBuscarClientes_Click" />--%>
                        <input type="button" id="btnOpenSupplierSearch"  value="Buscar Cliente" class="btn btn-sm btn-success" onclick="return btnOpenSupplierSearch_onclick()" />
                       <%-- <asp:Button ID="btnOpenSupplierSearch" runat="server" Text="Buscar Cliente" OnClientClick="return btnOpenSupplierSearch_onclick()" />--%>
                    </div>
    <div id="ControlGeneral" class="Contenido" style=" height:auto; overflow: auto;">
<br />
<div id="PanelProveedores" class="StyleMSG" style=" width:300px; height:300px; float:left; ">
    <div id="EncabezadoProveedor" style="height:40px;">
        <h1 id="Nombre" style="margin-left: 5px; margin-top: 5px; margin-bottom: 10px; width: 300px;
            height: 30px; font-family: 'Century Gothic'; font-size: 20px; font-weight: normal;"
            align="left">
            Proveedores
            <asp:Label ID="LBLCodProveedor" runat="server" Text="Label"></asp:Label>
            
        </h1>
    </div>
    <div style=" margin-left:5px; cursor:pointer;" >
        <asp:GridView ID="DTG_Proveedores" runat="server" AutoGenerateColumns="False" CssClass=" table table-bordered table-hover"
            Width="290px" CaptionAlign="Left" GridLines="None" 
            ShowHeaderWhenEmpty="True" 
            onselectedindexchanged="DTG_Proveedores_SelectedIndexChanged" 
            onrowdatabound="DTG_Proveedores_RowDataBound" 
            onselectedindexchanging="DTG_Proveedores_SelectedIndexChanging"  >
            <Columns>
                <asp:BoundField DataField="CodProveedor" HeaderText="CodProveedor">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="NombreProveedor" HeaderText="NombreProveedor" />
            </Columns>
        </asp:GridView>
     
    </div>
    </div>
    <div id="Grafico" class="StyleMSG" style="margin-left:5px; width:590px; height:300px; float:left;">
    <div id="Div4">
     <div id="EncabezadoProductos" style="margin-left:5px; width:590px; height:90px; float:left;">
        <h1 style="margin-left: 5px; margin-top: 5px; margin-bottom: 10px; width: 300px;
            height: 30px; font-family: 'Century Gothic'; font-size: 20px; font-weight: normal;"
            align="left">
            Gráfico de Ventas 
        </h1>
         <div id="Div2" style="margin-left: 5px; margin-top: 5px; margin-bottom: 10px; width: 590px;
            height: 30px; font-family: 'Century Gothic'; font-size:12px; font-weight: normal;float:left;" 
          
        <asp:Label ID="Label2" runat="server" Text="Fecha Desde:"></asp:Label><asp:DropDownList
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
             <asp:ListItem Selected="True">2015</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text="Fecha Hasta:"></asp:Label><asp:DropDownList
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
             <asp:ListItem Selected="True">2015</asp:ListItem>
        </asp:DropDownList>
         <asp:Button ID="CMDGenerarInforme" runat="server" Text="Generar Informe" 
                   CssClass=" BotonLogon" onclick="CMDBuscarC_Click"  Height="25px" 
                   Width= "110px" ForeColor="White" EnableTheming="False" EnableViewState="False" 
                   UseSubmitBehavior="False" ViewStateMode="Disabled"  />

              
    </div>

    </div>


   
   <div id="Div7" style=" overflow:auto;  width:590px; float:left;  height:auto;">
       <asp:Chart ID="Chart1" runat="server" Height="196px" Width="580px">
           <Series>
               <asp:Series Name="VentaNeta" Color="56, 120, 192" IsValueShownAsLabel="True" 
                   LabelFormat="#,0;(#,0)" Legend="Legend1">
               </asp:Series>
               <asp:Series Name="CostoNeto" Color="DarkOrange" IsValueShownAsLabel="True" 
                   LabelFormat="#,0;(#,0)" Legend="Legend1">
               </asp:Series>
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
               <asp:Legend Name="Legend1">
               </asp:Legend>
           </Legends>
       </asp:Chart>

                <%--<asp:Chart ID="Chart1" runat="server" Height="200px" Width="540px" 
                    BackSecondaryColor="224, 224, 224" BorderlineWidth="0" EnableTheming="True">
            <Series>
                <asp:Series Name="Mes" ChartType="Spline" ChartArea="ChartArea1" 
                    BorderWidth="2" IsValueShownAsLabel="True" LabelFormat="N1" Legend="Legend1" 
                    MarkerStyle="Circle">
                </asp:Series>
                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" 
                    IsValueShownAsLabel="True" LabelFormat="N2" Legend="Legend1" 
                    MarkerStyle="Circle" Name="CostoNeto">
                </asp:Series>
                <asp:Series BorderWidth="2" ChartArea="ChartArea1" ChartType="Spline" 
                    IsValueShownAsLabel="True" LabelFormat="N2" Legend="Legend1" 
                    MarkerBorderWidth="10" MarkerStep="10" MarkerStyle="Circle" Name="Vendido">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1" BorderColor="White" ShadowColor="White" 
                    ShadowOffset="2">
                    <AxisY LineColor="White" LineWidth="0">
                    </AxisY>
                    <AxisX LineColor="White" LineWidth="0">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
                    <BorderSkin BackColor="White" BorderColor="White" BorderWidth="0" />
        </asp:Chart>--%>
   </div>

    </div>
    </div>
   

   <div id= "Separador" style= " float:left; height:20px; width:100%;">

  </div>
 <div id="VistaProductos" class="StyleMSG" style="margin-left:0px; width:100%; height:500px; float:left;">

    <div id="Div1">
          <div id="Div3" style="height:40px;">
        <h1 id="H1" style="margin-left: 5px; margin-top: 5px; margin-bottom: 10px; width: 100%;
            height: 30px; font-family: 'Century Gothic'; font-size: 20px; font-weight: normal;"
            align="left">
            Rotación de Productos             <asp:Label ID="LBLNombreProveedor" runat="server" Text=""></asp:Label>
            
        </h1>

    </div>
   
   <div id="GridProductos" style=" overflow:auto;  width:100%; float:left;  height:410px; font-family: Helvetica Neue, Lucida Grande, Segoe UI, Arial, Helvetica, Verdana, sans-serif;">
        <asp:GridView ID="DTG_Productos" runat="server" AutoGenerateColumns="False" CssClass=" table table-bordered table-hover " 
            Width="290px" CaptionAlign="Left" GridLines="None" 
            ShowHeaderWhenEmpty="True" 
            onpageindexchanging="DTG_Productos_PageIndexChanging"  >
            <Columns>
            <asp:TemplateField>
                                    <ItemTemplate>
                                        <image id="imgeditorder" src="../images/editar.gif"  />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>

                <asp:ImageField   DataImageUrlField = "RutaImagen" ControlStyle-Width="150"
        ControlStyle-Height = "100" HeaderText = "Imagen" ReadOnly="True"  >  
<ControlStyle Height="100px" Width="120px"></ControlStyle>
                </asp:ImageField>

                <asp:BoundField HeaderText="Pedido" >
                <ControlStyle Width="40px" />
                </asp:BoundField>

                <asp:BoundField DataField="sCodigo_Producto" HeaderText="ITEM" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="sDescripcion_Inventario" 
                    HeaderText="Descripción Producto" ReadOnly="True" />
                 <asp:BoundField DataField="VentaNeta" HeaderText="Venta Neta" 
                    DataFormatString="{0:N}" ReadOnly="True" />
                  <asp:BoundField DataField="CostoNeto" HeaderText="Costo Neto" 
                    DataFormatString="{0:N}" ReadOnly="True" />
                   <asp:BoundField DataField="UtilNeta" HeaderText="Utilidad Neta" 
                    DataFormatString="{0:N}" ReadOnly="True" />
                    <asp:BoundField DataField="Vendido" HeaderText="Unidad Vendida" 
                    ReadOnly="True" >
                     <ControlStyle Width="50px" />
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                     <asp:BoundField DataField="Stock" HeaderText="Stock" ReadOnly="True" />
                      <asp:BoundField DataField="Stock_Min" HeaderText="Stock Minimo" 
                    Visible="False" ReadOnly="True" />
                       <asp:BoundField DataField="Transito" HeaderText="Transito" 
                    Visible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Promedio" HeaderText="Promedio" 
                    ReadOnly="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:GridView>
   </div>
    </div>
    </div>
  
   <div id="dialog">

        <br />
        <div class="form-group">
        </div>
        <asp:UpdatePanel ID="upSuppliers" runat="server" >

            <ContentTemplate>
                <p>Buscar: 
                    <input  class="text-box single-line" id="TXTFiltroCliente" name="TXTFiltroCliente" type="text" value="" />
                    <asp:Button ID="CMDBuscarC" runat="server" Text="Buscar Cliente" 
                        onclick="CMDBuscarC_Click" />
                </p>


                <asp:GridView ID="GridView1" DataKeyNames="CodCliente" 
                    CssClass=" table table-bordered table-hover" runat="server" 
                    AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" >

                    <Columns>
                        <asp:BoundField DataField="CodCliente" HeaderText="N# Cliente" />
                        <asp:BoundField DataField="NombreCliente" HtmlEncode="false"  HeaderText="Nombre Cliente" DataFormatString="{0:dd-MM-yyyy}" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" ItemStyle-HorizontalAlign="Center">
                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" HtmlEncode="false"  Visible="False" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select"
                                    runat="server" Text="Seleccionar" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


            </ContentTemplate>
        </asp:UpdatePanel>


    </div>


    </div>
</asp:Content>