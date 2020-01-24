<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMNotificacion1.aspx.cs" Inherits="MCWebHogar.CRM.FRMNotificacion1"   %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CRM Paneltec</title>
    
    
      
      <link href="/Styles/fonts.css" rel="stylesheet" />

      <%--<script src="/Scripts/jquery-3.2.0.min.js"></script>

        <script src="/Scripts/jquery-2.1.1.min.js"></script>--%>
        <%--<script src="/Scripts/bootstrap.min.js"></script>
        --%>
        <%--<script src="/Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
        <script src="/Scripts/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
       <link href="/Styles/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
        <link href="/Styles/jquery.ui.min.css" rel="stylesheet" />--%>



    <script type="text/javascript" src="/Scripts/jquery-1.12.0.js"></script>
	
	<script type="text/javascript" src="/Scripts/editor.js"></script>	

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<%--	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />--%>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
   <%-- <link href="../Styles/font-awesome.min.css" rel="stylesheet" />--%>
    <%--<link href="../Styles/font-awesome.min.css.ma440.css" rel="stylesheet" />--%>

    <link href="/Styles/editor.css" rel="stylesheet" />
    <link href="/images/logopanelteccorto.png" rel="shortcut icon"/>
      
    
    <link href="/Styles/bootstrap.min.paneltec.css" rel="stylesheet" />
    <script src="/Scripts/bootstrap-notify.min.js"></script>
    <link href="/Styles/style_crmv.css" rel="stylesheet" />


        <style>

       /*div.ajax__html_editor_extender_container{
           width:600px !important;
           height:300px !important;
       }

        div.ajax__html_editor_extender_texteditor {
            height:150px !important;
            border-color: #c2c2c2;
            border-style: solid;
            border-width: 1px;
            padding: 2px 2px 2px 2px;
        }*/

        /*css for steps*/
        ul.nav-wizard {
          background-color: #f1f1f1;
          border: 1px solid #d4d4d4;
          -webkit-border-radius: 6px;
          -moz-border-radius: 6px;
          border-radius: 3px;
          position: relative;
          overflow: hidden;
        }
        ul.nav-wizard:before {
          position: absolute;
        }
        ul.nav-wizard:after {
          display: block;
          position: absolute;
          left: 0px;
          right: 0px;
          top: 138px;
          height: 47px;
          border-top: 1px solid #d4d4d4;
          border-bottom: 1px solid #d4d4d4;
          z-index: 11;
          content: " ";
        }
        ul.nav-wizard li {
          position: relative;
          float: left;
          height: 46px;
          display: inline-block;
          text-align: center;
          padding: 0 20px 0 30px;
          margin: 0;
          font-size: 16px;
          line-height: 46px;
        }
        ul.nav-wizard li a {
          color: #428bca;
          padding: 0;
        }
        ul.nav-wizard li a:hover {
          background-color: transparent;
        }
        ul.nav-wizard li:before {
          position: absolute;
          display: block;
          border: 24px solid transparent;
          border-left: 16px solid #d4d4d4;
          border-right: 0;
          top: -1px;
          z-index: 10;
          content: '';
          right: -16px;
        }
        ul.nav-wizard li:after {
          position: absolute;
          display: block;
          border: 24px solid transparent;
          border-left: 16px solid #f1f1f1;
          border-right: 0;
          top: -1px;
          z-index: 10;
          content: '';
          right: -15px;
        }
        ul.nav-wizard li.active {
          color: #3a87ad;
          background: #dedede;
        }
        ul.nav-wizard li.active:after {
          border-left: 16px solid #dedede;
        }
        ul.nav-wizard li.active a,
        ul.nav-wizard li.active a:active,
        ul.nav-wizard li.active a:visited,
        ul.nav-wizard li.active a:focus {
          color: #989898;
          background: #dedede;
        }
        ul.nav-wizard .active ~ li {
          color: #999999;
          background: #f9f9f9;
        }
        ul.nav-wizard .active ~ li:after {
          border-left: 16px solid #f9f9f9;
        }
        ul.nav-wizard .active ~ li a,
        ul.nav-wizard .active ~ li a:active,
        ul.nav-wizard .active ~ li a:visited,
        ul.nav-wizard .active ~ li a:focus {
          color: #999999;
          background: #f9f9f9;
        }
        ul.nav-wizard.nav-wizard-backnav li:hover {
          color: #468847;
          background: #f6fbfd;
        }
        ul.nav-wizard.nav-wizard-backnav li:hover:after {
          border-left: 16px solid #f6fbfd;
        }
        ul.nav-wizard.nav-wizard-backnav li:hover a,
        ul.nav-wizard.nav-wizard-backnav li:hover a:active,
        ul.nav-wizard.nav-wizard-backnav li:hover a:visited,
        ul.nav-wizard.nav-wizard-backnav li:hover a:focus {
          color: #468847;
          background: #f6fbfd;
        }
        ul.nav-wizard.nav-wizard-backnav .active ~ li {
          color: #999999;
          background: #ededed;
        }
        ul.nav-wizard.nav-wizard-backnav .active ~ li:after {
          border-left: 16px solid #ededed;
        }
        ul.nav-wizard.nav-wizard-backnav .active ~ li a,
        ul.nav-wizard.nav-wizard-backnav .active ~ li a:active,
        ul.nav-wizard.nav-wizard-backnav .active ~ li a:visited,
        ul.nav-wizard.nav-wizard-backnav .active ~ li a:focus {
          color: #999999;
          background: #ededed;
        }


        .PRUEBA{
            width:1000px;
            height:400px;
        }

        .cssToolTip {
            position: relative; /* Esta clase tiene que tener posicion relativa */
            color: #ff8c00; /* Color del texto */    
        }

        /* El tooltip */
        .cssToolTipspan {
           background: rgba(20,20,20,0.9);
            border: 2px solid #87cefa;
            border-radius: 5px;
            /* box-shadow: 5px 5px 5px #333; */
            color: white;
            display: inline;
            font-size: 0.9em;
            padding: 10px 10px 10px 15px;
            max-width: 6000px;
            position: absolute;
            top: 15px;
            right: 100%;
            z-index: 100;
        }

        /* El tooltip cuando se muestra */
        .cssToolTip:hover span {
            display: inline; /* Para mostrarlo simplemente usamos display block por ejemplo */
        }

        .flecha-right{
            width:0px;
            height:0px;
            border-bottom:45px solid transparent;  /* izquierda flecha */
            border-top:45px solid transparent; /* derecha flecha */
            border-left:25px solid #0000FF; /* base flecha y color*/
            font-size:0px;
            line-height:0px;
        }

        /*fin steps*/
    </style>

    <script type="text/javascript">

        function mostraralertifywarning(msj) {
            // alertify.notify(msj, 'warning', 5, null);
            $.notify({
                // options
                message: '<br>' + msj //'Hello World'
               , icon: 'glyphicon glyphicon-warning-sign',
                title: '<b>Notificación</b>'
            }, {
                // settings
                type: 'warning'
            });
        }

        function mostraralertifysuccess(msj) {
            //alertify.notify(msj, 'success', 5, null);
            $.notify({
                // options
                message: '<br>' + msj //'Hello World'
               , icon: 'glyphicon glyphicon-warning-sign',
                title: '<b>Notificación</b>'
            }, {
                // settings
                type: 'success',
                z_index: 1041

            });
        }

        function mostraralertifyerror(msj) {
            $.notify({
                // options
                message: '<br>' + msj //'Hello World'
               , icon: 'glyphicon glyphicon-warning-sign',
                title: '<b>Notificación</b>'
            }, {
                // settings
                type: 'danger'
            });
        }



        $(function () {

            $('#txt_content').Editor();

            $('#txt_contentedicion').Editor();

           // $('#txt_content').Editor('setText', ['<p style="color:red;">Hola</p>']);

            $('#btn-enviar').click(function (e) {
                e.preventDefault();
                $('#txt_content').text($('#txt_content').Editor('getText'));
                //$('#frm-test').submit();
            });

            
            $('#linkplantilla').click(function (e) {
                llenarhtml();
               
            });

            //$("txtDefaultHtmlArea").htmlarea(); // Initialize jHtmlArea's with all default values


            //$selector.removeClass('otherClass');

            //var element = document.getElementById('#Content_txthtml$HtmlEditorExtenderBehavior_ExtenderContainer');
            //element.style.width = "1000px";
            //element.style.height = "400px";
            //elemento.className += " col-md-6";

            //Wizard for steps
            $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

                var $target = $(e.target);
                if ($target.parent().hasClass('disabled')) {
                    return false;
                }
            });

            $(".btn-primary").click(function (e) {
                var $active = $('.wizard .nav-wizard li.active');
                $active.next().removeClass('disabled');
                nextTab($active);
            });
            //end stpes

            function nextTab(elem) {
                $(elem).next().find('a[data-toggle="tab"]').click();
                // alert('llego');
            }
        });

        function validarplantilla() {
            $('#txt_content').text($('#txt_content').Editor('getText'));

        }

        function validarplantillaedicion() {
            $('#txt_contentedicion').text($('#txt_contentedicion').Editor('getText'));

            //var s = $('#txt_contentedicion').Editor('getText');

         //   $('#txt_contentedicion').Editor('setText', s);

            //$('#txt_contentedicion').text(s);

           // return true;
           // $('#txt_contentedicion').Editor('setText', $('#txt_contentedicion').Editor('getText'));

            //alert('MS: ' + $('#txt_contentedicion').Editor('getText'));
        }

        function abrirPopVendedores() {
            document.getElementById("opensub").click();
            return false;
        }

        function abrirPopDestinatarios() {
            document.getElementById("opensubDestinatarios").click();
            return false;
        }

        function activarsearch(e) {
            if (e.keyCode == 13) {
                __doPostBack('ctl00$Content$CMD_BuscarUsuario', '');
            }
        }

        //function val() {
        //    var $selector = $('#Content_txthtml$HtmlEditorExtenderBehavior_ExtenderContainer');
        //    //$selector.hasClass('someClass');

        //    alert($selector);
        //    $selector.addClass('PRUEBA');


        //    var element = document.getElementById('#Content_txthtml$HtmlEditorExtenderBehavior_ExtenderContainer');
        //    alert(element);
        //    element.style.width = "1000px";
        //    element.style.height = "400px";
        //    elemento.className += " col-md-6";

        //    return false;
        //}

        function llenarhtml() {

            var idregla = $('#<%= TXTID.ClientID %>').val();

            //var moneda = $("#Content_CHK_Terminado").val();
            $.ajax(
                {
                    type: "POST",
                    url: "/CRM/FRMNotificacion1.aspx/HTML",
                    data: "{idregla:" + idregla + "}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        //something
                        var htmlcode = msg.d;
                        $('#txt_content').Editor('setText', [htmlcode]);
                        //alert('works');
                    }
                }
            );

            $.ajax(
                {
                    type: "POST",
                    url: "/CRM/FRMNotificacion1.aspx/HTMLE",
                    data: "{idregla:" + idregla + "}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        //something
                        var htmlcode = msg.d;
                        $('#txt_contentedicion').Editor('setText', [htmlcode]);
                        //alert('works');
                    }
                }
            );

           // $('#txt_content').Editor('setText', [html]);

        }

        function validarcampos() {
            var DDL_CamposCondicion = document.getElementById('<%= DDL_CamposCondicion.ClientID %>');
            var DDL_Operador = document.getElementById('<%= DDL_Operador.ClientID %>');
            var TXT_Valor1 = document.getElementById('<%= TXT_Valor1.ClientID %>').value;
            TXT_Valor1 = TXT_Valor1.trim();
          

            if (DDL_CamposCondicion.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el campo');
                return false;
            }
            if (DDL_Operador.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el operador de la condición');
                return false;
            }
            if (TXT_Valor1.length == 0) {
                mostraralertifyerror('Debe seleccionar el campo');
                return false;
            }
        }


        function validarEvento() {

            var i = document.getElementById("<%=TXTID.ClientID%>").value;
            var opc = document.getElementById("<%=CMB_Repetir.ClientID%>").value;

            
            
            if (document.getElementById("<%=TXT_nombreRegla.ClientID%>").value == '') {
                mostraralertifyerror('Debe escribir un nombre para la regla');
            }
            else {
                if (  (i == "" || i == "0") && opc != "Desactivado"  ) {

                
                if (validarFechaActual(document.getElementById("<%= TXT_FechaDesde.ClientID %>").value)) {

                    document.getElementById("<%= TXT_FechaHasta.ClientID %>").style.backgroundColor = "#ffffff";
                    document.getElementById("<%= TXT_FechaDesde.ClientID %>").style.backgroundColor = "#ffffff";
                    document.getElementById("<%= CMB_HoraHasta.ClientID %>").style.backgroundColor = "#ffffff";
                    document.getElementById("<%= CMB_HoraDesde.ClientID %>").style.backgroundColor = "#ffffff";


                    if (compararFechasMayorIgual(document.getElementById("<%=TXT_FechaHasta.ClientID %>").value, document.getElementById("<%= TXT_FechaDesde.ClientID %>").value)) {

                        document.getElementById("<%= TXT_FechaHasta.ClientID %>").style.backgroundColor = "#ffffff";
                        document.getElementById("<%= TXT_FechaDesde.ClientID %>").style.backgroundColor = "#ffffff";
                        document.getElementById("<%= CMB_HoraHasta.ClientID %>").style.backgroundColor = "#ffffff";
                        document.getElementById("<%= CMB_HoraDesde.ClientID %>").style.backgroundColor = "#ffffff";
                        return true;
                    }
                    else {
                        mostraralertifyerror('Verifique las fechas por favor');
                        document.getElementById("<%= TXT_FechaHasta.ClientID %>").style.backgroundColor = "#ecbfbf";
                        document.getElementById("<%= CMB_HoraHasta.ClientID %>").style.backgroundColor = "#ecbfbf";

                        return false;
                  }

                }else{
                    mostraralertifyerror('Verifique las fechas por favor');
                    document.getElementById("<%= TXT_FechaDesde.ClientID %>").style.backgroundColor = "#ecbfbf";
                    document.getElementById("<%= CMB_HoraDesde.ClientID %>").style.backgroundColor = "#ecbfbf";

                     return false;
                }
                
                } else {
                    return true;
                }
            }
            return false;
        }
        function validarFechaActual(FechaMenor) {
            var fecharecibida = FechaMenor.split("-");
            var horarecibida = document.getElementById("<%= CMB_HoraDesde.ClientID %>").value;
            var hora = horarecibida.split(":");
            
            var fecha = new Date(fecharecibida[0], fecharecibida[1] - 1, fecharecibida[2] , hora[0] ,0);

            var now = new Date();
            var hoy = new Date(now.getFullYear(), now.getMonth(), now.getDate(),now.getHours(),now.getMinutes());

            if (hoy > fecha) {
                //alert('es menor');
                return false;
            }
            else {
              //  alert('its ok');
                return true;
            }

        }
        function compararFechasMayorIgual(FechaMayor, FechaMenor) {

            var horarecibida1 = document.getElementById("<%= CMB_HoraDesde.ClientID %>").value;
            var horadesde = horarecibida1.split(":");
            var horarecibida2 = document.getElementById("<%= CMB_HoraHasta.ClientID %>").value;
            var horahasta = horarecibida2.split(":");

            var fecharecibida1 = FechaMayor.split("-");
            var fecha1 = new Date(fecharecibida1[0], fecharecibida1[1] - 1, fecharecibida1[2], horahasta[0],0);

            var fecharecibida = FechaMenor.split("-");
            var fecha2 = new Date(fecharecibida[0], fecharecibida[1] - 1, fecharecibida[2], horadesde[0], 0);

            if (fecha1.getTime() >= fecha2.getTime()) {
                return true;
            }
            else {
                return false;
            }
        }

        



        </script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization = "True" EnableScriptLocalization="True"
             EnablePageMethods="true"></asp:ScriptManager>



         <div class="navbar navbar-inverse navbar-fixed-top" style="height: 15px;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" onclick="SessionAct()">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                 
                    <img id="brand-image" alt="WebSite Logo" src="../images/LoginPaneltec.png" height="35" />
                   
                    </a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav" style="width:90%;">
                    
                    <li><a href="../CRM/FRMCR01LeadMenu.aspx">
                          <span class="icon-documents"></span>&nbsp;Leads
                        </a> </li>
                   
                    
                     <li class="dropdown" id="drp3" >
                          <a id="drpa3" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-target="#drp3" ><span class="icon-add-user"></span>&nbsp;Empresas&nbsp;<b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                          <li><a href="../CRM/FRMCC01Menu.aspx">
                                                 <span class="icon-add-user"></span>&nbsp;Clientes
                                                </a></li>
                                          <li>
                                              <a  href="/CRM/FRMCR10Menu.aspx"><span class="icon-pencil"></span>&nbsp;Contactos</a>
                                              
                                          </li>
                             </ul>
                      </li>
                 
                  
                    <li><a href="../CRM/FRMCR40Menu.aspx">
                        <span class="icon-price-tag"></span> &nbsp;Proyectos
                        </a></li>
                     <%--<li><a href="../CRM/FRMDisenos.aspx">
                        <span class="icon-images"></span> &nbsp;Diseños
                        </a></li>--%>
                      <li><a href="../CRM/FRMDash.aspx">
                        <span class="icon-pie-chart"></span> &nbsp;Dash
                        </a></li>

                    <li><a href="../CRM/FRMNotificaciones.aspx">
                        <span class="icon-calendar"></span> &nbsp;Automatización
                        </a></li>
                     <%-- <li>
                        
                           <asp:LinkButton ID="LnkRutas" runat="server" PostBackUrl="~/CRM/FRMLocalizacion.aspx" >
                              <span class="icon-location-pin"></span> &nbsp;GPS
                          </asp:LinkButton>

                      </li>--%>
                     <li class="dropdown" id="drp" >
                          <a id="drpa" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-target="#drp" ><span class="icon-location-pin"></span> &nbsp;GPS <b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                          <%--<li>
                                              <a  href="/CRM/FRMLocalizacion.aspx">Rutas</a>
                                             
                                          </li>--%>
                                          <li>
                                             <%-- <asp:LinkButton ID="LnkGeolocalizacion" runat="server" PostBackUrl="~/CRM/FRMGeolocalizacion.aspx" >
                                                         <span class="icon-location-pin"></span> &nbsp;Geolocalizacion
                                               </asp:LinkButton>--%>
                                             <a href="/CRM/FRMGeolocalizacion.aspx">Geolocalizacion</a>

                                          </li>
                                          
                             </ul>
                      </li>

                    <li class="dropdown" id="drp2" >
                          <a id="drpa2" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-target="#drp2" ><span class="icon-calendar"></span> &nbsp;Diseño <b class="caret"></b></a>
                                      <ul class="dropdown-menu">
                                         <%-- <li>
                                              <a  href="/CRM/FRMLocalizacion.aspx">Proyectos sin aignar</a>--%>
                                             <%-- <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/CRM/FRMLocalizacion.aspx" >
                                                         <span class="icon-location-pin"></span> &nbsp;Rutas
                                               </asp:LinkButton>--%>

<%--                                          </li>--%>
                                          <li>
                                             <%-- <asp:LinkButton ID="LnkGeolocalizacion" runat="server" PostBackUrl="~/CRM/FRMGeolocalizacion.aspx" >
                                                         <span class="icon-location-pin"></span> &nbsp;Geolocalizacion
                                               </asp:LinkButton>--%>
                                             <a href="/CRM/FRMCalendarioDis.aspx">Calendario</a>

                                          </li>
                                          
                             </ul>
                      </li>

                    <li class="navexit">
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LnkSalir_Click" OnClientClick="return confirm('Esta seguro que desea salir?')">
                                     Cerrar Session &nbsp;<span class="glyphicon glyphicon-log-out"></span> 
                                 </asp:LinkButton>
                     </li>
                   
                     <%--<li class="dropdown" id="drp4"  style="float: right !important;font-size: 20px;">
                          <a id="drpa4" href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" data-target="#drp4"  >
                                     <span class="icon-menu"></span>  </a>
                                      <ul class="dropdown-menu">
                                         <li class="navexit">
                                      
                                         <asp:LinkButton ID="LnkSalir" runat="server" OnClick="LnkSalir_Click" OnClientClick="return confirm('Esta seguro que desea salir?')">
                                             Cerrar Session &nbsp;<span class="glyphicon glyphicon-log-out"></span> 
                                         </asp:LinkButton>
                                       </li>
                             </ul>
                      </li>--%>
                 
                </ul>
            </div>
        </div>
    </div>

        
   
          



        <div id="modalloading" class="loading">
		    <img src="../Images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>


       <br /><br /><br />
        <div class="main container">
              <h2 class="colortitulo">Notificación</h2>

             <div class="row">
                  <div class="wizard">
                      <ul class="nav nav-wizard">

                    <li class="active">
                        <a href="#step1" data-toggle="tab">Información</a>
                    </li>
                    <li >
                        <a href="#step2" data-toggle="tab">Destinatarios</a>
                    </li>

                    <li >
                        <a href="#step3" data-toggle="tab">Campos</a>
                    </li>

                    <li >
                        <a href="#step4" data-toggle="tab">Condiciones</a>
                    </li>
                    
                     <li >
                        <a href="#step5" id="linkplantilla" data-toggle="tab">Plantillas</a>
                    </li>
                </ul>

                      <asp:HiddenField ID="TXTID" runat="server" value=""/>
                       <div class="tab-content">
                          <div class="tab-pane active" id="step1">
                              <%--<h3>Información</h3>--%>

                             <%-- <asp:UpdatePanel ID="UpdatePanel16" runat="server" >
                                 <ContentTemplate>
                                   FastWall - <asp:Label ID="lblfast" runat="server" Text=""></asp:Label>
                                      <asp:HiddenField ID="txtSubproyID" runat="server" value=""/>  
                                 </ContentTemplate>
                             </asp:UpdatePanel> --%>

                              <br /><br />

                              <div class="row">
                                  <div class="col-md-6">
                                      <div class="form-group" >
                                      
                                       Nombre de la Regla:
                                      <asp:TextBox ID="TXT_nombreRegla" runat="server" CssClass="form-control"></asp:TextBox>
                                     </div>

                                      <div class="form-group" >
                                           Aplica para cuando se:<br />
                                          <asp:CheckBox ID="CHK_Crear" runat="server" Text=" Crean" /><br />
                                          <asp:CheckBox ID="CHK_Editar" runat="server" Text=" Editan"  /><br />
                                      </div>

                                      <div class="form-group" >
                                           Estado:
                                          <asp:DropDownList ID="DDL_Estado" runat="server" CssClass="form-control">
                                              <asp:ListItem Value="1">Activo</asp:ListItem>
                                              <asp:ListItem Value="0">Inactivo</asp:ListItem>
                                          </asp:DropDownList>

                                      </div>

                                      <div class="form-group" >
                                         Usuario:
                                        <asp:TextBox ID="TXT_QuienIngreso" runat="server" CssClass="form-control" Width="50%" Enabled="false"></asp:TextBox><br />
                                           Fecha de registro:
                                        <asp:TextBox ID="TXT_FechaIngreso" runat="server" CssClass="form-control" Width="50%" Enabled="false"></asp:TextBox><br />
                                      
                                       </div>

                                   </div>
                                  <div class="col-md-6">
                                      
                                      <fieldset class="fieldset">
                                          <legend>Modo de Repetición</legend>
                                           <asp:DropDownList ID="CMB_Repetir"   CssClass="form-control" runat="server">
                                            <asp:ListItem Value="Desactivado">Desactivado</asp:ListItem>
                                            <asp:ListItem Value="UnaVez">No Repetir, solo una vez</asp:ListItem>
                                            <asp:ListItem Value="Diaria">Diaria</asp:ListItem>
                                            <asp:ListItem Value="Semanal">Semanal</asp:ListItem>
                                            <asp:ListItem Value="Mensual">Mensual</asp:ListItem>
                                            <asp:ListItem Value="Anual">Anual</asp:ListItem>
                                        </asp:DropDownList>


                                      
                                     <div class="row">
                                        <div class="col-md-6">
                                            Desde:
                                            <asp:TextBox CssClass="form-control" ID="TXT_FechaDesde" TextMode="Date" runat="server"></asp:TextBox>

                                          <asp:DropDownList ID="CMB_HoraDesde" CssClass="form-control" runat="server">
                                                <asp:ListItem Value="07:00">7:00 AM</asp:ListItem>
                                                <asp:ListItem Value="08:00">8:00 AM</asp:ListItem>
                                                <asp:ListItem Value="09:00">9:00 AM</asp:ListItem>
                                                <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                                                <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                                                <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                                                <asp:ListItem Value="13:00">1:00 PM</asp:ListItem>
                                                <asp:ListItem Value="14:00">2:00 PM</asp:ListItem>
                                                <asp:ListItem Value="15:00">3:00 PM</asp:ListItem>
                                                <asp:ListItem Value="16:00">4:00 PM</asp:ListItem>
                                                <asp:ListItem Value="17:00">5:00 PM</asp:ListItem>
                                                <asp:ListItem Value="18:00">6:00 PM</asp:ListItem>
                                                <asp:ListItem Value="19:00">7:00 PM</asp:ListItem>
                                                <asp:ListItem Value="20:00">8:00 PM</asp:ListItem>
                                                <asp:ListItem Value="21:00">9:00 PM</asp:ListItem>
                                                <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                                                <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                                                <asp:ListItem Value="24:00">12:00 AM</asp:ListItem>
                                                <asp:ListItem Value="01:00">1:00 AM</asp:ListItem>
                                                <asp:ListItem Value="02:00">2:00 AM</asp:ListItem>
                                                <asp:ListItem Value="03:00">3:00 AM</asp:ListItem>
                                                <asp:ListItem Value="04:00">4:00 AM</asp:ListItem>
                                                <asp:ListItem Value="05:00">5:00 AM</asp:ListItem>
                                                <asp:ListItem Value="06:00">6:00 AM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                         <div class="col-md-6">
                                             Hasta:
                                             <asp:TextBox CssClass="form-control" ID="TXT_FechaHasta"   TextMode="Date" runat="server"></asp:TextBox>

                                          <asp:DropDownList ID="CMB_HoraHasta" CssClass="form-control"   runat="server">
                                               <asp:ListItem Value="07:00">7:00 AM</asp:ListItem>
                                                <asp:ListItem Value="08:00">8:00 AM</asp:ListItem>
                                                <asp:ListItem Value="09:00">9:00 AM</asp:ListItem>
                                                <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                                                <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                                                <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                                                <asp:ListItem Value="13:00">1:00 PM</asp:ListItem>
                                                <asp:ListItem Value="14:00">2:00 PM</asp:ListItem>
                                                <asp:ListItem Value="15:00">3:00 PM</asp:ListItem>
                                                <asp:ListItem Value="16:00">4:00 PM</asp:ListItem>
                                                <asp:ListItem Value="17:00">5:00 PM</asp:ListItem>
                                                <asp:ListItem Value="18:00">6:00 PM</asp:ListItem>
                                                <asp:ListItem Value="19:00">7:00 PM</asp:ListItem>
                                                <asp:ListItem Value="20:00">8:00 PM</asp:ListItem>
                                                <asp:ListItem Value="21:00">9:00 PM</asp:ListItem>
                                                <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                                                <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                                                <asp:ListItem Value="24:00">12:00 AM</asp:ListItem>
                                                <asp:ListItem Value="01:00">1:00 AM</asp:ListItem>
                                                <asp:ListItem Value="02:00">2:00 AM</asp:ListItem>
                                                <asp:ListItem Value="03:00">3:00 AM</asp:ListItem>
                                                <asp:ListItem Value="04:00">4:00 AM</asp:ListItem>
                                                <asp:ListItem Value="05:00">5:00 AM</asp:ListItem>
                                                <asp:ListItem Value="06:00">6:00 AM</asp:ListItem>
                                            </asp:DropDownList>
                                         </div>
                                      </div>
                                          <br />
                                          <div class="rowsPanel panel panel-primary">
                                              <div class="panel-heading" data-toggle="collapse" style="background: #f1f1f1;color: #000;" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                                                     Detalle de Eventos <asp:Label ID="lbl_CantidadEventos" runat="server" Text="0" CssClass="badge" Style="background-color: #58FA58;color:#000;padding:5px;font-size: 13px;border-radius:50%;"></asp:Label>
                                                    <%-- <span class="icon-chevron-small-down rightBar"></span>--%>
                                               </div>
                                               <div class="panel-body">
                                                     <asp:UpdatePanel ID="UpdatePanel5" runat="server" >
                                                     <ContentTemplate>

                                                           <asp:GridView ID="GV_DetalleEventos" DataKeyNames="IdLinea,IDRegla" Width="100%"  CssClass="table" 
                                                                                     ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                                                                     runat="server"  AutoGenerateColumns="False" 
                                                                                     Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                                                                     BorderWidth="1px" CellPadding="2"  
                                                                                     OnRowDeleting="GV_DetalleEventos_RowDeleting" >
                                                                                    <Columns>

                                                                               <asp:BoundField DataField="FechaEnvio" HeaderText="FechaEnvio" dataformatstring="{0:dd/MM/yyyy}" />
                                                                               <asp:BoundField DataField="Enviado" HeaderText="Enviado" />
                                                                               <asp:BoundField DataField="FechaEnvioServer" HeaderText="FechaEnvioServer" dataformatstring="{0:dd/MM/yyyy}" />
                                                                               <asp:BoundField DataField="Estado" HeaderText="Estado" />

                                                                                <asp:TemplateField HeaderText="" ControlStyle-Width="20">
                                                                                                     <ItemTemplate>
                                                                                                          <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                                               CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                                                                OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                                                Text="Delete">     
                                                                                                           </asp:ImageButton>
                                                                                                      </ItemTemplate>
                                                                                                </asp:TemplateField>

                                                                                    </Columns>

                                                                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                    <RowStyle ForeColor="#000000" />
                                                                                    <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                                                                </asp:GridView>
                                                          </ContentTemplate>
                                                         </asp:UpdatePanel>
                                               </div>
                                          </div>

                                          </fieldset>
                                     
                                  </div>

                              </div>

                              
                               <div class="footerControles">
                                   <div class="main container" style="border:0;padding: 2px;">
                                     <div class="panel-body">
                                          <div class="form-group" style="text-align: center;">
                                           <asp:LinkButton ID="CMD_Nuevo" runat="server" OnClick="CMD_Nuevo_Click" CssClass="btn btn-primary" >
                                                <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                                           </asp:LinkButton>

                                          <asp:LinkButton ID="CMD_Guardar" runat="server" OnClientClick="return validarEvento();" OnClick="CMD_Guardar_Click"  CssClass="btn btn-success" >
                                                <span class="icon-save"></span>&nbsp;Guardar
                                           </asp:LinkButton>
                                       </div>
                                     </div>
                                   </div>
                               </div>
                               

                          </div>
                      

                      
                          <div class="tab-pane" id="step2">
                              <h3>Destinatarios</h3>

                                <div class="row">
                                   

                                    <div class="col-md-6">
                                        <div class="rowsPanel panel panel-primary">
                                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapseExample">
                                                  Modo Creación o Edición
                                                 <span class="icon-chevron-small-down rightBar"></span>
                                             </div>
                                             <div class="panel-body">
                                                 <div class="shadowrow collapse in" id="collapse3">
                                                    <div class="well" style="background-color: #fff;">
                                                         <asp:UpdatePanel ID="UpdatePanel7" runat="server" >
                                                             <ContentTemplate>
                                                                <asp:RadioButtonList ID="RBL_Notificar" runat="server" OnSelectedIndexChanged="RBL_Notificar_SelectedIndexChanged" AutoPostBack="true">
                                                                      <asp:ListItem value="">Desactivado</asp:ListItem>
                                                                     <asp:ListItem value="Notificar_Vendedor_Supervisor">Notificar a los vendedores y supervisor</asp:ListItem>
                                                                     <asp:ListItem value="Notificar_Vendedor">Notificar a los vendedores solamente</asp:ListItem>
                                                            
                                                                </asp:RadioButtonList>

                                                                 <asp:LinkButton ID="LNK_AgregarDestinatario" runat="server"  OnClick="LNK_AgregarDestinatario_Click" >
                                                                          + Agregar Destinatario
                                                                  </asp:LinkButton>

                                                                  <button type="button" id="opensubDestinatarios" data-toggle="modal" data-target="#popDestinatarios" style="visibility:hidden;">open</button>

                                                                  <br /><b>Adicionales:</b>
                                                                 <asp:GridView ID="GV_Destinatarios_Edicion" DataKeyNames="IDLinea" Width="100%"  CssClass="table" 
                                                                                     ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                                                                     runat="server"  AutoGenerateColumns="False" 
                                                                                     Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                                                                     BorderWidth="1px" CellPadding="2"  
                                                                                     OnRowDeleting="GV_Destinatarios_Edicion_RowDeleting" >
                                                                                    <Columns>

                                                                               <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                                                                               <asp:BoundField DataField="Correo" HeaderText="Correo" />

                                                                                <asp:TemplateField HeaderText="Eliminar" ControlStyle-Width="20">
                                                                                                     <ItemTemplate>
                                                                                                          <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                                               CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                                                                OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                                                Text="Delete">     
                                                                                                           </asp:ImageButton>
                                                                                                      </ItemTemplate>
                                                                                                </asp:TemplateField>

                                                                                    </Columns>

                                                                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                    <RowStyle ForeColor="#000000" />
                                                                                    <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                                                          </asp:GridView>


                                                             </ContentTemplate>
                                                         </asp:UpdatePanel>
                                                    </div>
                                                 </div>
                                             </div>
                                         </div>

                                    </div>

                                    <div class="col-md-6">
                                        <div class="rowsPanel panel panel-primary">
                                         <div class="panel-heading" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapseExample">
                                              Modo de repetición
                                             <span class="icon-chevron-small-down rightBar"></span>
                                         </div>
                                         <div class="panel-body">
                                             <div class="shadowrow collapse in" id="collapse4">
                                                <div class="well" style="background-color: #fff;">
                                                       <asp:UpdatePanel ID="UpdatePanel16" runat="server" >
                                                             <ContentTemplate>
                                                                  <asp:LinkButton ID="CMD_Vendedores" runat="server"  OnClick="CMD_Vendedores_Click" >
                                                                          + Agregar Vendedor
                                                                  </asp:LinkButton> 
                                                             </ContentTemplate>
                                                         </asp:UpdatePanel>
                           
                                                    <button type="button" id="opensub" data-toggle="modal" data-target="#popVendedores" style="visibility:hidden;">open</button>

                                                           <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                                                     <ContentTemplate>

                                                           <asp:GridView ID="GV_Destinatarios" DataKeyNames="IDLinea,sVendedor" Width="100%"  CssClass="table" 
                                                                                     ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                                                                     runat="server"  AutoGenerateColumns="False" 
                                                                                     Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                                                                     BorderWidth="1px" CellPadding="2"  
                                                                                     OnRowDeleting="GV_Destinatarios_RowDeleting" >
                                                                                    <Columns>

                                                                               <asp:BoundField DataField="sVendedor" HeaderText="Cod Vendedor" />
                                                                               <asp:BoundField DataField="Nombre" HeaderText="Asesor" />

                                                                                <asp:TemplateField HeaderText="Eliminar" ControlStyle-Width="20">
                                                                                                     <ItemTemplate>
                                                                                                          <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                                               CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                                                                OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                                                Text="Delete">     
                                                                                                           </asp:ImageButton>
                                                                                                      </ItemTemplate>
                                                                                                </asp:TemplateField>

                                                                                    </Columns>

                                                                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                    <RowStyle ForeColor="#000000" />
                                                                                    <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                                                                </asp:GridView>
                                                          </ContentTemplate>
                                                         </asp:UpdatePanel>
                                                </div>
                                             </div>
                                         </div>
                                     </div>

                                    </div>
                                 
                                 

                             </div>

                             

                          </div>
                      


                     
                          <div class="tab-pane" id="step3">
                              <h3>Campos de visualización</h3>
                              <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                               <ContentTemplate>

                                   <div class="row">
                                       <div class="col-md-4">

                                              <asp:DropDownList ID="DDL_Tablas" runat="server" OnSelectedIndexChanged="DDL_Tablas_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control"></asp:DropDownList>

                                               <asp:TextBox ID="TXT_BuscarCampo" runat="server" placeholder="Buscar Campo..." OnTextChanged="TXT_BuscarCampo_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                                            <div style="overflow:auto;height:400px;">
                                              <asp:GridView ID="GV_ListaCampos" runat="server" Width="100%"
                                                      DataKeyNames="Campo,Tabla" AutoGenerateColumns="false" BorderColor="LightGray" 
                                                      OnRowCommand="GV_ListaCampos_RowCommand" >
                                                  <Columns>
                                       
                                                   <asp:BoundField DataField="Campo" HeaderText="Campos"  />
                                                      <asp:TemplateField HeaderText="" >
                                                    <ItemTemplate>
                                                       <asp:LinkButton ID="AddButton" runat="server" 
                                                                    CommandName = "Add" 
                                                                    CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                    CssClass="btn btn-primary"  >
                                                               <span class=" icon-plus"></span>
                                                      </asp:LinkButton>
                                                     </ItemTemplate>
                                                    </asp:TemplateField>                    
                                                </Columns>
                                            </asp:GridView>
                                                </div>
                                           </div>
                                       <div class="col-md-8">

                                           <b>¿Donde?</b>

                                           <asp:RadioButtonList ID="RBL_Modo" runat="server" RepeatDirection="Horizontal" CellSpacing="20" CellPadding="20">
                                               <asp:ListItem Value="E">Modo Creación/Edición</asp:ListItem>
                                               <asp:ListItem Value="R">Modo Repetición</asp:ListItem>
                                           </asp:RadioButtonList>

                                            <div class="col-md-6">
                                                 <b>Lista de campos Modo Edición</b>
                                                <asp:GridView ID="GV_CamposEdicion" runat="server" Width="100%"
                                                          DataKeyNames="Idlinea,IDRegla,NombreTabla,Tipo" AutoGenerateColumns="false" BorderColor="LightGray" 
                                                          OnRowDeleting="GV_CamposEdicion_RowDeleting" >
                                                      <Columns>
                                       
                                                      <asp:BoundField DataField="Campo" HeaderText="Campo" />
                                                       <asp:BoundField DataField="NombreTabla" HeaderText="Tabla" />

                                                        <asp:TemplateField HeaderText="Eliminar" ControlStyle-Width="20">
                                                                   <ItemTemplate>
                                                                      <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                              CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                              OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                              Text="Delete">     
                                                                            </asp:ImageButton>
                                                                   </ItemTemplate>
                                                         </asp:TemplateField>             
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                            <div class="col-md-6">
                                                 <b> Lista de campos Modo Repetición</b>
                                                <asp:GridView ID="GV_Campos" runat="server" Width="100%"
                                                          DataKeyNames="Idlinea,IDRegla,NombreTabla,Tipo" AutoGenerateColumns="false" BorderColor="LightGray" 
                                                          OnRowDeleting="GV_Campos_RowDeleting" >
                                                      <Columns>
                                       
                                                      <asp:BoundField DataField="Campo" HeaderText="Campo" />
                                                       <asp:BoundField DataField="NombreTabla" HeaderText="Tabla" />

                                                        <asp:TemplateField HeaderText="Eliminar" ControlStyle-Width="20">
                                                                   <ItemTemplate>
                                                                      <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                              CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                              OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                              Text="Delete">     
                                                                            </asp:ImageButton>
                                                                   </ItemTemplate>
                                                         </asp:TemplateField>             
                                                    </Columns>
                                                </asp:GridView>
                                           
                                            </div>
                                           
                                       </div>
                                      
                                   </div>

                              </ContentTemplate>
                             </asp:UpdatePanel>

                          </div>
                      

                      
                          <div class="tab-pane" id="step4">
                              <h3>Condiciones</h3>
                               <%--<asp:LinkButton ID="CMD_Condiciones" runat="server" data-toggle="modal" data-target="#popVendedores"  >
                                     + Agregar Condicion
                               </asp:LinkButton> --%>

                               <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
                         <ContentTemplate>

                             <div class="row">
                                 <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapseExample">
                                  + Agregar Nueva Condición
                                 <span class="icon-chevron-small-down rightBar"></span>
                             </div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse1">
                                    <div class="well" style="background-color: #fff;">
                                        <div class="row">

                                          <div class="col-md-3">

                                             <fieldset class="fieldset">
                                                 <legend>Que campos?</legend>
                                                  Tabla:
                                                  <asp:DropDownList ID="DDL_Tablas05" runat="server"  Style="display:inline-block;" CssClass="form-control" OnSelectedIndexChanged="DDL_Tablas05_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>

                                                 Campos:
                                                  <asp:DropDownList ID="DDL_CamposCondicion" runat="server"  Style="display:inline-block;" CssClass="form-control" OnSelectedIndexChanged="DDL_CamposCondicion_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
   
                                             </fieldset>
                                    
                                         </div>
                                         <div class="col-md-3">

                                              <fieldset class="fieldset">
                                                 <legend>Condición</legend>
                                                      <asp:DropDownList ID="DDL_Operador" CssClass="form-control"  Style="display:inline-block;" OnSelectedIndexChanged="DDL_Operador_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                                             
                                                </fieldset>
                                         </div>

                                         <div class="col-md-3">
                                              <fieldset class="fieldset">
                                                 <legend>Valores</legend>

                                                
                                                  <asp:TextBox ID="TXT_Valor1" CssClass="form-control" placeholder="Valor1"  Style="display:inline-block;" runat="server"></asp:TextBox>
                               
                                                 <asp:TextBox ID="TXT_Valor12" CssClass="form-control"  Visible="false" placeholder="Valor2" Style="display:inline-block;" runat="server"></asp:TextBox>

                                                 
                                                   <p style="color:red;"> *Formato para fecha: yyyy-MM-dd<br />
                                                  *No utilizar comillas simples ni dobles.
                                                  </p>
                                                  </fieldset>
                                         </div>
                                         <div class="col-md-3">
                                              <h4>Hay más condiciones?</h4>
                                                  <asp:DropDownList ID="DDL_Operadorfin" runat="server" CssClass="form-control"  Style="display:inline-block;" >
                                                        <asp:ListItem Value="">No aplica</asp:ListItem>
                                                        <asp:ListItem Value="AND">y</asp:ListItem>
                                                        <asp:ListItem Value="OR">ó</asp:ListItem>
                                                  </asp:DropDownList>
                                             <br /> <br />
                                               <asp:LinkButton ID="CMD_AgregarCondicion" runat="server" CssClass="btn btn-success" OnClientClick="return validarcampos();" OnClick="CMD_AgregarCondicion_Click">
                                                Agregar
                                               </asp:LinkButton>
                                            
                                                <asp:LinkButton ID="CMD_ValidarSQL" runat="server" CssClass="btn btn-info"  OnClick="CMD_ValidarSQL_Click">
                                                Validar SQL
                                               </asp:LinkButton>
                                         </div>
                                             
                                        </div>
                                    </div>
                                 </div>
                             </div>
                      </div>
                                 

                             </div>

                             <asp:GridView ID="GV_Condiciones" runat="server" Width="100%" CssClass="table"
                                                      DataKeyNames="Idlinea,IDRegla,Operador1,Operador2" AutoGenerateColumns="false" BorderColor="LightGray" 
                                                      OnRowDeleting="GV_Condiciones_RowDeleting" OnRowEditing="GV_Condiciones_RowEditing"
                                                      OnRowCancelingEdit="GV_Condiciones_RowCancelingEdit" OnRowUpdating="GV_Condiciones_RowUpdating"  >
                                                  <Columns>
                                                 <%-- <asp:BoundField DataField="DetalleCondicion" HeaderText="" />
                                                  <asp:BoundField DataField="OperadorPrincipal" HeaderText="" />
                                                  <asp:BoundField DataField="Valor1" HeaderText="" />
                                                  <asp:BoundField DataField="Valor2" HeaderText="" />--%>
                                                  <%--<asp:BoundField DataField="Operador2" HeaderText="" />--%>
  
                                               <asp:TemplateField HeaderText="" > 
                                                          <ItemTemplate>
                                                                    <asp:Label ID="lbl_detalle" runat="server" Text='<%#Eval("DetalleCondicion") %>'></asp:Label>
                                                          </ItemTemplate>                                   
                                                          <EditItemTemplate>
                                                               <asp:TextBox ID="TXT_DetalleCondicion" Enabled="false" runat="server"  Text='<%#Eval("DetalleCondicion" ) %>'></asp:TextBox>
                                                          </EditItemTemplate>
                                               </asp:TemplateField>

                                              <asp:TemplateField HeaderText="" > 
                                                          <ItemTemplate>
                                                                    <asp:Label ID="lbl_OperadorPrincipal" runat="server" Text='<%#Eval("OperadorPrincipal") %>'></asp:Label>
                                                          </ItemTemplate>                                   
                                                          <EditItemTemplate>
                                                               <asp:TextBox ID="TXT_OperadorPrincipal" Enabled="false" runat="server"  Text='<%#Eval("OperadorPrincipal" ) %>'></asp:TextBox>
                                                          </EditItemTemplate>
                                               </asp:TemplateField>

                                                      <asp:TemplateField HeaderText="" > 
                                                          <ItemTemplate>
                                                                    <asp:Label ID="lbl_Valor1" runat="server" Text='<%#Eval("Valor1") %>'></asp:Label>
                                                          </ItemTemplate>                                   
                                                          <EditItemTemplate>
                                                               <asp:TextBox ID="TXT_Valor1" Enabled="false" runat="server"  Text='<%#Eval("Valor1" ) %>'></asp:TextBox>
                                                          </EditItemTemplate>
                                               </asp:TemplateField>

                                                      <asp:TemplateField HeaderText="" > 
                                                          <ItemTemplate>
                                                                    <asp:Label ID="lbl_Valor2" runat="server" Text='<%#Eval("Valor2") %>'></asp:Label>
                                                          </ItemTemplate>                                   
                                                          <EditItemTemplate>
                                                               <asp:TextBox ID="TXT_Valor2" Enabled="false" runat="server"  Text='<%#Eval("Valor2" ) %>'></asp:TextBox>
                                                          </EditItemTemplate>
                                               </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="" >
                                                                                            
                                                          <EditItemTemplate>
                                                                <asp:DropDownList ID="Operadorfin" runat="server" CssClass="form-control"  Style="display:inline-block;" >
                                                                    <asp:ListItem Value="">No aplica</asp:ListItem>
                                                                    <asp:ListItem Value="AND">y</asp:ListItem>
                                                                    <asp:ListItem Value="OR">ó</asp:ListItem>
                                                              </asp:DropDownList>
                                                          </EditItemTemplate>
                                                          <ItemTemplate>
                                                                       <asp:Label ID="Lbl_operador2" runat="server" Text='<%#Eval("OperadorFinal") %>'></asp:Label>
                                                           </ItemTemplate>       
                                               </asp:TemplateField>

                                                <asp:TemplateField ControlStyle-Width="25">
                                                               <ItemTemplate>
                                                                          <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                           <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" />
                                                                           <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" />
                                                                 </EditItemTemplate>
                                                 <ControlStyle Width="25px" />
                                              </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="" ControlStyle-Width="20">
                                                               <ItemTemplate>
                                                                  <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                          CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                          OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                          Text="Delete">     
                                                                        </asp:ImageButton>
                                                               </ItemTemplate>
                                                     </asp:TemplateField>             
                                                </Columns>
                                  <HeaderStyle BackColor="#f1f1f1" Font-Bold="True" ForeColor="Black" />
                                  <RowStyle Font-Bold="True" ForeColor="Black"/>
                             </asp:GridView>




                             </ContentTemplate>
                      </asp:UpdatePanel>
                          </div>

                               

                      
                          <div class="tab-pane" id="step5">
                             
                              <div class="row">
                                   <div class="col-md-6">
                                       <br />
                                       <b>Plantilla para Modo Creación o Edición</b>
                                      <%-- <div class="flecha-right"></div>--%>
                                       <div  class="cssToolTipspan">
                                           
                                           *Coloque cada uno de los campos que desea ver en la plantilla tal cual como aparecen en azul.
                                       </div>
                                        <asp:UpdatePanel ID="UpdatePanel8" runat="server" >
                                             <ContentTemplate>
                                                    <asp:Label ID="lbl_parametros" runat="server" ForeColor="Blue" Text=""></asp:Label>
                                             </ContentTemplate>
                                         </asp:UpdatePanel>

                                        <div class="form-group">
						
                                           <asp:TextBox ID="txt_contentedicion" TextMode="MultiLine" width="600" Height="200" runat="server"></asp:TextBox>
                                             <asp:HiddenField ID="txt_contentedicionHD" runat="server" value=""/>
					                    </div>
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" >
                                             <ContentTemplate>

                                    
                                               <%-- <asp:TextBox ID="TXT_Plantilla"  runat="server" ></asp:TextBox>--%>
                                                  <asp:HiddenField ID="TXT_PlantillaEdicionID" runat="server" value=""/>

                                         <%--<asp:LinkButton ID="LinkButton3" runat="server"  CssClass="btn btn-primary" OnClientClick="return llenarhtml();" >
                                                            <span class="glyphicon glyphicon-plus"></span>&nbsp;val
                                                       </asp:LinkButton>--%>
                                  
                                         <%-- <asp:TextBox ID="txthtml" TextMode="MultiLine" runat="server" width="600" Height="200"></asp:TextBox>--%>

                                 <%--   <input type="button" class="btn btn-default" id="btn-enviar" value="Mostrar Resultado">
                             --%>
                                          <asp:LinkButton ID="CMD_GuardarPlantillaEdicion" runat="server"  CssClass="btn btn-success" OnClick="CMD_GuardarPlantillaEdicion_Click" OnClientClick="return validarplantillaedicion();"  >
                                                      <span class="icon-save"></span>&nbsp;Guardar
                                          </asp:LinkButton>


                                           </ContentTemplate>
                                         </asp:UpdatePanel>
                                   </div>
                                   <div class="col-md-6">
                                       <br />
                                        <b> Plantilla para Modo Repetición</b>
                                          <div class="form-group">
						
                                           <asp:TextBox ID="txt_content" TextMode="MultiLine" width="600" Height="200" runat="server"></asp:TextBox>
					                    </div>
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server" >
                                             <ContentTemplate>

                                    
                                               <%-- <asp:TextBox ID="TXT_Plantilla"  runat="server" ></asp:TextBox>--%>
                                                  <asp:HiddenField ID="TXT_Plantilla" runat="server" value=""/>

                                         <%--<asp:LinkButton ID="LinkButton3" runat="server"  CssClass="btn btn-primary" OnClientClick="return llenarhtml();" >
                                                            <span class="glyphicon glyphicon-plus"></span>&nbsp;val
                                                       </asp:LinkButton>--%>
                                  
                                         <%-- <asp:TextBox ID="txthtml" TextMode="MultiLine" runat="server" width="600" Height="200"></asp:TextBox>--%>

                             
                                          <asp:LinkButton ID="CMD_GuardarPlantilla" runat="server"  CssClass="btn btn-success" OnClick="CMD_GuardarPlantilla_Click" OnClientClick="return validarplantilla();"  >
                                                      <span class="icon-save"></span>&nbsp;Guardar
                                          </asp:LinkButton>


                                           </ContentTemplate>
                                         </asp:UpdatePanel>

                                   </div>
                              </div>

                              
                   
                 <%-- <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return alertyfi('asdf');">Ver editor</asp:LinkButton>--%>

					<%--<input type="button" class="btn btn-default" id="btn-enviar" value="Mostrar Resultado">--%>

                          </div>
                      
                     </div>
                  </div>
             </div>
              
        </div>



   <%-- <div class="modal fade" id="popCondiciones" tabindex="-1" role="dialog" aria-labelledby="poppopCondicionesl" aria-hidden="true">

                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel2">Agregar Condición</h3>
                       
                      </div>
                      <div class="modal-body">
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
                         <ContentTemplate>

                         
                         </ContentTemplate>
                      </asp:UpdatePanel>

                      </div>
                      <div class="modal-footer">
                           
                           <asp:Button ID="Button1" runat="server" Text="Cancelar" data-dismiss="modal" CssClass="btn btn-secondary" />

                      </div>
                    </div>
                  </div>
            </div>--%>



       <%--aqui va el pop moda--%>



        
    <div class="modal fade" id="popVendedores" tabindex="-1" role="dialog" aria-labelledby="poppopVendedoresl" aria-hidden="true">

                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel">Agregar Vendedor</h3>
                       
                      </div>
                      <div class="modal-body">
                        <asp:UpdatePanel ID="UpdatePanel39" runat="server" >
                         <ContentTemplate>

                         <div style="overflow:auto;height:500px;">
                           <asp:GridView ID="GV_Vendedores" DataKeyNames="sVendedor" Width="100%"  CssClass="table" 
                                         ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                         runat="server"  AutoGenerateColumns="False" 
                                         Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                         BorderWidth="1px" CellPadding="2"  OnRowCommand="GV_Vendedores_RowCommand" >
                                      <Columns>
                                           <asp:TemplateField>
                                                  <ItemTemplate>
                                                      <asp:LinkButton ID="AddButton" runat="server" 
                                                            CommandName = "Add"  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" CssClass="btn btn-primary"  >
                                                            <span class=" icon-plus"></span>
                                                         </asp:LinkButton>

                                                   </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:BoundField DataField="sVendedor" HeaderText="Cod Vendedor" />
                                              <asp:BoundField DataField="Nombre" HeaderText="Asesor" />
                                      </Columns>
                                      <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                      <RowStyle ForeColor="#000000" />
                                      <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                             </asp:GridView>
                           </div>
                         </ContentTemplate>
                      </asp:UpdatePanel>

                      </div>
                      <div class="modal-footer">
                           
                           <asp:Button ID="CMDCerrar" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                        
                      </div>
                    </div>
                  </div>
                </div>





         
    <div class="modal fade" id="popDestinatarios" tabindex="-1" role="dialog" aria-labelledby="poppopVendedoresl" aria-hidden="true">

                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel23">Agregar Destinatario</h3>
                       
                      </div>
                      <div class="modal-body">
                        <asp:UpdatePanel ID="UpdatePanel9" runat="server" >    
                         <ContentTemplate>

                         
<%--<div class="input-group">
    <input type="text" class="form-control"/>
    <span class="input-group-addon">
        <i class="glyphicon glyphicon-search"></i>
    </span>
</div>--%>

                        <div class="form-group">
                          <div class="input-group">
                        <div class="input-group-addon">
                          <i class="glyphicon glyphicon-search"></i>
                        </div>
                        <asp:TextBox ID="TXT_UsuarioBuscar" runat="server"  
                                       placeholder="Escriba el nombre del usuario..." CssClass="form-control"
                                        OnTextChanged="TXT_UsuarioBuscar_TextChanged" AutoPostBack="true" >      
                                </asp:TextBox>
                          </div>
                        </div>

                         <div style="overflow:auto;height:400px;">
                           <asp:GridView ID="GV_DestinatariosDisponibles" DataKeyNames="sCodigo_Usuario,sCorreo" Width="100%"  CssClass="table" 
                                         ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                         runat="server"  AutoGenerateColumns="False" 
                                         Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                         BorderWidth="1px" CellPadding="2"  OnRowCommand="GV_DestinatariosDisponibles_RowCommand" >
                                      <Columns>
                                           <asp:TemplateField>
                                                  <ItemTemplate>
                                                      <asp:LinkButton ID="AddButton" runat="server" 
                                                            CommandName = "Add"  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" CssClass="btn btn-primary"  >
                                                            <span class=" icon-plus"></span>
                                                         </asp:LinkButton>

                                                   </ItemTemplate>
                                              </asp:TemplateField>
                                             <asp:BoundField DataField="sNombre" HeaderText="Usuario" />
                                              <asp:BoundField DataField="sCorreo" HeaderText="Correo" />
                                              
                                      </Columns>
                                      <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                      <RowStyle ForeColor="#000000" />
                                      <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                             </asp:GridView>
                           </div>
                         </ContentTemplate>
                      </asp:UpdatePanel>

                      </div>
                      <div class="modal-footer">
                           
                           <asp:Button ID="Button1" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                        
                      </div>
                    </div>
                  </div>
                </div>

        




        
    
    </form>
</body>
</html>
