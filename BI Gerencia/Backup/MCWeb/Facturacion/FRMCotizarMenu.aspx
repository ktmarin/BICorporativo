<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="FRMCotizarMenu.aspx.cs" Inherits="MCWeb.Facturacion.FRMCotizarMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="MenuCliente"  >    

   <div id="Div1" style="font-size: x-large; font-weight: bold; color: #008000;" >    
    Mantenimiento de Pedidos 
    <br />
    <br />
    </div>
    <div id="Menu1" style="font-size: small; color: #008000"  >
    
       
        <asp:HyperLink ID="HyperLink1" runat="server"> Cliente:</asp:HyperLink>
         <asp:TextBox ID="TXTsCodigo_Cliente" runat="server"></asp:TextBox>
         <asp:TextBox ID="TXTsNombre_Cliente" runat="server" Width="410px" 
            CssClass="current"></asp:TextBox>
         Numero de Pedido:          
         <asp:TextBox ID="TXTsPedido" runat="server" Width="196px"></asp:TextBox>
        <br />
        <br />

      <asp:HyperLink ID="HyperLink2" runat="server"> Direccion:</asp:HyperLink>
         <asp:TextBox ID="TXTsDireccion1" runat="server" Width="533px" Height="22px"></asp:TextBox>
         Numero de Factura:          
         <asp:TextBox ID="TXTsFactura" runat="server" Width="190px"></asp:TextBox>

    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server"> Telefono:</asp:HyperLink>
        <asp:TextBox ID="TXTsTelefono" runat="server"></asp:TextBox>     
    &nbsp;&nbsp;&nbsp;&nbsp; 
      <asp:HyperLink ID="HyperLink4" runat="server"> Cedula:</asp:HyperLink>
        <asp:TextBox ID="TXTsCedula" runat="server"></asp:TextBox>     

    
    &nbsp;&nbsp;&nbsp;     

      <asp:HyperLink ID="HyperLink5" runat="server"> Descuento  Maximo:</asp:HyperLink>
        <asp:TextBox ID="TXTcDescuento" runat="server" Width="87px"></asp:TextBox> 
    &nbsp;&nbsp; 
    <asp:HyperLink ID="HyperLink6" runat="server"> Tipo de Moneda:</asp:HyperLink>
        <asp:DropDownList ID="iTipo_Moneda" runat="server" Height="23px" Width="107px">
            <asp:ListItem Value="0">Colones</asp:ListItem>
            <asp:ListItem Value="1">Dolares</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Fecha:&nbsp;&nbsp;
        <asp:TextBox ID="TXTdFecha" runat="server" Width="85px" TextMode="Date"></asp:TextBox>     
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vencimiento:
        <asp:TextBox ID="TXTdVencimiento" runat="server" Width="91px" TextMode="Date"></asp:TextBox>     
    &nbsp;Plazo:
        <asp:TextBox ID="TXTiPlazo" runat="server" Width="64px"></asp:TextBox>     
    &nbsp;Vendedor:
        <asp:TextBox ID="TXTsVendedor" runat="server" Width="70px"></asp:TextBox>     
    &nbsp;<asp:TextBox ID="TXTsVendedorDescripcion" runat="server" Width="272px"></asp:TextBox>     
    </div>

    <br />
    <br />

</div>
<div id="MenuPedidos" align="right" style = " width:900px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        ShowHeaderWhenEmpty="True" Width="900px" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Bodega">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("sBodega") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("sBodega") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Height="30px" />
                    <ItemStyle Height="25px" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="Producto" DataField="sCodigo_Producto" />
                <asp:BoundField HeaderText="Cantidad" DataField="cCantidad" />
                <asp:BoundField HeaderText="Descripcion" DataField="sDescripcion" />
                <asp:BoundField HeaderText="Precio Unitario" DataField="cPrecio_Venta" />
                <asp:BoundField HeaderText="Total" DataField="Total" />
                <asp:BoundField DataField="sPedido" HeaderText="sPedido" Visible="False" />
            </Columns>
            
            <EditRowStyle BackColor="#2461BF" />
            
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
              />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                 />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
               />
            <RowStyle BackColor="#EFF3FB"  />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" 
                />
            
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
        </asp:GridView>

        </div>

<div align="right" style = "width:900px; height:auto;">
SubTotal:&nbsp;&nbsp; 
        <asp:TextBox ID="TXTSubTotal" runat="server" Width="152px" Enabled="False"></asp:TextBox> 
        </div>
        
        <div align="right" style = " width:986">
        Descuento:&nbsp;&nbsp; 
        <asp:TextBox ID="TXTDescuento" runat="server" 
        Width="152px" Enabled="False"></asp:TextBox>
        <br />
        </div>
<div align="right" style = " width:986">
Impuesto:&nbsp;&nbsp; 
        <asp:TextBox ID="TXTImpuesto" runat="server" 
        Width="152px" Enabled="False"></asp:TextBox> 
</div>
        <div align="right" style = " width:986">
        Total:&nbsp;&nbsp;
        <asp:TextBox ID="TXTTotalFactura" runat="server" Width="152px" Enabled="False"  
                EnableTheming="False"></asp:TextBox>

        <br />
        </div>


        <div id= "MenuNavegacion1" class="button" >
       <asp:Button ID="CMDPrimero" runat="server" 
                    Text="|<" Width="32px" onclick="CMDPrimero_Click" 
                    />
           

                <asp:Button ID="CMDAtras" runat="server" class="button" Text="<" 
                Width="32px" CssClass="style4" onclick="CMDAtras_Click"
                    />
            &nbsp;
                <asp:Button ID="CMDAdelante" runat="server" class="button" Text=">" 
                    Width="32px" onclick="CMDAdelante_Click"
                    />
            &nbsp;<asp:Button ID="CMDUltimo" runat="server"
                    Text=">|" Width="32px" CssClass="button" onclick="CMDUltimo_Click" 
                    />
            &nbsp;
                <asp:Button ID="CMDBuscar" runat="server" class="button" 
                    Text=" Buscar" Width="97px" CssClass="Updatebutton" Height="28px" onclick="CMDBuscar_Click"
                    />
            
            <br />
            <br />
            <br />
            
        </div>
        
    </asp:Content>
