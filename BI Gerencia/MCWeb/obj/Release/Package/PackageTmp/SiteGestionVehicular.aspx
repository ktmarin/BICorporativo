<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteGestionVehicular.aspx.cs" Inherits="MCWebHogar.SiteGestionVehicular" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CRM Paneltec</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <meta name="viewport" content="width=device-width" />
    

      <%-- <link href="Styles/bootstrap.min.css" rel="stylesheet" />--%> <%--Vertice--%>
     <link href="Styles/bootstrap.min.paneltec.css" rel="stylesheet" /> <%--Paneltec--%>
      <link href="Styles/style_crmv.css" rel="stylesheet" />
      <link href="Styles/fonts.css" rel="stylesheet" />

       <script src="/Scripts/jquery-3.2.0.min.js"></script>

        <script src="/Scripts/jquery-2.1.1.min.js"></script>
        <script src="/Scripts/bootstrap.min.js"></script>
        
        <script src="/Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script src="/Scripts/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
        <link href="/Styles/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <link href="/Styles/jquery.ui.min.css" rel="stylesheet" />

        <script src="/Scripts/Alertify/alertify.min.js"></script>
        <link href="/Styles/AlertifyCss/alertify.css" rel="stylesheet" />
        <link href="/Styles/AlertifyCss/alertify.min.css" rel="stylesheet" />
        <link href="/Styles/AlertifyCss/default.min.css" rel="stylesheet" />
   
     <%-- <link href="images/favicon.png" rel="shortcut icon"/>--%>
      <link href="images/logopanelteccorto.png" rel="shortcut icon"/>
      

  
</head>
<body>
    <form id="form1" runat="server" >
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

         <div class="navbar navbar-inverse navbar-fixed-top" style="height: 15px;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" onclick="SessionAct()">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                 
                 <%--   <img id="brand-image" alt="WebSite Logo" src="../images/logovertice.png" height="35" />  --%>
                    <img id="brand-image" alt="WebSite Logo" src="../images/logoeuro.png" height="35" />
                   
                    </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" style="width:80%;">
                    
                    <li><a href="../CRM/FRMCR01LeadMenu.aspx">
                          <span class= "glyphicon-wrench "></span>&nbsp;Gestión Vehicular
                        </a> </li>
                <%--   
                    <li><a href="../CRM/FRMCC01Menu.aspx">
                         <span class="icon-add-user"></span>&nbsp;Empresas
                        </a></li>
                 
                    <li><a href="../CRM/FRMCR10Menu.aspx">
                        <span class="icon-pencil"></span>&nbsp;Contactos
                        </a></li>
                  
                    <li><a href="../CRM/FRMCR40Menu.aspx">
                        <span class="icon-price-tag"></span> &nbsp;Proyectos
                        </a></li>
                      <li><a href="../CRM/FRMControlComprasInter_Analitico.aspx">
                        <span class="icon-pie-chart"></span> &nbsp;Dash
                        </a></li>
                      <li>
                           <asp:LinkButton ID="LnkRutas" runat="server" PostBackUrl="~/CRM/FRMLocalizacion.aspx" >
                              <span class="icon-location-pin"></span> &nbsp;GPS
                          </asp:LinkButton>

                      </li>--%>

                 
                   <li class="navexit">
                   <%-- <li>--%>
                     <asp:LinkButton ID="LnkSalir" runat="server"  OnClientClick="return confirm('Esta seguro que desea salir?')">
                         Cerrar Session &nbsp;<span class="glyphicon glyphicon-log-out"></span> 
                     </asp:LinkButton>
                   </li>
                   
                </ul>
            </div>
        </div>
    </div>


<%--        <asp:ContentPlaceHolder ID="Content" runat="server">
           

        </asp:ContentPlaceHolder>--%>
   
    </form>
</body>
</html>
