<%@ Page Title="" Language="C#" MasterPageFile="~/MenuPrincipal.Master" AutoEventWireup="true" CodeBehind="FRMIM02Menu.aspx.cs" Inherits="MCWeb.Productos.FRMIM02Menu" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
    {
            width: 360px;
             color:Green;
        }
        .style5
        {
            color: Black;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <table style="width: 100%">
    <tr>
       <td class="style4">
        <asp:Label ID="LabelPpal" runat="server" Text="Administracion de Imagenes" Font-Bold="False"
                    Font-Names="Segoe UI" Font-Size="14pt" ForeColor="Green" Font-Underline ="true"></asp:Label>
            </td>
            <td rowspan = "5">
                <asp:Image ID="PicImagenCargada" runat="server" Width="450" Height="350"  />
            </td>
 
    </tr>
         <tr>
            <td class="style4"  >
        <asp:Label ID="LabelNombre" runat="server" Text="ITEM:"  ></asp:Label>
            &nbsp;&nbsp;&nbsp;
       <asp:TextBox ID="TXTItem" runat="server" Width="146px" Height="20px" CssClass="style5"></asp:TextBox> 
               

            </td>
          
        </tr>
        <tr>
            <td class="style4" >
        <asp:Label ID="LabelArchivoAdjunto" runat="server" Text="Descripcion del Producto:" 
                    Font-Overline="False"> </asp:Label>
                &nbsp;<br />
        <asp:TextBox ID="TXTDescripcion" runat="server" Height="23px" Width="426px" 
                    CssClass="style5" ontextchanged="TXTDescripcion_TextChanged"></asp:TextBox>
            </td>
     </tr>
     <tr>     
        <td class="style4">
             <asp:Label ID="Label1" runat="server" Text="Lista de Imagenes" Font-Bold="False"
                    Font-Names="Segoe UI" Font-Size="14pt" ForeColor="Green" Font-Underline ="true"></asp:Label>
            </td>
     </tr>
     <tr>
       <td class="style4">


     <asp:DataList runat="server" id="dlPictures"  
     RepeatColumns="2" 
     GridLines = "Both"
     ItemStyle-HorizontalAlign="Left"
     cellpadding="0"
     cellspacing="2"
     BorderColor ="Black"
     BorderStyle="Solid"
     BorderWidth="1"
     HorizontalAlign="Left"
     VerticalAlign= "left" Width="377px" onitemdatabound="dlPictures_ItemDataBound" 
               onselectedindexchanged="dlPictures_SelectedIndexChanged">    
  <ItemTemplate>
    <%# Container.DataItem %>
  </ItemTemplate>
</asp:DataList>
         </td>
         </tr>
         <tr>
         <td>
         
             <asp:Button ID="CMDEliminar" runat="server" Text="Eliminar" Width="113px" 
                 CssClass="button" />

             <asp:Button ID="CMDActualizar" runat="server" Text="Actualizar Detalle" 
                 Width="113px" CssClass="button" />
           <asp:Button ID="CMDBuscar" runat="server" class="button" 
                    Text=" Buscar" Width="97px" CssClass="Updatebutton" Height="28px" onclick="CMDBuscar_Click"  
                    />
         </td>
         <td>

             <asp:Button ID="CMDIncluir" runat="server" Text="Incluir Imagen" Width="113px" 
                 CssClass="button" onclick="CMDIncluir_Click" />
         
         <asp:FileUpload ID="FileUpload1" runat="server" 
            Width="230px"/>

         </td>
         </tr>
         <tr>
         <td>
         </td>
         <td>
         
           </td>
         </tr>
    </table>
</asp:Content>
