<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMBuscarProducto.aspx.cs" Inherits="MCWeb.Productos.FRMBuscarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div  class ="Contenido" >
  <div id="Panel" 
        style=" width:900px; height:900px; background:url('../images/productheader_divider.jpg') no-repeat; " >
  
  <h1 style=" margin-top:10px; margin-bottom:10px; width:900px; height:90px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
          Busqueda de productos.
 </h1>
<div id="Panel-Opciones-Busqueda" style=" width:900px; float:left;">
<div style="width:180px; float:left;" >
<h1 style=" margin-top:10px; margin-bottom:10px; width:900px; height:25px; font-family: 'Century Gothic'; font-size: 14px; font-weight: normal;" 
          align="left">
          Codigo de Producto
 </h1>
</div>
<div style="width:300px; float:left;" >
<h1 style=" margin-top:10px; margin-bottom:10px; width:300px; height:25px; font-family: 'Century Gothic'; font-size: 14px; font-weight: normal;" 
          align="left">
          Descripción del Producto
 </h1>
</div>
<div style="width:100px; float:left;" >
<h1 style=" margin-top:10px; margin-bottom:10px; width:100px; height:25px; font-family: 'Century Gothic'; font-size: 14px; font-weight: normal;" 
          align="left">
          Proveedor
 </h1>
</div>
<div style="width:150px; float:left;" >
<h1 style=" margin-top:10px; margin-bottom:10px; width:150px; height:25px; font-family: 'Century Gothic'; font-size: 14px; font-weight: normal;" 
          align="left">
          Precio Venta
 </h1>
</div>
<div style="width:100px; float:left;" >
<h1 style=" margin-top:10px; margin-bottom:10px; width:100px; height:25px; font-family: 'Century Gothic'; font-size: 14px; font-weight: normal;" 
          align="left">
          Moneda
 </h1>
</div>
<div id="Panel-Opciones-TextBox" style=" width:900px; float:left;">
<div style="width:180px; float:left;" >
<asp:TextBox ID="TXTCodigoProducto" runat="server" Width="180px" 
            ontextchanged="TXTCodigoProducto_TextChanged" AutoPostBack="True"></asp:TextBox>
</div>
<div style="width:300px; float:left;" >
<asp:TextBox ID="TXTDescripcionInventario" runat="server" Width="300px" 
            ontextchanged="TXTDescripcionInventario_TextChanged"></asp:TextBox>
</div>
<div style="width:100px; float:left;" >
    <asp:TextBox ID="TXTGrupo" runat="server" Width="100px" ontextchanged="TXTGrupo_TextChanged" 
            ></asp:TextBox>
</div>
<div style="width:150px; float:left;" >
    <asp:TextBox ID="TXTPrecioVenta" runat="server" Width="150px" 
            ontextchanged="TXTPrecioVenta_TextChanged"></asp:TextBox>
</div>
<div style="width:100px; float:left;" >
<asp:TextBox ID="TXTPrecioVenta0" runat="server" Width="100px"></asp:TextBox>
</div>
</div>
<div id="Grid" class=" grid" style=" overflow:auto; width:900px; height:700px; float:left;">
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  ShowHeaderWhenEmpty ="True"
           Width="868px" 
           onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
<asp:BoundField HeaderText="Codigo de Producto" DataField="sCodigo_Producto" ShowHeader="true">
               
                <HeaderStyle Height="25px" />
               
                <ItemStyle Width="179px" Height="30px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Descripcion del Producto" 
                    DataField="sDescripcion_Inventario" >
                <ItemStyle Width="298px" Height="25px" />
                </asp:BoundField>
                <asp:BoundField DataField="sGrupo" HeaderText="Proveedor">
                <ItemStyle Width="99px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Precio de Venta" DataField="cPrecio_Publico" >
                <ItemStyle Width="148px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="bMoneda" HeaderText="Moneda" >
                <ItemStyle Width="100px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField ShowSelectButton="True" SelectText="Selec">
                <ItemStyle Width="20px" />
                </asp:CommandField>
                <asp:TemplateField Visible="False">
                    <HeaderStyle Height="25px" />
                </asp:TemplateField>
            </Columns>
     
        </asp:GridView>


</div>

    
</div>


  <div  style=" overflow:auto; width:900px; height:40px; float:left;">
  <asp:Button ID="CMDAceptar" CssClass=" iButton" runat="server" Text="Buscar" 
          Width="100px" onclick="CMDAceptar_Click1" />

  </div>
  </div>
</div>
</asp:Content>
