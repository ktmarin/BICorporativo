<%@ Page Title="Catalogo de Productos" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" 
CodeBehind="CatalogodeProductos.aspx.cs" Inherits="MCWeb.Productos.CatalogodeProductos" %>

 
 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">


    <style type="text/css">
        .style4
    {
            width: 360px;
             color:Green;
        }
        .style5
        {
            width: 422px;
             color: Black;
        }
        .style7
        {
            width: 360px;
            color: Green;
            height: 30px;
        }
        .style8
        {
            width: 360px;
            color: Green;
            height: 156px;
        }
    </style>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >

<div class ="Contenido">
 <div id="Panel" style=" width:900px; height:900px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat;   margin-bottom:0px" >
  
  <h1 style=" margin-top:10px; margin-bottom:10px; width:900px; height:90px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
          Busqueda de productos.
 </h1>


</div>
    
</div>

    <table style="width: 100; background-color:#FFF; "    >
        <tr>
            <td class="style4">
        <asp:Label ID="LabelPpal" runat="server" Text="     Catalogo de Productos" Font-Bold="False"
                    Font-Names="Segoe UI" Font-Size="14pt" ForeColor="Green" Font-Underline ="true"></asp:Label>
            </td>
         <td class="style4" rowspan="9" > 
          <div>
          <asp:Label ID="Label1" runat="server" Text="Galería de Imágenes" Font-Italic="true" Font-Bold="False"
                    Font-Names="Segoe UI" Font-Size="14pt" ForeColor="Green"></asp:Label>
        <hr />
            <div id="slider" class="slider"> 
                <ul id="ulImages"> </ul>
            </div>
    </div>
               </td>   
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4"  >
        <asp:Label ID="LabelNombre" runat="server" Text="ITEM:"  ></asp:Label>
            &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTItem" runat="server" Width="145px" Height="20px" CssClass="style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" >
        <asp:Label ID="LabelArchivoAdjunto" runat="server" Text="Descripcion del Producto:" 
                    Font-Overline="False"> </asp:Label>
                &nbsp;<br />
        <asp:TextBox ID="TXTDescripcion" runat="server" Height="23px" Width="426px" 
                    CssClass="style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style = "  text-align: left ;vertical-align : bottom ;" class="style7" >
                Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                <asp:TextBox ID="TXTPrecioPublico" runat="server" Height="20px" Width="155px" 
                    CssClass="style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
        <asp:Label ID="LabelObjetivo" runat="server" Text="Moneda:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="CMDMoneda" runat="server" 
            style="margin-bottom: 0px" Width="108px" Height="25px">
            <asp:ListItem Selected="True">Colones</asp:ListItem>
            <asp:ListItem Value="Dolares"></asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Impuesto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:DropDownList ID="CMBImpuesto" runat="server" 
            style="margin-bottom: 0px" Width="108px" Height="22px">
            <asp:ListItem Value="0.00"></asp:ListItem>
            <asp:ListItem Selected="True" Value="13.00"></asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
        <asp:Label ID="LabelCanal0" runat="server" Text="Datos Tecnicos:"></asp:Label>
                <br />
        <asp:TextBox ID="TXTDatosTecnicos" runat="server" Height="83px" Width="421px" 
                    TextMode="MultiLine" CssClass="style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 CaptionAlign="Left"  GridLines="None">
                <Columns>
                    <asp:BoundField DataField="Bodega" HeaderText="Bodega" />
                    <asp:BoundField DataField="sDescripcion" HeaderText="Descripcion" />
                    <asp:BoundField DataField="Saldo" HeaderText="Saldo" ControlStyle-BorderStyle="None" />
                    <asp:BoundField DataField="sCodigo_Producto" HeaderText="sCodigo_Producto" 
                        Visible="False" />
                </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
            &nbsp;<asp:Button ID="CMDPrimero" runat="server" class="button" 
                    Text="|<" Width="32px" onclick="CMDPrimero_Click" 
                    />
            &nbsp;
                <asp:Button ID="CMDAtras" runat="server" class="button" Text="<" Width="32px" onclick="CMDAtras_Click" 
                    />
            &nbsp;
                <asp:Button ID="CMDAdelante" runat="server" class="button" Text=">" 
                    Width="32px" onclick="CMDAdelante_Click" 
                    />
            &nbsp;<asp:Button ID="CMDUltimo" runat="server" class="button" 
                    Text=">|" Width="32px" onclick="CMDUltimo_Click" CssClass="button" 
                    />
            &nbsp;
                <asp:Button ID="CMDBuscar" runat="server" class="button" 
                    Text=" Buscar" Width="97px" CssClass="Updatebutton" Height="28px" onclick="CMDBuscar_Click"  
                    />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">

            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
                  <td class="style4" >  </td>
        </tr>
    </table>

</asp:Content>
