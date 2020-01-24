<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMFAC00Menu.aspx.cs" Inherits="MCWeb.Facturacion.FRMFAC00Menu"%>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" language="javascript">
function mostrar_procesar()
{
document.getElementById("procesando_div").style.display ="";
setTimeout('document.images["procesando_gif"].src="../images/ajax-loader.gif"', 200);
}
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="Contenido" style=" margin-bottom:20px;  "    >

    <span id="procesando_div" style="display: none; position:absolute; text-align:center">
<img src="../images/ajax-loader.gif" alt="" align="middle" />
</span>

  <div id="Head" >
 <h1 style=" margin-top:5px; margin-bottom:10px; width:900px; height:35px; font-family: 'Century Gothic'; font-size: 28px; font-weight: normal;" 
          align="left" >
 Mantenimiento de Pedidos
 </h1>
 </div>
 
 <div id="Panel1" class="StyleMSG" style=" height:150px"> 

     <div id="ENCABEZADO" class=" LetraPadPq"  style=" margin-left:10px; margin-top:10px;">     
        
        <div id="Linea1" class="StardardBox" >

        <div  style="width:65px; float:left;">
         <asp:Button ID="CMDBuscarCliente" CssClass="iButton" runat="server" 
                Text="Cliente:" />
        </div>

        <div  style=" width:100px;  float:left;" >
            <asp:TextBox ID="TXTsCodigo_Cliente" runat="server"  Width="80px" Height="18px" > </asp:TextBox>
        </div>

        <div  style=" width:400px;  float:left; ">
             <asp:TextBox ID="TXTsNombre_Cliente" runat="server"  Width="380px" Height="18px" > </asp:TextBox>
        </div>

        <div style=" width:135px;  float:left; ">
            <asp:Label ID="Label7" runat="server" Text="NUMERO DE OFERTA:" Width="135px" Height="18px"  style="color: #CC0000; font-weight: bold" ></asp:Label>
        </div>

        <div  style=" width:180px;  float:left; " >
        
            <asp:TextBox ID="TXTsBodega" runat="server"  Width="20px" Height="18px" > </asp:TextBox>
            <asp:TextBox ID="TXTsPedido" runat="server"  Width="142px" Height="18px" > </asp:TextBox>
        </div>

        </div>

        <div id="Linea2" class="StardardBox" style=" height:25px;width:890px">

        <div  style=" width:65px; height: 24px; float:left;">
            <asp:Label ID="Label2" runat="server" Text="Dirección:"></asp:Label>
        </div>
        <div  style=" width:340px; float:left; " >
            <asp:TextBox ID="TXTsDireccion_1" runat="server"  Width="325" Height="18px" > </asp:TextBox>
        </div>
        <div  style=" width:90px; height: 24px; float:left;">
           <asp:Label ID="Label14" runat="server" Text="Desc Máximo:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:70px; float:left;">
             <asp:TextBox ID="TXTcDescuento" runat="server"  Width="50px" Height="18px" > </asp:TextBox>
        </div>
        <div style=" width:125px; height: 24px; float:left;">
            <asp:Label ID="Label15" runat="server" Text="Número Factura:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:190px; float:left; ">
        
            <asp:TextBox ID="TXTsFactura" runat="server"  Width="182px" Height="18px" > </asp:TextBox>
        </div>

           </div>

        <div id="Linea3"  class="StardardBox" style=" height:25px;width:890px">
        <div  style=" width:65px; height: 24px; float:left;">
            <asp:Label ID="Label16" runat="server" Text="Telefono:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:140px; float:left; " >
            <asp:TextBox ID="TXTsTelefono" runat="server"  Width="120px" Height="18px" > </asp:TextBox>
        </div>
        <div  style=" width:65px; height: 24px; float:left;">
            <asp:Label ID="Label17" runat="server" Text="Cédula:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:135px; float:left; " >
            <asp:TextBox ID="TXTsCedula" runat="server"  Width="120" Height="18px" > </asp:TextBox>
        </div>
        <div  style=" width:90px; height: 24px; float:left;">
          <asp:Label ID="Label19" runat="server" Text="Plazo:" Height="18px" ></asp:Label>

        </div>
        <div  style=" width:70px; float:left;">
             <asp:TextBox ID="TXTiPlazo" runat="server"  Width="50px" Height="18px" > </asp:TextBox>
        </div>
        <div style=" width:125px; height: 24px; float:left;">
            <asp:Label ID="Label18" runat="server" Text="Moneda Factura:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:190px; float:left; ">
            <asp:DropDownList ID="CMBiTipo_Moneda" runat="server" Width="188px" Height="24px" >
                <asp:ListItem Selected="True" Value="1">Dólares</asp:ListItem>
                <asp:ListItem Value="0">Colones</asp:ListItem>
            </asp:DropDownList>
        </div>
           </div>

        <div id="Linea4" class="StardardBox" style=" height:25px;width:890px">
        <div  style=" width:65px; height: 24px; float:left;">
         <asp:Label ID="Label20" runat="server" Text="Fecha:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:140px; float:left; " >
                     <telerik:RadDatePicker ID="TXTdFecha2" runat="server" Width="130px" 
                Culture="es-ES">
<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" LabelWidth="40%">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </div>
        <div  style=" width:90px; height: 24px; float:left;">
                 <asp:Label ID="Label21" runat="server" Text="Vencimiento:" Height="18px" ></asp:Label>
        </div>
        <div  style=" width:110px; float:left; " >
            <telerik:RadDatePicker ID="TXTdVencimiento2" runat="server" Width="100px" 
                Culture="es-ES">

<DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" LabelWidth="40%">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
            </telerik:RadDatePicker>
        </div>
        <div  style=" width:90px; height: 24px; float:left;">
    <asp:Button ID="CMDVendedor" CssClass="iButton" runat="server" 
                Text="  Vendedor  :" />
        </div>
        <div  style=" width:70px; float:left;">
             <asp:TextBox ID="TXTsVendedor" runat="server"  Width="50px" Height="18px" > </asp:TextBox>
        </div>
        <div style=" width:300px; height: 24px; float:left;">
          <asp:TextBox ID="TXTsVendedorDescripcion" runat="server"  Width="306px" Height="18px" > </asp:TextBox>
        </div>
       
            <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>--%>
       
           </div>    
     </div>  

 </div>
  <div id="Panel" class="StyleMSG" style="margin-top:10px;"> 

     <div id="DETALLE" class=" LetraPadPq"  style=" margin-left:10px; margin-top:10px;">   
        <div id="LabelProducts" class="LetraPadPq" style=" float:left; height:auto;width:900px">
               
            <div style="width:15px; float:left;" >
                <asp:Label ID="Label8" runat="server" Text="Lin"></asp:Label>
            </div>

            <div style="width:70px; float:left; text-align:center;" >
                <asp:Label ID="Label9" runat="server" Text="Bodega" > </asp:Label>
            </div>

            <div style="width:117px; float:left;  text-align:center;" >
                <asp:Label ID="Label10" runat="server" Text="Producto"></asp:Label>
            </div>

            <div style="width:98px; float:left;  text-align:center;" >
                     <asp:Label ID="Label11" runat="server" Text="Cantidad"></asp:Label>
            </div>

            <div style="width:242px; float:left;" >
                     <asp:Label ID="Label12" runat="server" Text="Descripción del Producto"></asp:Label>
            
            
            </div>
            <div style="width:100px; float:left;  text-align:left ;" >
                     <asp:Label ID="Label13" runat="server" Text="Precio Unitario"></asp:Label>

            </div>

            <div style="width:100px; float:left;" >
                     <asp:Label ID="Label22" runat="server" Text="Desc"></asp:Label>
            </div>


            <div style="width:90px; float:left;" >
            </div>

            <div style="width:22px; float:left;" >
            </div>

            </div>  
        <div id="EditProducts" class="LetraPadPq"  style=" float:left; height:auto;width:890px">

            <div style="width:17px; float:left;" >
                 <asp:TextBox ID="TXTLinea"
                    runat="server" Width="17px" ></asp:TextBox>
            </div>

            <div style="width:68px; float:left;" >
                      <asp:TextBox ID="TXTCodigoBodega" Width="68px"
                    runat="server"></asp:TextBox>
            </div>

            <div style="width:117px; float:left;" >
                <asp:TextBox ID="TXTCodigoProducto" Width="117px"
                    runat="server"></asp:TextBox>
            </div>

            <div style="width:98px; float:left;" >
                        <asp:TextBox ID="TXTCantidadProducto" Width="98px"
                    runat="server"></asp:TextBox>
            </div>

            <div style="width:252px; float:left;" >
                         <asp:TextBox ID="TXTDescripcionProducto" Width="252px"
                    runat="server"></asp:TextBox>
            </div>

            <div style="width:95px; float:left;" >
                          <asp:TextBox ID="TXTPrecioUnitario"  Width="95px"
                    runat="server"></asp:TextBox>
            </div>
            <div style="width:100px; float:left;" >
                          <asp:TextBox ID="TXTLineaDescuento"  Width="95px"
                    runat="server"></asp:TextBox>
            </div>

            <div style="width:90px; float:left;" >
                <asp:Button ID="CMDUpdateProducto" runat="server" Text="      Actualizar" 
                    CssClass=" BotonUpdated24" Width="89px" 
                    onclick="CMDUpdateProducto_Click" OnClientClick="mostrar_procesar();"  />
            </div>

            <div style="width:43px; float:left; text-align:right;" >
                          <asp:Button ID="CMDEliminarProducto" runat="server"
                    CssClass=" BotonDelete24" Width="32px" onclick="CMDEliminarProducto_Click" />
            </div>

            </div>  
        <div id="LineaGrid" style=" height:auto;width:890px; float:left;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass=" grid"
        ShowHeaderWhenEmpty="True" Width="880px" CellPadding="4" 
        ForeColor="#333333" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                onrowediting="GridView1_RowEditing" onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/deletered_32.png" 
                    SelectImageUrl="~/images/deletered_32.png" SelectText="" 
                    ShowDeleteButton="True" Visible="False">
                <HeaderStyle Width="32px" />
                <ItemStyle Width="32px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="iLinea" HeaderText="Lin">
                <ControlStyle Width="10px" />
                <HeaderStyle Width="10px" Wrap="False" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="10px" 
                    Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="sBodega" HeaderText="Bodega">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="68px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="68px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Producto" DataField="sCodigo_Producto" 
                    ControlStyle-Width="100" >
<ControlStyle Width="100px"></ControlStyle>
                <HeaderStyle Width="120px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Cantidad" DataField="cCantidad" >
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Descripción del Producto" DataField="sDescripcion" >
                <HeaderStyle Width="361px" HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="361px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Precio Unitario  " DataField="cPrecio_Venta" >
                <HeaderStyle Width="100px" HorizontalAlign="Right" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="cDescuento2" HeaderText="Desc">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Total  " DataField="Total" >
                <HeaderStyle Width="100px" HorizontalAlign="Right" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="sPedido" HeaderText="sPedido" Visible="False" />
                <asp:CommandField ButtonType="Image" InsertImageUrl="~/images/Edit-32.png" 
                    SelectImageUrl="~/images/Edit-32.png" ShowSelectButton="True" 
                    UpdateImageUrl="~/images/Edit-32.png">
                <HeaderStyle Width="32px" />
                <ItemStyle Width="32px" />
                </asp:CommandField>
                <asp:TemplateField Visible="False">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </ItemTemplate>
                    <ControlStyle Height="20px" />
                    <HeaderStyle Height="20px" />
                    <ItemStyle Height="20px" />
                </asp:TemplateField>
                <asp:BoundField DataField="cImpuesto_Venta " HeaderText="cImpuesto_Venta " 
                    Visible="False" />
            </Columns>
            
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
              />
            <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" ForeColor="Black" 
                 />
            <PagerStyle BackColor="#FFFFFF" ForeColor="White" HorizontalAlign="Center" 
               />
            <RowStyle BackColor="#FFFFFF"  />
            <SelectedRowStyle BackColor="#AFC5BB" Font-Bold="True" ForeColor="#333333" 
                />
            
        </asp:GridView>

        </div>
          
        <div id="LineaSubTotal" style=" height:auto;width:890px; margin-top:10px;" class="SubTotales" >
        <div align="right" style = " width:880px; margin-right:10px; margin-top:10px;">
        
        <asp:TextBox  class=" SubTotales " ID="TXTSubTotal" runat="server" Width="113px" Enabled="False" 
                BorderStyle="Solid" ForeColor="Black"></asp:TextBox> 
                
            <asp:Label ID="Label3" runat="server" Text="SubTotal"></asp:Label>
             
        </div>
       
        <div align="right" style = " width:890px; margin-right:10px;">
       
        <asp:TextBox ID="TXTDescuento" runat="server" 
        Width="113px" Enabled="False" BorderStyle="Solid"></asp:TextBox>
        
            <asp:Label ID="Label4" runat="server" Text="Descuento"></asp:Label>
        </div>
        <div align="right" style = " width:900px; margin-right:10px;">
       
        <asp:TextBox ID="TXTImpuesto" runat="server" 
        Width="113px" Enabled="False"></asp:TextBox>         
            <asp:Label ID="Label5" runat="server" Text="Impuesto"></asp:Label>
        </div>
        <div align="right" style = " width:900px; margin-right:10px; margin-bottom:10px;">
   
        <asp:TextBox ID="TXTTotalFactura" runat="server" Width="113px" Enabled="False"  
                EnableTheming="False"></asp:TextBox>
                
            <asp:Label ID="Label6" runat="server" Text="Total Pedido"></asp:Label>
        </div>
         </div>   

            </div>
             </div>
        <div  align="left" style=" width:900px; height:45px; margin-top:0.5cm; background-color:#FFFFFF;"> 
        <div id= "Navegar"  
            style=" float:left;height:45px; width:250px;  " 
            align="left"  >
       <asp:Button ID="CMDPrimero" runat="server" Width="46px" onclick="CMDPrimero_Click" 
                CssClass="BotonPrimero" Height="46px" 
                    />
           
                <asp:Button ID="CMDAtras" runat="server" class="button" 
                Width="46px" CssClass="BotonAtras" onclick="CMDAtras_Click" Height="46px" 
                    />
                <asp:Button ID="CMDAdelante" runat="server" class="button" 
                    Width="46px" onclick="CMDAdelante_Click" CssClass="BotonSiguiente" Height="46px" 
                    />   
                                     
                     <asp:Button ID="CMDUltimo" runat="server" Width="46px" 
                CssClass="BotonUltimo" onclick="CMDUltimo_Click" Height="46px" 
                    />
                <asp:Button ID="CMDBuscar" runat="server" class="button" Width="46px" 
                CssClass="BotonBuscar" Height="46px" onclick="CMDBuscar_Click"
                    />
                        
        </div>
        <div id= "Div1"
           style="float:left; direction:rtl;  text-align:right; height:45px; width:650px;  background-color: #FFFFFF;" 
             >
             <asp:Button ID="CMDIncluir" runat="server"
                    Text="Enviar Email"  CssClass=" EspacioBotones" 
         Height="25px" ForeColor="White"
                    />
                     <asp:Button ID="Button1" runat="server"
                    Text=" Anular" CssClass=" EspacioBotones" 
         Height="25px" ForeColor="White"
                    />
                     <asp:Button ID="CMDEditarPedido" runat="server"
                    Text="Editar Pedido"  CssClass=" EspacioBotones" 
         Height="25px" ForeColor="White" onclick="CMDEditarPedido_Click"
                    />
                     <asp:Button ID="Button3" runat="server"
                    Text=" Nuevo Pedido"  CssClass=" EspacioBotones" 
         Height="25px" ForeColor="White"
                    />
        
        
         </div>
        </div>




               </div>  

</asp:Content>
  