<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="FRMREFACMenuVentasVendedor.aspx.cs" Inherits="MCWeb.Reportes.FRMREINV04MenuFGP" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
 <div class ="Contenido" style=" height:900px;">
   
   <div id="Encabezado" style=" width:900px; height:70px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat;   margin-bottom:0px" >  
  <h1 style=" margin-top:10px; margin-bottom:0px; width:900px; height:50px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
         Reporte Ventas por Vendedor
 </h1>
 </div>
 <div   id="Div1" style=" float:left; width:900px; height:40px;" >
 <div style=" float:left; width:80px; height:30px; vertical-align:middle;">
    <asp:Label ID="Label123"  runat="server" Text="Fecha desde:" class ="LetraPadPq"></asp:Label>
</div>

<div style=" float:left; width:120px; height:30px;">
  <telerik:RadDatePicker ID="DateFechaDesde" Width = "100px" runat="server" 
        Calendar-CultureInfo="es-ES" SelectedDate="2010-01-01">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False"></Calendar>

<DateInput DisplayDateFormat="dd-MM-yyyy" DateFormat="dd-MM-yyyy" LabelWidth="40%" 
          DisplayText="01-01-2010" SelectedDate="2010-01-01" value="01-01-2010">
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

<div style=" float:left; width:80px; height:30px;">
    <asp:Label ID="Label22"  runat="server" Text="Fecha hasta:" class ="LetraPadPq"></asp:Label>
</div>

<div style=" float:left; width:120px; height:30px;">
  <telerik:RadDatePicker ID="DateFechaHasta" runat="server"  Width = "100px" 
        Calendar-CultureInfo="es-ES" SelectedDate="2013-09-25">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False"></Calendar>

<DateInput DisplayDateFormat="dd-MM-yyyy" DateFormat="dd-MM-yyyy" LabelWidth="40%" 
          DisplayText="25-09-2013" SelectedDate="2013-09-25" value="25-09-2013">
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


<div style=" float:left; width:130px; height:30px;">
  <asp:Label ID="Label32"  runat="server" Text="Formato de Reporte:" class ="LetraPadPq"></asp:Label>
</div>

<div style=" float:left; width:150px; height:30px; ">

<asp:DropDownList
    ID="CMBTipoReporte2" runat="server" Height="23px" Width="100px">
    <asp:ListItem Selected="True" Value="General"></asp:ListItem>
    <asp:ListItem Value="Resumido"></asp:ListItem>
      </asp:DropDownList>
</div>

<div style=" float:left; width:180px; height:30px;">
       <asp:Button ID="CMDGenerarInforme23" runat="server" Text="Generar Informe"  
         Width ="140px" onclick="CMDGenerarInforme23_Click" CssClass=" BotonLogon"  Height="24px"
         ForeColor="White"/>

</div>

 </div>

     <div  style=" Width:900px; float:left; margin-bottom:10px; margin-top:10px;">
          
        
         



   <div style="float:left; overflow:auto;  width:900px; height:800px;">
     <rsweb:ReportViewer  ID="ReportViewer12" runat="server" Width="900px" 
           Height="740px" >
     </rsweb:ReportViewer>
</div>
</div>



    </div>
</asp:Content>
