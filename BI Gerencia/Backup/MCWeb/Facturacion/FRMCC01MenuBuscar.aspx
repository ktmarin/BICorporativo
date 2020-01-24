<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMCC01MenuBuscar.aspx.cs" 
Inherits="MCWeb.Facturacion.FRMCC01MenuBuscar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="Contenido" >
<div id="Head" >
 <h1 style=" margin-top:5px; margin-bottom:10px; width:900px; height:35px; font-family: 'Century Gothic'; font-size: 28px; font-weight: normal;" 
          align="left" >
 Busqueda de Ofertas
 </h1>
 </div>
 <div id="Panel-Opciones-Busqueda" style=" width:900px; float:left;">

 <asp:Button ID="CMDBuscar" runat="server" Text="Buscar" 
        onclick="CMDBuscar_Click" />

 </div>
<div id="ControlBusquedac">


<div  style="float:left; width:30px; ">  
<p>_____</p>
</div>
<div  style="float:left; width:150px;">  
    <asp:TextBox ID="TXTCodigoCliente" runat="server"  Width="150px"></asp:TextBox>
</div>
<div  style="float:left; width:350px;">  
<asp:TextBox ID="TextBox2" runat="server"  Width="350px"></asp:TextBox>
</div>
<div  style="float:left; width:150px;">  
<asp:TextBox ID="TextBox3" runat="server"  Width="150px"></asp:TextBox>
</div>

<div  style="float:left; width:150px;">  
<asp:TextBox ID="TextBox4"  Width="150px" runat="server"></asp:TextBox>
</div>



</div>
<div id= "ControlGrid" style=" float:left; height:auto;">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        ShowHeaderWhenEmpty="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/select_32.png" 
                ShowSelectButton="True" />
            <asp:BoundField HeaderText="Codigo Cliente" DataField="sCodigo">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Nombre del Cliente" DataField="sNombre">
            <ItemStyle Width="350px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Identificacion" DataField="sCedula_Juridica">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Telefono" DataField="sTelefono">
            <ItemStyle Width="150px" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle BackColor="#CCCCCC" BorderColor="#333333" Height="25px" />
    </asp:GridView>
<br />
<br />
<br />

</div>
 </div>


</asp:Content>
