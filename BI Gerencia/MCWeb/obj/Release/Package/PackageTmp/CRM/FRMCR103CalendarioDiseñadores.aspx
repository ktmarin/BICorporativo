<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="FRMCR103CalendarioDiseñadores.aspx.cs" Inherits="MCWebHogar.CRM.FRMCR103CalendarioDiseñadores" EnableSessionState="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
      
   
    <link href="/Styles/FullCalendar/fullcalendar.min.css" rel="stylesheet" />
    <link href="/Styles/FullCalendar/fullcalendar.print.min.css" rel="stylesheet" media="print" />
    <script src="/Scripts/FullCalendar/lib/moment.min.js"></script>
    <script src="/Scripts/FullCalendar/fullcalendar.min.js"></script>
    <script src="/Scripts/FullCalendar/locale-all.js"></script>


    <script type="text/javascript">

        $(document).ready(function () {
            //activarloading();
            //desactivarloading();
            var e = document.getElementById('<%=TXTUser.ClientID%>').value;
            var IDM = document.getElementById('<%=TXT_IDModulo.ClientID %>').value;

            $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'

                },
                dragable: false,
                defaultdate: new Date(),
                navLinks: true, // can click day/week names to navigate views
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                eventClick: function (llamadaEvento, jsEvent, view) {
                    //__doPostBack('IdEventoCargar', llamadaEvento.id);
                    
                    console.log("editar evento + CMD_CargarModificarEvento1");
                    document.getElementById("HTXT_IDEvento").value = llamadaEvento.id;

                    $('#CMD_CargarModificarEvento1').click();

                    //$('#btnSubmit').trigger('click');

                },
                eventMouseover: function (calEvent, jsEvent, IDM) {
                    //var cliente = calEvent.title.split(';');
                    var tooltip = '<div class="tooltipevent" style="width:315px;height:160px;padding:20px;background:#D8D8D8;border-radius:5px;position:absolute;z-index:10001;"><i class="icon-user"></i>:' + calEvent.title + '<br><i class="icon-calendar"></i>:' + calEvent.start.format('DD/MM/YYYY HH:mm') + '<br><i class="icon-book"></i>:' + calEvent.description + '<br><i class="icon-location-pin"></i>:' + calEvent.Ubicacion + '<br><i class="icon-user"></i>:' + calEvent.Host + '</div>';
                    $("body").append(tooltip);
                    $(this).mouseover(function (e) {
                        $(this).css('z-index', 10000);
                        $('.tooltipevent').fadeIn('500');
                        $('.tooltipevent').fadeTo('10', 1.9);
                    }).mousemove(function (e) {
                        $('.tooltipevent').css('top', e.pageY + 10);
                        $('.tooltipevent').css('left', e.pageX + 20);
                    });
                },
                eventMouseout: function (calEvent, jsEvent) {
                    $(this).css('z-index', 8);
                    $('.tooltipevent').remove();
                },
                events: '../CRM/EventosCalendario/Calendario.ashx?IDM=' + IDM+'&e='+e ,
                locale: 'es',
                dayClick: function (date, jsEvent, view) {
                    activarloading();
                    //alert('rico2');
                  var hora = date.format('HH');
                    var minutos = date.format('mm');
                    var indexInicio = 0;
                    var indexFin = 0;
                    switch (hora) {
                        case '00':
                            indexInicio = 34;
                            break;
                        case '01':
                            indexInicio = 36;
                            break;
                        case '02':
                            indexInicio = 38;
                            break;
                        case '03':
                            indexInicio = 40;
                            break;
                        case '04':
                            indexInicio = 42;
                            break;
                        case '05':
                            indexInicio = 44;
                            break;
                        case '06':
                            indexInicio = 46;
                            break;
                        case '07':
                            indexInicio = 0;
                            break;
                        case '08':
                            indexInicio = 2;
                            break;
                        case '09':
                            indexInicio = 4;
                            break;
                        case '10':
                            indexInicio = 6;
                            break;
                        case '11':
                            indexInicio = 8;
                            break;
                        case '12':
                            indexInicio = 10;
                            break;
                        case '13':
                            indexInicio = 12;
                            break;
                        case '14':
                            indexInicio = 14;
                            break;
                        case '15':
                            indexInicio = 16;
                            break;
                        case '16':
                            indexInicio = 18;
                            break;
                        case '17':
                            indexInicio = 20;
                            break;
                        case '18':
                            indexInicio = 22;
                            break;
                        case '19':
                            indexInicio = 24;
                            break;
                        case '20':
                            indexInicio = 26;
                            break;
                        case '21':
                            indexInicio = 28;
                            break;
                        case '22':
                            indexInicio = 30;
                            break;
                        case '23':
                            indexInicio = 32;
                            break;
                    }

                    switch (minutos) {
                        case '30':
                            indexInicio += 1
                            break;
                    }
                    indexFin = indexInicio + 1;
                    document.getElementById('<%=HTXT_IDEvento.ClientID%>').value = "";

                    document.getElementById('<%=TXT_IdEvento.ClientID%>').value = "";
            
                 
                    document.getElementById('<%=CMB_A.ClientID %>').selectedIndex = indexFin;
                    document.getElementById('<%=CMB_DE.ClientID %>').selectedIndex = indexInicio;
               
                    <%--document.getElementById('CMB_Relacionado').selectedIndex = "0";
                    document.getElementById('CMB_Recordatorio').selectedIndex = "0";
                    document.getElementById('<%=TXT_Descripcion.ClientID%>').value = "";
                    document.getElementById('CMB_Repetir').selectedIndex = "0";--%>
                    document.getElementById('<%=TXT_A.ClientID%>').value = date.format('YYYY-MM-DD');
                    document.getElementById('<%=TXT_DE.ClientID%>').value = date.format('YYYY-MM-DD');
                  
                    $('#CMD_ModalEditarEvento').click();

                    desactivarloading();
                    //__doPostBack('NuevoEvento_Click', date.format());

                    //alert('Clicked on: ' + date.format());

                    //alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

                    //alert('Current view: ' + view.name);

                    // change the day's background color just for fun

                }



            });

            $(function () {
                $('#popFiltro').dialog({
                    autoOpen: false,
                    modal: true,
                    width: 700,
                    Height: 600,
                    title: 'Generacion de Filtro Eventos',
                    open: function (type, data) {
                        $(this).parent().appendTo("form");

                    }
                });
            });

            function openFiltro() {
                $('#popFiltro').dialog('open');
                return false;
            };

            function closeFiltro() {
                $('#popFiltro').dialog('close');
                return false;
            };

            desactivarloading();
        });





<%--        function mostrarFechasARepetir() {
            if (document.getElementById("<%=CMB_Repetir.ClientID%>").value != "No Repetir") {

                document.getElementById("DIV_Repetir").style.display = 'block';

            }
            else {

                document.getElementById("DIV_Repetir").style.display = 'none';

            }
        }--%>
        function activarloading() {
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';
        }
        function desactivarloading() {

            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
            return false;
        }
        function cerrarModal() {
            $('#CMD_ModalEditarEvento').click();
            return false;
        }
        function cerrarModalMostrar() {
            $('#CMD_ModalMostrarEvento').click();
            return false;
        }
        function agregarEvento(evento) {
            $('#calendar').fullCalendar({
                events: evento
            });
        }
        function validarEvento() {
            

          <%--  if (document.getElementById("<%=TXT_NombreEvento.ClientID%>").value == '') {
                mostraralertifyerror('Debe escribir un nombre para el evento');
            
            if (document.getElementById("<%=TXT_Ubicacion.ClientID%>").value == '') {
                mostraralertifyerror('Debe escribir una ubicacion');
            }--%>

            if (CMB_Recordatorio.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar un tipo de recordatorio.');
                return false;
            }

            else {
                <%-- if (compararFechasMayorIgual(document.getElementById("<%=TXT_A.ClientID %>").value, document.getElementById("<%= TXT_DE.ClientID %>").value) ) {

                        document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ffffff;";

                        if(compararFechasMayorIgual(document.getElementById("<%=CMB_ARepetir.ClientID %>").value, document.getElementById("<%= CMB_DeRepetir.ClientID %>").value))
                        {
                          document.getElementById("<%= CMB_DeRepetir.ClientID %>").style.backgroundColor = "#ffffff;";    
                          
                            if (compararFechasMayorIgual(document.getElementById("<%=CMB_DeRepetir.ClientID %>").value, document.getElementById("<%= TXT_DE.ClientID %>").value)) {


                                return true;
                            }
                            else {
                                document.getElementById("<%= CMB_DeRepetir.ClientID %>").style.backgroundColor = "#ecbfbf";
                                document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ecbfbf";
                                mostraralertifyerror('Debe escribir una fecha que sea mayor o igual a la de repetir-inicial');
                                return false;
                            }


                        }
                        else{
                          mostraralertifyerror('Debe escribir una fecha que sea mayor o igual a la de inicio');
                          document.getElementById("<%= CMB_DeRepetir.ClientID %>").style.backgroundColor = "#ecbfbf";
                          return false
                      }
                }
                else {
                    mostraralertifyerror('Debe escribir una fecha que sea mayor o igual a la de inicio');
                    document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ecbfbf";
                    return false;
                }--%>



                if (validarFechaActual(document.getElementById("<%= TXT_DE.ClientID %>").value)) {

                    document.getElementById("<%= TXT_A.ClientID %>").style.backgroundColor = "#ffffff";
                   document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ffffff";
                   document.getElementById("<%= CMB_A.ClientID %>").style.backgroundColor = "#ffffff";
                   document.getElementById("<%= CMB_DE.ClientID %>").style.backgroundColor = "#ffffff";


                   if (compararFechasMayorIgual(document.getElementById("<%=TXT_A.ClientID %>").value, document.getElementById("<%= TXT_DE.ClientID %>").value)) {

                       document.getElementById("<%= TXT_A.ClientID %>").style.backgroundColor = "#ffffff";
                         document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ffffff";
                         document.getElementById("<%= CMB_A.ClientID %>").style.backgroundColor = "#ffffff";
                         document.getElementById("<%= CMB_DE.ClientID %>").style.backgroundColor = "#ffffff";
                         return true;
                     }
                     else {
                         mostraralertifyerror('Verifique las fechas por favor.');
                         document.getElementById("<%= TXT_A.ClientID %>").style.backgroundColor = "#ecbfbf";
                        document.getElementById("<%= CMB_A.ClientID %>").style.backgroundColor = "#ecbfbf";

                         return false;
                     }

                 } else {
                     mostraralertifyerror('Verifique las fechas por favor');
                     document.getElementById("<%= TXT_DE.ClientID %>").style.backgroundColor = "#ecbfbf";
                    document.getElementById("<%= CMB_DE.ClientID %>").style.backgroundColor = "#ecbfbf";

                   return false;
               }
           }
           return false;
       }


       function validarFechaActual(FechaMenor) {
           //var fecharecibida = FechaMenor.split("/");
           //var fecha = new Date(fecharecibida[2], fecharecibida[1] - 1, fecharecibida[0]);

           //if ((moment(new Date()).format("DD/MM/YYYY")) = moment(fecha).format("DD/MM/YYYY"))
           //{
           //    alert('si');
           //    return true;
           //}
           //else {
           //    alert('no');
           //    return false;
           //}
           var fecharecibida = FechaMenor.split("-");
           var horarecibida = document.getElementById("<%= CMB_DE.ClientID %>").value;
            var hora = horarecibida.split(":");

            var fecha = new Date(fecharecibida[0], fecharecibida[1] - 1, fecharecibida[2], hora[0], hora[0].substring(0, 2));

            var now = new Date();
            var hoy = new Date(now.getFullYear(), now.getMonth(), now.getDate(), now.getHours(), now.getMinutes());

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

           <%-- var horarecibida1 = document.getElementById("<%= CMB_DE.ClientID %>").value;
            var horadesde = horarecibida1.split(":");
            var horarecibida2 = document.getElementById("<%= CMB_A.ClientID %>").value;
            var horahasta = horarecibida2.split(":");--%>

            var horarecibida1 = $("#Content_CMB_DE option:selected").text();
            horarecibida1 = horarecibida1.split(":");
            var horarecibida2 = $("#Content_CMB_A option:selected").text();
            horarecibida2 = horarecibida2.split(":");

            var fecharecibida1 = FechaMayor.split("-");
            var fechamay = new Date(fecharecibida1[0], fecharecibida1[1] - 1, fecharecibida1[2], horarecibida2[0], horarecibida2[1].substring(0, 2));

            var fecharecibida = FechaMenor.split("-");
            var fechamen = new Date(fecharecibida[0], fecharecibida[1] - 1, fecharecibida[2], horarecibida1[0], horarecibida1[1].substring(0, 2));

            //var fecharecibida1 = FechaMayor.split("-");
            //var fecha1 = new Date(fecharecibida1[0], fecharecibida1[1] - 1, fecharecibida1[2]);

            //var fecharecibida = FechaMenor.split("-");
            //var fecha2 = new Date(fecharecibida[0], fecharecibida[1] - 1, fecharecibida[2]);

            //alert(horarecibida1[1].substring(0, 2) + ' : ' + horarecibida2[1].substring(0, 2));

            //alert(fechamay + ' : ' + fechamen);
            //return false;

            if (fechamay.getTime() >= fechamen.getTime()) {
                return true;
            }
            else {
                return false;
            }
        }
        function busquedaBoton(e) {
            if (e.keyCode == 13) {
                alert("Nombre");
            }

            return false;
        }
    <%--    function cambioTodoelDia() {
            informacionEvento();
            if ($('#<%= CHK_TodoElDia.ClientID %>').prop('checked')) {
                document.getElementById('<%=CMB_DE.ClientID%>').style.display = "none";
                document.getElementById('<%=CMB_A.ClientID%>').style.display = "none";
                document.getElementById('CON_Repetir').style.display = "none";
            }
            else {
                document.getElementById('<%=CMB_DE.ClientID%>').style.display = "block";
                document.getElementById('<%=CMB_A.ClientID%>').style.display = "block";
                document.getElementById('CON_Repetir').style.display = "block";
            }
        }--%>
       <%-- function informacionEvento() {

            if (document.getElementById('<%=CMB_Recordatorio.ClientID%>').value != '55' && $('#<%= CHK_TodoElDia.ClientID %>').prop('checked')) {
                document.getElementById('DIV_InfoEvento').style.display = "block";
            }
            else {
                document.getElementById('DIV_InfoEvento').style.display = "none";
            }

        }--%>

        function mostraralertifywarning(msj) {
            alertify.notify(msj, 'warning', 5, null);
        }
        function mostraralertifysuccess(msj) {
            alertify.notify(msj, 'success', 5, null);
        }
        function mostraralertifyerror(msj) {
            alertify.notify(msj, 'error', 5, null);
        }
        function AgregarParticipante() {

            if (document.getElementById("DIV_Busqueda").style.display == "none") {

                document.getElementById("DIV_Busqueda").style.display = "block";
                document.getElementById("DIV_DTGParticipantes").style.display = "none";
            <%--    document.getElementById("<%=CMD_AgregarParticipante.ClientID%>").innerHTML = "<span id=\"SPAN_AgregarParticipante\" class=\"glyphicon glyphicon-arrow-left\" style=\"color:blue;text-decoration:none;\"></span>Volver";--%>

            }
            else {
                document.getElementById("DIV_Busqueda").style.display = "none";
                document.getElementById("DIV_DTGParticipantes").style.display = "block";
          <%--      document.getElementById("<%=CMD_AgregarParticipante.ClientID%>").innerHTML = "<span id=\"SPAN_AgregarParticipante\" class=\"glyphicon glyphicon-plus\" style=\"color:green;text-decoration:none;\"></span>Agregar";
          --%>  }
            return false;
        }



        function validar() {

           
            TXT_Correo = TXT_Correo.trim();

            if (TXT_Correo.length == 0) {
                mostraralertifyerror('Debe completar el email.');
                return false;
            }

            if (/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(TXT_Correo)) {

            } else {
                mostraralertifyerror("La dirección de email es inválida.");
                return false;
            }
        }

    </script>

    <style type="text/css">
	    /*body {
		    margin: 40px 10px;
		    padding: 0;
		    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		    font-size: 14px;
	    }*/
        .fc-day:hover{
            background-color:rgba(0, 21, 255, 0.10);
        }
	    #calendar {
		    max-width: 1080px;
		    margin: 0 auto;
	    }
        
        .stbutton {
            text-align: left;
        }
        .Etiquetas {
            font-size: 15px; 
            color: #A6A7AB; 
            font-weight: normal; 
            font-family: 'Century Gothic';
       }
        .modalBackground{
            background-color: black;
            filter: alpha(opacity=90);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>   
    <asp:TextBox ID="TXTUser" runat="server" Style="display:none;"></asp:TextBox>
     
     <div id="DT1"  style="display:none;">
              <asp:HiddenField ID="TXT_IDModulo" runat="server" Value="" />
     <asp:HiddenField ID="TXT_IDLead" runat="server" Value="" />
<asp:HiddenField ID="TXT_IDOportunidad" runat="server" Value="" />


     </div>
    <div id="popFiltro" style="display: none; overflow: auto;">
            <asp:UpdatePanel ID="UDPFiltroEmbudo" runat="server" UpdateMode="Conditional">
                <ContentTemplate>


                    <table class="trans_table">
                        <tr>
                            <td align="right">Fecha Desde:</td>
                            <td>
                                <asp:TextBox ID="DT_FechaDesde" CssClass="textboxpeq" Enabled="false" runat="server" Width="120px" placeholder="yyyy/MM/dd"></asp:TextBox>
                                <asp:ImageButton ID="imgDT_FechaDesde" Enabled="true" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                <ajax:CalendarExtender ID="CDT_FechaDesde" PopupButtonID="imgDT_FechaDesde" TargetControlID="DT_FechaDesde" runat="server"  Format="yyyy/MM/dd" />
                            </td>
                            <td align="right">Fecha Hasta:</td>
                            <td>
                                <asp:TextBox ID="DT_FechaHasta" CssClass="textboxpeq" Enabled="false" runat="server" Width="120px" placeholder="yyyy/MM/dd"></asp:TextBox>
                                <asp:ImageButton ID="imgDT_FechaHasta" Enabled="true" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                <ajax:CalendarExtender ID="CDT_FechaHasta" PopupButtonID="imgDT_FechaHasta" TargetControlID="DT_FechaHasta" runat="server"  Format="yyyy/MM/dd" />

                            </td>
                        </tr>
                        
                        <tr>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:LinkButton ID="btnGenerarReporte" runat="server" CssClass="btn btn-default btn-info" OnClick="btnGenerarReporte_Click">
                                               <span class="glyphicon glyphicon-list-alt"></span>&nbsp;Generar Reporte
                                </asp:LinkButton>
                            </td>

                            <td colspan="2" align="center">
                                <asp:LinkButton ID="LNKCerrar" runat="server" CssClass="btn btn-defaul btn-danger" OnClientClick="return  $('#popFiltro').dialog('close');return false;">
                                               Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                                </asp:LinkButton>

                            </td>

                        </tr>

                    </table>


                </ContentTemplate>
            </asp:UpdatePanel>
    </div>

    <div id="modalloading" class="loading">
		  <img src="../images/cargando5.gif" width="100" height="100" /> 
    </div>
    
    <div id="fade2" class="overlayload" >

    </div>
    
         <br /><br /><br />
    <div class="main container">
        <div class="col-md-12">

                                            <asp:Label  ID="LBL_TituloCalendario" CssClass="colortitulo"  Font-Size="20"  runat="server">Calendario Citas Vendedores</asp:Label>
          <br />
              <br />        
        </div>
              <div class="col-md-12">
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <%--OnClick="CMD_ReporteCliente_Click"--%>
                 </ContentTemplate>
                </asp:UpdatePanel>
                        </div>
                  <br />
                 
                        <div id="PrincCalendario">
                            <div id="calendar"></div>
                        </div>                  
              
            </div>
    <!-- EVENTOS SIN POSTBACK -->
    <div style="display:none">
        <asp:UpdatePanel UpdateMode="Always" runat="server">
            <ContentTemplate>

                <asp:Button ID="CMD_CargarModificarEvento1" ClientIDMode="Static" runat="server" OnClick="CMD_CargarModificarEvento_Click" />

                <asp:TextBox ID="HTXT_IDEvento" ClientIDMode="Static" runat="server"/>
                

            </ContentTemplate>
        </asp:UpdatePanel>        
    </div>

    <!-- Trigger the modal with a button -->
    <button type="button" style="display:none" class="btn btn-info btn-lg" id="CMD_ModalEditarEvento" data-toggle="modal" data-target="#MDL_EditarEvento">Abrir Modal</button>

    <button type="button" style="display:none" class="btn btn-info btn-lg" id="CMD_ModalMostrarEvento" data-toggle="modal" data-target="#MDL_MostrarEvento">Abrir Modal</button>
    
    
    <!-- MODALS DEL HTML -->
    <div class="modal fade" id="MDL_EditarEvento" role="dialog">
        <!--Modal para ver el evento -->
        <div class="modal-dialog" id="DLG_Editar">

            <div class="modal-content" style="box-shadow: 0 5px 15px rgba(206, 206, 214, 0.84);">
                <div style="background-color: black" class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="color: white; text-shadow: 0 0 5px #d8c3c3;">
                        <asp:Label ID="LBL_NombreCliente" CssClass="colortitulo" Text="Agendar Cita" Font-Size="20" ForeColor="White" runat="server"></asp:Label>
                    </h4>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UP_EditarEvento" runat="server">
                        <ContentTemplate>
                            <div class="col-sm-12">
                                <asp:TextBox runat="server" ID="TXT_IdEvento" Style="display: none" />

                                <div class="form-group">
                                    <div class="form-inline">

                                        <div class="form-group">
                                            <asp:Label runat="server">De:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TXT_DE" TextMode="Date" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:DropDownList ID="CMB_DE" CssClass="form-control" runat="server">
                                                <asp:ListItem Value="7">7:00 AM</asp:ListItem>
                                                <asp:ListItem Value="7.5">7:30 AM</asp:ListItem>
                                                <asp:ListItem Value="8">8:00 AM</asp:ListItem>
                                                <asp:ListItem Value="8.5">8:30 AM</asp:ListItem>
                                                <asp:ListItem Value="9">9:00 AM</asp:ListItem>
                                                <asp:ListItem Value="9.5">9:30 AM</asp:ListItem>
                                                <asp:ListItem Value="10">10:00 AM</asp:ListItem>
                                                <asp:ListItem Value="10.5">10:30 AM</asp:ListItem>
                                                <asp:ListItem Value="11">11:00 AM</asp:ListItem>
                                                <asp:ListItem Value="11.5">11:30 AM</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="12">12:00 PM</asp:ListItem>
                                                <asp:ListItem Value="12.5">12:30 PM</asp:ListItem>
                                                <asp:ListItem Value="13">1:00 PM</asp:ListItem>
                                                <asp:ListItem Value="13.5">1:30 PM</asp:ListItem>
                                                <asp:ListItem Value="14">2:00 PM</asp:ListItem>
                                                <asp:ListItem Value="14.5">2:30 PM</asp:ListItem>
                                                <asp:ListItem Value="15">3:00 PM</asp:ListItem>
                                                <asp:ListItem Value="15.5">3:30 PM</asp:ListItem>
                                                <asp:ListItem Value="16">4:00 PM</asp:ListItem>
                                                <asp:ListItem Value="16.5">4:30 PM</asp:ListItem>
                                                <asp:ListItem Value="17">5:00 PM</asp:ListItem>
                                                <asp:ListItem Value="17.5">5:30 PM</asp:ListItem>
                                                <asp:ListItem Value="18">6:00 PM</asp:ListItem>
                                                <asp:ListItem Value="18.5">6:30 PM</asp:ListItem>
                                                <asp:ListItem Value="19">7:00 PM</asp:ListItem>
                                                <asp:ListItem Value="19.5">7:30 PM</asp:ListItem>
                                                <asp:ListItem Value="20">8:00 PM</asp:ListItem>
                                                <asp:ListItem Value="20.5">8:30 PM</asp:ListItem>
                                                <asp:ListItem Value="21">9:00 PM</asp:ListItem>
                                                <asp:ListItem Value="21.5">9:30 PM</asp:ListItem>
                                                <asp:ListItem Value="22">10:00 PM</asp:ListItem>
                                                <asp:ListItem Value="22.5">10:30 PM</asp:ListItem>
                                                <asp:ListItem Value="23">11:00 PM</asp:ListItem>
                                                <asp:ListItem Value="23.5">11:30 PM</asp:ListItem>
                                                <asp:ListItem Value="24">12:00 AM</asp:ListItem>
                                                <asp:ListItem Value="0.5">12:30 AM</asp:ListItem>
                                                <asp:ListItem Value="1">1:00 AM</asp:ListItem>
                                                <asp:ListItem Value="1.5">1:30 AM</asp:ListItem>
                                                <asp:ListItem Value="2">2:00 AM</asp:ListItem>
                                                <asp:ListItem Value="2.5">2:30 AM</asp:ListItem>
                                                <asp:ListItem Value="3">3:00 AM</asp:ListItem>
                                                <asp:ListItem Value="3.5">3:30 AM</asp:ListItem>
                                                <asp:ListItem Value="4">4:00 AM</asp:ListItem>
                                                <asp:ListItem Value="4.5">4:30 AM</asp:ListItem>
                                                <asp:ListItem Value="5">5:00 AM</asp:ListItem>
                                                <asp:ListItem Value="5.5">5:30 AM</asp:ListItem>
                                                <asp:ListItem Value="6">6:00 AM</asp:ListItem>
                                                <asp:ListItem Value="6.5">6:30 AM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div id="DIV_Notificar_GrupoDe" class="form-group">

                                    <div class="form-inline">
                                        <div class="form-group">
                                            <asp:Label runat="server">A:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TXT_A" TextMode="Date" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:DropDownList ID="CMB_A" CssClass="form-control" runat="server">
                                                <asp:ListItem Value="7">7:00 AM</asp:ListItem>
                                                <asp:ListItem Value="7.5">7:30 AM</asp:ListItem>
                                                <asp:ListItem Value="8">8:00 AM</asp:ListItem>
                                                <asp:ListItem Value="8.5">8:30 AM</asp:ListItem>
                                                <asp:ListItem Value="9">9:00 AM</asp:ListItem>
                                                <asp:ListItem Value="9.5">9:30 AM</asp:ListItem>
                                                <asp:ListItem Value="10">10:00 AM</asp:ListItem>
                                                <asp:ListItem Value="10.5">10:30 AM</asp:ListItem>
                                                <asp:ListItem Value="11">11:00 AM</asp:ListItem>
                                                <asp:ListItem Value="11.5">11:30 AM</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="12">12:00 PM</asp:ListItem>
                                                <asp:ListItem Value="12.5">12:30 PM</asp:ListItem>
                                                <asp:ListItem Value="13">1:00 PM</asp:ListItem>
                                                <asp:ListItem Value="13.5">1:30 PM</asp:ListItem>
                                                <asp:ListItem Value="14">2:00 PM</asp:ListItem>
                                                <asp:ListItem Value="14.5">2:30 PM</asp:ListItem>
                                                <asp:ListItem Value="15">3:00 PM</asp:ListItem>
                                                <asp:ListItem Value="15.5">3:30 PM</asp:ListItem>
                                                <asp:ListItem Value="16">4:00 PM</asp:ListItem>
                                                <asp:ListItem Value="16.5">4:30 PM</asp:ListItem>
                                                <asp:ListItem Value="17">5:00 PM</asp:ListItem>
                                                <asp:ListItem Value="17.5">5:30 PM</asp:ListItem>
                                                <asp:ListItem Value="18">6:00 PM</asp:ListItem>
                                                <asp:ListItem Value="18.5">6:30 PM</asp:ListItem>
                                                <asp:ListItem Value="19">7:00 PM</asp:ListItem>
                                                <asp:ListItem Value="19.5">7:30 PM</asp:ListItem>
                                                <asp:ListItem Value="20">8:00 PM</asp:ListItem>
                                                <asp:ListItem Value="20.5">8:30 PM</asp:ListItem>
                                                <asp:ListItem Value="21">9:00 PM</asp:ListItem>
                                                <asp:ListItem Value="21.5">9:30 PM</asp:ListItem>
                                                <asp:ListItem Value="22">10:00 PM</asp:ListItem>
                                                <asp:ListItem Value="22.5">10:30 PM</asp:ListItem>
                                                <asp:ListItem Value="23">11:00 PM</asp:ListItem>
                                                <asp:ListItem Value="23.5">11:30 PM</asp:ListItem>
                                                <asp:ListItem Value="24">12:00 AM</asp:ListItem>
                                                <asp:ListItem Value="0.5">12:30 AM</asp:ListItem>
                                                <asp:ListItem Value="1">1:00 AM</asp:ListItem>
                                                <asp:ListItem Value="1.5">1:30 AM</asp:ListItem>
                                                <asp:ListItem Value="2">2:00 AM</asp:ListItem>
                                                <asp:ListItem Value="2.5">2:30 AM</asp:ListItem>
                                                <asp:ListItem Value="3">3:00 AM</asp:ListItem>
                                                <asp:ListItem Value="3.5">3:30 AM</asp:ListItem>
                                                <asp:ListItem Value="4">4:00 AM</asp:ListItem>
                                                <asp:ListItem Value="4.5">4:30 AM</asp:ListItem>
                                                <asp:ListItem Value="5">5:00 AM</asp:ListItem>
                                                <asp:ListItem Value="5.5">5:30 AM</asp:ListItem>
                                                <asp:ListItem Value="6">6:00 AM</asp:ListItem>
                                                <asp:ListItem Value="6.5">6:30 AM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <%--     <div class="form-inline">
                                    <div class="form-group">--%>
                                    <asp:Label runat="server">Nombre del Diseñador:</asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="CMB_Diseñador" CssClass="form-control" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <%--  </div>
                                </div>--%>
                                <%--  <div class="form-group">--%>
                                <%--   <div class="form-inline">
                                    <div class="form-group">--%>
                                <%--           <asp:Label runat="server">Estado de la Solicitud:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMD_Solicitud" CssClass="form-control" runat="server">
                                            <asp:ListItem ></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>--%>
                                <%-- </div>
                                </div>--%>



                                <div class="form-group">
                                    <label for="TXT_Descripcion">Notas Asesor:</label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" ID="TXT_Descripcion" CssClass="form-control" MaxLength="200" placeholder="Descripcion del Evento"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                   <div class="form-inline" style="text-align: center;">
                                            <div class="form-group">
                                                <asp:LinkButton runat="server" ID="CMD_Aceptar" OnClick="CMD_Aceptar_Click" CssClass="form-control"><span class="glyphicon glyphicon-check" style="color:green"> </span>Aceptar</asp:LinkButton>
                                            </div>
                                            <div class="form-group">
                                                <asp:LinkButton runat="server" OnClientClick="return cerrarModal();" CssClass="form-control"><span class="glyphicon glyphicon-check" style="color:red"> </span>Cancelar</asp:LinkButton>
                                            </div>
                                        </div>
                                       </div>
                                <div class="modal-footer">
                                    <div class="col-lg-12 col-xs-12 col-lg-12">
                                   
                                    </div>
                                </div>
                            

                            </div>




                            <%--     <div class="form-group">
                                        
                                        <div id="DIV_DTGParticipantes">

                                        <asp:GridView ID="DTG_Participantes" CssClass="grid" OnRowCommand="DTG_Participantes_RowCommand"
                                             OnRowDeleting="DTG_Participantes_RowDeleting" EmptyDataText="No hay Participantes asignados"
                                             AutoGenerateColumns="False" ShowHeader="False" runat="server" CellPadding="4" Width="100%" ForeColor="#333333" GridLines="None">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>
                                                <asp:BoundField DataField="Descripcion"/>
                                                <asp:BoundField DataField="Correo" Visible="false"/>
                                                <asp:TemplateField HeaderText="" ControlStyle-Width="20">
                                                                                     <ItemTemplate>
                                                                                          <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                               CommandName="Delete" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" ImageUrl="~/images/deletered_32.png"                                               
                                                                                                OnClientClick="javascript:return confirm('Esta Seguro que desea eliminar permanente este registro?');"
                                                                                                Text="Delete">     
                                                                                           </asp:ImageButton>
                                                                                      </ItemTemplate>
                                                                                     <ControlStyle Width="20px" />
                                               </asp:TemplateField>


                                            </Columns>
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#ffffff" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#ffffff" />
                                            <SortedAscendingHeaderStyle BackColor="#ffffff" />
                                            <SortedDescendingCellStyle BackColor="#ffffff" />
                                            <SortedDescendingHeaderStyle BackColor="#ffffff" />

                                        </asp:GridView>
                                     
                                        </div>


                                        <div style="display:none" id="DIV_Busqueda">

                                        <asp:GridView ID="DTG_AgregarParticipantes" EmptyDataText="No hay Registros con ese Nombre" 
                                            OnRowCommand="DTG_AgregarParticipantes_RowCommand" AutoGenerateColumns="False" runat="server" BackColor="White" 
                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%" ForeColor="Black" GridLines="Horizontal" ShowHeaderWhenEmpty="True">
                                               <Columns>
                                                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>

                                                    <div class="form-inline">

                                                           <asp:TextBox ID="TXT_BusquedaDescripcion"  CssClass="form-control" runat="server" AutoPostBack="false" Width="80%" MaxLength="30"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                         
                                                            <asp:LinkButton ID="CMD_BusquedaAgregarParticipante" CommandName="Search" Width="18%" style="max-width: 40px;" runat="server" CssClass="form-control"><span class="glyphicon glyphicon-search"></span></asp:LinkButton>

                                                        
                                                    </div>

                                                </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="TXT_Descripcion" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                                                    </ItemTemplate>      
                                                </asp:TemplateField>
                                                
                                                <asp:BoundField ShowHeader="false" HeaderText="" DataField="Correo" Visible="true"/>

                                                <asp:TemplateField HeaderText="" ControlStyle-Width="20">
                                                                                     <ItemTemplate>
                                                                                          <asp:ImageButton ID="CMD_AgregarDTG"  CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" CausesValidation="False" 
                                                                                               CommandName="Agregar" ImageUrl="~/images/addContacto.ico"                 
                                                                                                Text="Agregar">     
                                                                                           </asp:ImageButton>
                                                                                      </ItemTemplate>
                                               </asp:TemplateField>


                                            </Columns>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />

                                        </asp:GridView>

                                        </div>

                                </div>
                                <div class="form-group">
                                <div class="form-inline">
                                   <div class="form-group">
                                       <asp:Label runat="server">Relacionado con:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMB_Relacionado" ClientIDMode="Static" class="form-control" runat="server">
                                            <asp:ListItem>Ninguno</asp:ListItem>
                                            <asp:ListItem>Leads</asp:ListItem>
                                            <asp:ListItem>Empresas</asp:ListItem>
                                            <asp:ListItem>Contactos</asp:ListItem>
                                            <asp:ListItem>Proyectos</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                </div>
                                <div class="form-group">

                                <div class="form-inline" id="CON_Repetir"> 
                                    <div class="form-group">
                                        <asp:Label runat="server">Repetir:</asp:Label>

                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMB_Repetir" onchange="mostrarFechasARepetir();" ClientIDMode="Static" CssClass="form-control" runat="server">
                                            <asp:ListItem>No Repetir</asp:ListItem>
                                            <asp:ListItem>Diaria</asp:ListItem>
                                            <asp:ListItem>Semanal</asp:ListItem>
                                            <asp:ListItem>Mensual</asp:ListItem>
                                            <asp:ListItem>Anual</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div id="DIV_Repetir" style="display:none" class="form-group">
                                    <div class="form-inline" style="margin-top:10px">
                                        <div class="form-group">
                                            <asp:Label runat="server">De:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="CMB_DeRepetir" TextMode="Date" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-inline" style="margin-top:10px">
                                        <div class="form-group">
                                            <asp:Label runat="server">A:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control"  ID="CMB_ARepetir" TextMode="Date" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    </div>
                                    
                                </div>
                                    
                                </div>
                                <div class="form-group">

                                <div class="form-inline">
                                    <div class="form-group">
                                        <asp:Label runat="server">Recordatorio:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMB_Recordatorio" onclick="informacionEvento();" ClientIDMode="Static" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="55">Ninguno</asp:ListItem>
                                            <asp:ListItem Value="0" >En el momento del Evento</asp:ListItem>
                                            <asp:ListItem Value="600">10 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="900">15 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="1800">30 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="3600">1 Hora Antes</asp:ListItem>
                                            <asp:ListItem Value="7200">2 Horas Antes</asp:ListItem>
                                            <asp:ListItem Value="86400">1 Día Antes</asp:ListItem>
                                            <asp:ListItem Value="172800">2 Días Antes</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                    <div id="DIV_InfoEvento" style="display:none" class="form-group">
                                        <span style="color:orangered" class="glyphicon glyphicon-warning-sign"></span> El recordatorio inicial será a las 8am
                                    </div>


                                </div>
                                </div>
                                <div class="form-group">
                                        <div class="form-inline">
                             
                                </div>
                                </div>
                             
                            </div>--%>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>
        </div>

    </div>
    
    <div class="modal fade" id="MDL_MostrarEvento" role="dialog">
        <!--Modal para modificar el evento-->
        <div class="modal-dialog" id="DLG_Modificar">
            <!-- Modal content-->
            <div class="modal-content" style="box-shadow: 0 5px 15px rgba(206, 206, 214, 0.84);">
                <div style="background-color:black" class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="color: white;text-shadow: 0 0 5px #d8c3c3;">Agendar Diseño  Oferta</h4>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                        <ContentTemplate>
                            <div class="col-sm-12">
                                 

                                <%--<div class="form-group">
                                    <asp:TextBox ID="TXTMNombreEvento"  runat="server" CssClass="form-control" placeholder="Digite el Nombre">Nuevo Evento</asp:TextBox>
                                </div>
                                <div class="form-group">
                                        <div class="form-inline">
                                  <%---%>-  <div class="form-group">
                                        <asp:Label runat="server">Tipo Calendario:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMBMTipoCalendario"  CssClass="form-control" runat="server">
                                            <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                                            <asp:ListItem Value="Tareas" >Tarea</asp:ListItem>
                                            <asp:ListItem Value="Eventos">Evento</asp:ListItem>                                          
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                </div>
                                <div class="form-group">
                                    <label for="TXT_Ubicacion">Ubicacion del Evento:</label>
                                    <asp:TextBox ID="TXTMUbicacion" runat="server" CssClass="form-control" placeholder="Digite la Ubicación"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="CHKMTodoelDia">Todo el Día: </label>
                                    <asp:CheckBox runat="server" onclick="cambioTodoelDia();" ID="CHKMTodoelDia"/>
                                </div>--%>
                                <hr />
                                <div class="form-group">
                                    <div  class="form-inline">
                                        <div class="form-group" style="min-width:22px">
                                            <asp:Label runat="server"><span class="glyphicon glyphicon-time"></span> De:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label runat="server" ID="TXTMDe"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="form-inline">
                                        <div class="form-group" style="min-width:22px">
                                            <asp:Label runat="server"><span class="glyphicon glyphicon-time"></span> A:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label runat="server" ID="TXTMA"></asp:Label>
                                        </div>
                                    </div>

                                </div>
                                <hr />
                                <div class="form-group">
                                        <div class="form-inline">
                                    <div class="form-group">
                                        <asp:Label runat="server"><span class="glyphicon glyphicon-user"></span> Vendedor: </asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" ID="TXTMVendedor"></asp:Label>
                                    </div>
                                </div>
                                </div>
                                <div class="form-group">
                                     <hr />
                                        <asp:Label runat="server"><span class="glyphicon glyphicon-user"></span> Participantes:</asp:Label>
                                   
                                </div>
                                <div class="form-group">
                                        <asp:GridView ID="DGVMParticipantes" CssClass="grid" OnRowCommand="DTG_Participantes_RowCommand"
                                             OnRowDeleting="DTG_Participantes_RowDeleting" EmptyDataText="No hay Participantes asignados"
                                             AutoGenerateColumns="true" ShowHeader="False" runat="server" CellPadding="4" Width="100%" ForeColor="#333333" GridLines="None">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#ffffff" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <SortedAscendingCellStyle BackColor="#ffffff" />
                                            <SortedAscendingHeaderStyle BackColor="#ffffff" />
                                            <SortedDescendingCellStyle BackColor="#ffffff" />
                                            <SortedDescendingHeaderStyle BackColor="#ffffff" />
                                        </asp:GridView>
                                </div>
                                <div class="form-group">
                                    <div class="form-inline">

                                        <div class="form-group">

                                <div class="form-inline">
                                    <div class="form-group">
                                        <asp:Label runat="server">Recordatorio:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMBMRecordatorio" onclick="informacionEvento();" ClientIDMode="Static" CssClass="form-control" runat="server">
                                            <asp:ListItem Value="55">Ninguno</asp:ListItem>
                                            <asp:ListItem Value="0" >En el momento del Evento</asp:ListItem>
                                            <asp:ListItem Value="600">10 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="900">15 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="1800">30 Minutos Antes</asp:ListItem>
                                            <asp:ListItem Value="3600">1 Hora Antes</asp:ListItem>
                                            <asp:ListItem Value="7200">2 Horas Antes</asp:ListItem>
                                            <asp:ListItem Value="86400">1 Día Antes</asp:ListItem>
                                            <asp:ListItem Value="172800">2 Días Antes</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>

                                </div>
                                </div>

                                        <div class="form-group">
                                            
                                            <div class="form-inline"> 
                                        <div class="form-group">
                                        <asp:Label runat="server">Repetir:</asp:Label>
                                    </div>
                                        <div class="form-group">
                                        <asp:DropDownList ID="CMBMRepetir" ClientIDMode="Static" CssClass="form-control" runat="server">
                                            <asp:ListItem>No Repetir</asp:ListItem>
                                            <asp:ListItem>Diaria</asp:ListItem>
                                            <asp:ListItem>Semanal</asp:ListItem>
                                            <asp:ListItem>Mensual</asp:ListItem>
                                            <asp:ListItem>Anual</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    </div>

                                        </div>

                                        <hr />
                                        
                                        <div class="form-group">
                                            <div class="form-inline">
                                        <div class="form-group">
                                            <asp:Label runat="server">Relacionado con:</asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <asp:DropDownList ID="CMBMIDRelacionales" ClientIDMode="Static" class="form-control" runat="server">
                                                <asp:ListItem>Ninguno</asp:ListItem>
                                                <asp:ListItem>Leads</asp:ListItem>
                                                <asp:ListItem>Empresas</asp:ListItem>
                                                <asp:ListItem>Contactos</asp:ListItem>
                                                <asp:ListItem>Proyectos</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                        </div>

                                        <div class="form-group">
                                        <div class="form-inline">
                                    <div class="form-group">
                                        <asp:Label runat="server">Motivo:</asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList ID="CMBMMotivo" CssClass="form-control" runat="server">
                                             <asp:ListItem Value="0">Ninguno</asp:ListItem>
                                            <asp:ListItem Value="Visita" >Visita</asp:ListItem>
                                            <asp:ListItem Value="Oferta">Oferta</asp:ListItem>
                                            <asp:ListItem Value="Negociacion">Negociacion</asp:ListItem>
                                            <asp:ListItem Value="Firma Contrato">Firma Contrato</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                </div>

                                    </div>

                                </div>
                                <hr />

                                <div class="form-group">
                                    <label for="TXT_Descripcion">Descripcion:</label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" ID="TXTMDescripcion" CssClass="form-control" MaxLength="200" placeholder="Descripcion del Evento"></asp:TextBox>
                                </div>
                                
                                <hr />
                                <asp:Label Text="Notificaciones: " runat="server" />
                                <div class="form-group"> 
                                    <asp:GridView ID="DGVNotificaciones" EmptyDataText="No hay Notificaciones afiliadas o pendientes de este evento" runat="server">
                                    </asp:GridView>
                                </div>
                             </div>
                       </ContentTemplate>
                     </asp:UpdatePanel>
                </div>
                <div class="modal-footer">
                    <div class="row">
                           <div class="col-md-6">
                                <asp:LinkButton runat="server"  OnClick="CMD_ActuaizarEvento_Click" 
                                     ID="CMD_ActuaizarEvento" CssClass="btn btn-success">
                                     <span class="glyphicon glyphicon-floppy-disk" style="color:green"> </span>
                                    &nbsp;&nbsp; Guardar</asp:LinkButton>
                           </div>

                           <div class="col-md-6" style="text-align:left">
                                  <asp:LinkButton runat="server" OnClientClick="return cerrarModalMostrar();" ID="LinkButton3"
                                    CssClass="btn btn-default" ><span class="glyphicon glyphicon-log-out">
                                  </span>&nbsp; &nbsp;Cerrar</asp:LinkButton>
                           </div>
                         
                        <%--<div class="form-inline" style="text-align:center">--%>
                           <%-- <div class="form-group">--%>
                                
                            
                                
                            <%--</div>--%>
                        <%--</div>--%>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
