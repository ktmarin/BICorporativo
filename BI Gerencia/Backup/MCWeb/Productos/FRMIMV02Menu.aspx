<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMIMV02Menu.aspx.cs" Inherits="MCWeb.Productos.FRMIMV02Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
  
  <div class ="Contenido" >

  <div id="Panel" style=" width:950px; height:600px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat; " >
 <div id="Head" 
          style=" margin-top:10px; width:900px; height:60px;  margin-bottom:10px;font-family: 'Century Gothic'; font-size: 15px; font-weight: normal; " 
          align="center" >
 <h1 style=" margin-top:10px; margin-bottom:10px; width:950px; height:90px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="center">
 Configuración y mantenimiento de Imagenes
 </h1>
 
 </div>
<div id="IZQUIERDA" style=" width:400px; float:left; height:auto; Height:460px;" >
<br />
<div style=" width:400px; float:left;" class="StyleMSG" >
<div style=" width:400px; float:left; height:50px;" >
<div style=" width:10px; float:left;  height:50px;">
 
</div>
<div style=" width:390px; float:left; height:50px;">
<h2 class=" LetraPadPG" style=" margin-top:10px;">
 Administración de Imagenes
</h2>
</div>

</div>
<div style=" width:400px; float:left; height:25px;">

<div style=" width:10px; float:left;  height:25px;">
</div>
<div style=" width:390px; float:left; height:50px;">
<asp:Label ID="LabelNombre" runat="server" Text="Codigo de Producto: " CssClass="LetraPadPq"  ></asp:Label>
       <asp:TextBox ID="TXTItem" runat="server" Width="179px"  CssClass="LetraPadPq"></asp:TextBox> 
</div>
              
</div>
<div style=" width:400px; float:left; height:25px;">
<div style=" width:10px; float:left;  height:25px;">
</div>
<div style=" width:390px; float:left; height:25px;" >

<asp:Label  CssClass="LetraPadPq" ID="LabelArchivoAdjunto" runat="server" Text="Descripcion del Producto:" 
                    Font-Overline="False"> </asp:Label>
                &nbsp;<br />

</div>
   
          
</div>
<div style=" width:400px; float:left; height:30px;">
<div style=" width:10px; float:left;  height:25px;">
</div>
<div style=" width:380px; float:left; height:25px;" >
       <asp:TextBox ID="TXTDescripcion" runat="server"  Width="370px" CssClass=" LetraPadPq "  
                    ></asp:TextBox>
          
</div>

          
</div>
</div>
<div style=" width:400px; float:left; height:auto;" >
<br />
</div>
<div style=" width:400px; float:left;" class="StyleMSG" >
<div style=" width:10px; float:left;  height:25px;">
</div>
<div style=" width:380px; float:left; height:25px;" >
  <asp:Label  CssClass=" LetraPadPG" ID="Label1" runat="server" 
     Font-Bold="False" Font-Names="Segoe UI"
     TextIDLineaImagen="">Lista de Imagénes</asp:Label>
          
</div>


<div style="overflow:auto; width:400px; float:left; height:250px; ">
<div style=" width:10px; float:left;  height:20px;">
<br />
</div>
<div style=" width:350px; float:left; height:219px;" >
    <asp:GridView   CssClass=" grid" ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="0" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        ShowHeaderWhenEmpty="True" Width="350px" 
        onrowdeleting="GridView1_RowDeleting" PageSize="2" PageIndex="1" BorderStyle="None" 
  >
        <Columns   >
            <asp:BoundField DataField="IDLinea" >
            <ItemStyle Width="1px" Height="25px" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="Imagen" HeaderText="Imagen" Visible="False" >
            <ItemStyle Height="40px" Width="100px" />
            </asp:BoundField>


            <asp:ImageField DataImageUrlField="GImagen" HeaderText="Imagen">
                <ControlStyle Height="100px" Width="200px" />
                <HeaderStyle Height="27px" />
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Height="30px" 
                    Width="200px" />
            </asp:ImageField>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/images/deletered_32.png" 
                SelectImageUrl="~/images/deletered_32.png" ShowSelectButton="True" >
            <ControlStyle Width="30px" />
            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
            </asp:CommandField>
            <asp:TemplateField Visible="False">
                <HeaderStyle Height="25px" />
            </asp:TemplateField>
        </Columns>
        <PagerSettings PageButtonCount="2" />
    </asp:GridView>

          
</div>

</div>
</div>
</div>
<div id="Centro" style=" width:20px; float:left; height:460px;"> 
<br />
</div>
<div id="DERECHA" style=" width:460px; float:left; padding-left:10px; Height:460px;">
<br />
<div style=" width:460px; float:left; padding-left:10px; Height:425px;" class="StyleM">
<div style=" width:460px; float:left;  margin-top:10px; ">

                <asp:Image ID="PicImagenCargada" runat="server" Width="450px" Height="350px" 
                    ImageAlign="Bottom" />
              
                </div>
                 
<div style=" width:470px; float:left;">
                 <br />
                <asp:Button ID="CMDIncluir" runat="server" Text="Incluir Imagen" Width="97px"  Height="25px"
                  CssClass=LetraPadPq onclick="CMDIncluir_Click" ForeColor="White" />
         
         <asp:FileUpload ID="FileUpload1" runat="server" 
            Width="350px"/>
</div>
</div>
</div>
<div id="Div1" style="float:left; height:25px; width:900px;">
           <asp:Button ID="CMDBuscar" runat="server" CssClass=" BotonLogon" Height="25px" 
                 onclick="CMDBuscar_Click" Text="Buscar" Width="91px" 
               ForeColor="White"  />
</div>
<div id="Div2" style="float:left; height:30px; width:900px;">


                    
</div>      
                                                                                                                                                                                                                                                                                                                                                                                                                                   
</div>     
                                                                                                                                                                                                                                                                                                                                                                                                                        
</div>                     


</asp:Content>
