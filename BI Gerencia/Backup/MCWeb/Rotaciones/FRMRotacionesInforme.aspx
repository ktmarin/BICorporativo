<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMRotacionesInforme.aspx.cs" Inherits="MCWeb.Rotaciones.FRMRotacionesInforme" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="~/Styles/bootstrap.css" rel="stylesheet" type="text/css" />
         <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
  <div id="ControlGeneral" class="Contenido" style=" height:800px;">
   <div id="Encabezado" style=" width:900px; height:90px; background:url('../images/productheader_divider.jpg'); background-repeat: no-repeat;   margin-bottom:0px" >  
 
  <h1 style=" margin-top:10px; margin-bottom:0px; width:900px; height:60px; font-family: 'Century Gothic'; font-size: 30px; font-weight: normal;" 
          align="left">
         Informe Rotaciones.
         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
 </h1>
 </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server"  Width="900px" 
          Height="701px">
    </rsweb:ReportViewer>
    </div>
    </form>
</body>
</html>
