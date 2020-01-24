<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMREINV04MenuFGP.aspx.cs" Inherits="MCWeb.Reportes.FRMREINV04MenuFGP" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

 <script type="text/javascript" language="javascript">
     function mostrar_procesar() {
         document.getElementById("procesando_div").style.display = "";
         setTimeout('document.images["procesando_gif"].src="../images/loader.gif"', 200);

     }

</script>

<%-- <script type="text/javascript" language="javascript">
$('#div_carga')
			.hide()
			.ajaxStart(function() {
				$(this).show();
			})
			.ajaxStop(function() {
				$(this).hide();
			})
		;
        </script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
 <div class ="Contenido" style=" height:900px;">






<%--
     <span id="procesando_div" style="display:  none; position:absolute; text-align:center">
<img src="../images/loader.gif" alt="" align="middle" />--%>

     <span id="procesando_div" style="   position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
	display:none;
	border:none;
	border-bottom-style:none;
	z-index:1;
	background-color: Gray;
	filter: alpha(opacity=50);
	opacity: 0.50;
	">
    


<img id="cargador2" src="../images/Imagen3.png" alt="" align="middle" />
<img id="cargador" src="../images/loader.gif" alt=""  />
</span>
<%--<div id="procesando_div">
<img id="cargador" alt="" src="../images/loader.gif"/>
</div>--%>



   <div id="Encabezado" style=" width:900px; height:90px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat;   margin-bottom:0px" >  
 
  <h1 style=" margin-top:10px; margin-bottom:0px; width:900px; height:60px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
         Reporte Catálogos de productos.
 </h1>
 </div>

<div   id="Labels" style=" float:left; width:150px; height:100px;" >

<div style=" float:left; width:150px; height:30px;">
    <asp:Label ID="Label1"  runat="server" Text="Familia/Grupo:" class ="LetraPadPq"></asp:Label>
</div>
<div style=" float:left; width:150px; height:30px;">
    <asp:Label ID="Label2"  runat="server" Text="Codigo de Proveedor:" class ="LetraPadPq"></asp:Label>
</div>
<div style=" float:left; width:150px; height:30px;">
  <asp:Label ID="Label3"  runat="server" Text="Formato de Reporte:" class ="LetraPadPq"></asp:Label>
</div>


</div>
<div   id="TexBoxes" style=" float:left; width:150px; height:100px;">
<div style=" float:left; width:150px; height:30px;">
<asp:TextBox ID="TXTGrupo" runat="server" Width="150px"></asp:TextBox>


</div>
<div style=" float:left; width:150px; height:30px;">
<asp:TextBox ID="TXTProveedor" runat="server" Width="150px"></asp:TextBox>
</div>
<div style=" float:left; width:150px; height:30px; ">
<asp:DropDownList
    ID="CMBTipoReporte" runat="server" Height="23px" Width="150px">
    <asp:ListItem Selected="True" Value="General"></asp:ListItem>
    <asp:ListItem Value="Resumido"></asp:ListItem>
      </asp:DropDownList>
</div>

</div>
<div   id="Buttons" style=" float:left; width:600px; height:100px;">
<div style=" float:left; width:590px;margin-left:10px; height:30px;">
      <asp:Button ID="CMDCodigoProducto" runat="server" Text="..." Width="39px" 
          CssClass=" BotonLogon" Height="23px" Font-Bold="True" ForeColor="White" 
          onclick="CMDCodigoProducto_Click" />
</div>
<div style=" float:left; width:590px;margin-left:10px; height:30px;">

      <asp:Button ID="CMDPrecio" runat="server" Text="..." Width="38px" 
          CssClass=" BotonLogon" Height="23px" Font-Bold="True" ForeColor="White" 
          onclick="CMDPrecio_Click"/>

</div>
<div style=" float:left; width:590px;margin-left:10px; height:30px;">


      <asp:Button ID="CMDGrupo" runat="server" Text="..." Width="38px" 
          CssClass=" BotonLogon" Height="23px" Font-Bold="True" ForeColor="White" />


</div>
</div>

     <div  style=" Width:900px; float:left; margin-bottom:10px; margin-top:10px;">
                 <asp:Button ID="CMDGenerarInforme" CausesValidation="true" runat="server" Text="Generar Informe"  
         Width ="140px" onclick="CMDGenerarInforme_Click" CssClass=" BotonLogon"  Height="24px" OnClientClick="mostrar_procesar(); "
         ForeColor="White"/>
          </div>

   <div style="float:left; overflow:auto;  width:900px; height:525px;">
     <rsweb:ReportViewer  ID="ReportViewer1" runat="server" Width="900px" Height="520px" >
     </rsweb:ReportViewer>
</div>
</div>



    </div>
</asp:Content>
