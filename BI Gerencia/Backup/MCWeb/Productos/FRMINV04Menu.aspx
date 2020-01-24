<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMINV04Menu.aspx.cs" Inherits="MCWeb.Productos.FRMINV04Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="Contenido">
 <div id="Panel"  style= " height:600px; width:900px;">
  <div id="Div1" style=" width:900px; height:50px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat;   margin-bottom:20px" >
  
  <h1 style=" margin-top:10px; margin-bottom:10px; width:900px; height:90px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
          Catálogos de productos.
 </h1>
 </div>
<div id="Izquierda"  class="StyleMSG" style=" float:left; width:350px; height:420px;">

<div style=" float:left; width:10px; height:30px; margin-top:10px;">
</div>
 <div  style=" float:left; width:340px; height:30px;margin-top:10px; "  >
 
     <asp:Label   class="LetraPadPq" ID="Label2" runat="server" Text="Codigo de Producto:"></asp:Label>
     <asp:TextBox class="LetraPadPq" ID="TXTItem" runat="server" Width="156px"></asp:TextBox>

 </div>

 
<div style=" float:left; width:10px; height:20px; margin-top:0px;">
</div>
  <div  style=" float:left; width:340px; height:20px;">
  <asp:Label class="LetraPadPq" ID="Label3" runat="server" Text="Descripción de Producto:"></asp:Label>
  </div> 
  
<div style=" float:left; width:10px; height:25px; margin-top:0px;">
</div>
  <div  style=" float:left; width:340px; height:30px;">
  <asp:TextBox class="LetraPadPq" ID="TXTDescripcion" runat="server" Width="330px"></asp:TextBox>
  </div> 

   <div  style=" float:left; width:350px;">  
   
<div style=" float:left; width:10px; height:30px; margin-top:0px;">
</div>
 <div style=" width:340px; float:left; height:30px; vertical-align: middle ;" >
     <asp:Label class="LetraPadPq"  ID="Label4" runat="server" Text="Precio:" ></asp:Label>
  <asp:TextBox class="LetraPadPq"  ID="TXTPrecioPublico" runat="server" Width="163px"></asp:TextBox>

 </div>
 
<div style=" float:left; width:10px; height:30px; margin-top:0px;">
</div>
 <div style=" width:340px; float:left; height:30px; " >
     <asp:Label class="LetraPadPq" ID="Label5" runat="server" Text="Moneda:" ></asp:Label>
         <asp:DropDownList class="LetraPadPq" ID="CMDMoneda" runat="server" 
            style="margin-bottom: 0px" Width="108px" Height="25px">
            <asp:ListItem Selected="True">Colones</asp:ListItem>
            <asp:ListItem Value="Dolares"></asp:ListItem>
        </asp:DropDownList>
 </div>
 <div style=" float:left; width:10px; height:83px; margin-top:0px;">
</div>
 <div style=" width:340px; float:left; height:110px; " >
  <asp:Label class="LetraPadPq" ID="LabelCanal0" runat="server" Text="Datos Tecnicos:"></asp:Label>
                <br />
        <asp:TextBox  class="LetraPadPq" ID="TXTDatosTecnicos" runat="server" Height="83px" Width="330px" 
                    TextMode="MultiLine" CssClass="style5"></asp:TextBox>

 </div>
 <div style=" float:left; width:10px; height:142px; margin-top:0px;">
</div>
  <div style=" overflow:  auto; width:340px; float:left;  height:148px;" >
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
          CssClass="grid"  Width="330px"
                 CaptionAlign="Left"  GridLines="None" ShowHeaderWhenEmpty="True">
                <Columns>
                    <asp:BoundField DataField="Bodega" HeaderText="Bodega" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sDescripcion" HeaderText="Descripcion" />
                    <asp:BoundField DataField="Saldo" HeaderText="Saldo" 
                        ControlStyle-BorderStyle="None" >
<ControlStyle BorderStyle="None"></ControlStyle>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sCodigo_Producto" HeaderText="sCodigo_Producto" 
                        Visible="False" />
                </Columns>
                </asp:GridView>
                <br />
     </div> 
      </div> 
 
 </div> 
  <div id="Centro"  style=" float:left; width:10px; height:420px;">

  </div> 
<div id="Derecha" class=" StyleMSG" style=" width:530px; float:left;   height:420px; " >
<br />
<div style="margin-left:10px;" >
 <div id="slider" class="slider" > 
                <ul style="margin-left:10px;" id="ulImages"> </ul>
            </div>
            </div>
 </div>
 <div id="Controles" style=" width:360px; float:left; height:40px; margin-top:20px; " >
 &nbsp;<asp:Button ID="CMDPrimero" runat="server" class="minimal-indent" 
                    Text="|<" Height="35px"  Width="32px" onclick="CMDPrimero_Click" 
                    />
            &nbsp;
                <asp:Button ID="CMDAtras" runat="server" class="minimal-indent" Text="<" 
         Width="32px" Height="35px"  onclick="CMDAtras_Click"  
                    />
            &nbsp;
                <asp:Button ID="CMDAdelante" runat="server" class="minimal-indent" Text=">" 
                    Width="32px" Height="35px"  onclick="CMDAdelante_Click"
                    />
            &nbsp;<asp:Button ID="CMDUltimo" runat="server" 
                    Text=">|" Height="35px"  Width="32px"  CssClass="minimal-indent" onclick="CMDUltimo_Click" 
                    />
            &nbsp;
                <asp:Button ID="CMDBuscar" runat="server"
                    Text=" Buscar" Width="97px" CssClass="minimal-indent" 
         Height="35px" onclick="CMDBuscar_Click" 
                    />

 </div>
 <div id="Div2" style=" width:520px; float:left; margin-top:20px; height:40px; margin-right:20px; " >
 <div style=" width:300px; float:left; height:40px;  text-align:center ; ">
 
     <asp:Label ID="Label1" runat="server" Text="Cantidad:"></asp:Label>
     <asp:TextBox ID="TXTCantidad"
         runat="server"></asp:TextBox>
 </div>

 <div style=" width:220px; float:left;height:40px; direction:  rtl  ; ">
   <asp:Button ID="CMDComprar" runat="server"
                    Text=" Comprar" Width="97px" CssClass="BotonLogon" 
         Height="25px" ForeColor="White" onclick="CMDComprar_Click"
                    />
 </div>
 
   </div>

 </div>

 </div>


</asp:Content>
