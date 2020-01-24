<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableSessionState="True" EnableEventValidation="false" CodeBehind="FRMSA02Add.aspx.cs" Inherits="MCWebHogar.CRM.FRMSA02Add" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   

    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <meta name="viewport" content="width=device-width" />


    <script type="text/javascript">

        $(document).ready(function () {
            //setearFecha();
            //setearCostos();
        });

        function KeyPressed(e) {
            //Get the Key Code
            //alert('test1');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                $("[id*='CMD_BuscarVentaDirecta']").click();


            }
        }


        function desactivarloadingarchivo() {

            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';

            return false;
        }



        function detour(e) {
            //alert('si');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                //alert('listo2');
                //$('CMD_BuscarFacturas').click();
                //alert('listO3');
                $("[id*='CMD_BuscarFacturas']").click();
                //alert('listo4');
                //document.getElementById('CMD_BuscarFacturas').click();
                //document.getElementById("CMD_BuscarFacturas").click();
                //alert('listo5');
            }
        }

        function activarloading() {

            //document.getElementById('fade2').style.height = document.getElementsByTagName('body').style.height ;
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            document.getElementById('MenuVersiones').style.display = 'block';

        }


        function desactivarloading() {

            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            document.getElementById('MenuVersiones').style.display = 'block';

            return false;
        }

        function openCalendario() {
            $('#popCalendario').dialog('open');
            return false;
        }

        function closeCalendario() {
            $('#popCalendario').dialog('close');
            return false;
        }
        function closePresupuesto() {
            $('#FormNotasImprimir').dialog('close');
            return false;
        }

        function openpopclientes() {

            document.getElementById('btn_popClientes').click();
        }

        function closepopclientes() {

            document.getElementById('btn_popClientes').click();

        }

        function closepopfactura() {

            document.getElementById('btn_closePopFactura').click();


            //document.getElementById('Button1').style.display = 'none';
            return false;
        }

        function abrirPopFactura() {

            document.getElementById("openPopFactura").click();

            return false;
        }





        function openPopAdjunto() {

            <%--var TXT_Lead = document.getElementById('<%= LBL_Caso.ClientID %>').value;
             
             if (TXT_Lead.length == 0) {
                 mostraralertifyerror('Debe guardar primero el Lead.');

              } else {
                 document.getElementById('<%= TXTNombreDocumento.ClientID %>').selectedIndex = 0;
                  document.getElementById('<%= TXTObservaciones.ClientID %>').value = '';
            $('#popAdjunto').dialog('open');

            }--%>
            document.getElementById("btn_popAdjunto").click();

            return false;
        }

        function closePopAdjunto() {
            // $('#popAdjunto').dialog('close');

            return false;
        }

        function abrirmodalnotas() {

            document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';
            document.getElementById('<%= TXTTituloNota.ClientID %>').value = '';
            document.getElementById('FormNotas').style.display = 'block';
            document.getElementById('fade').style.display = 'block';


            document.getElementById("btn_FormNotas").click();

            return false;
        }
        function abrirmodalnotasPresupuesto() {

            <%--<%--document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';
             document.getElementById('<%= TXTTituloNota.ClientID %>').value = '';--%>
            //document.getElementById('FormNotas').style.display = 'block';
            //document.getElementById('fade').style.display = 'block';

             <%--//document.getElementById('<%= LBL_ERRORPRESUPUESTO.Text %>').value = '';
             document.getElementById("btn_FormNotasImprimir").click();--%>

            return false;
        }

        function cerrarPopNotas() {

            document.getElementById("Content_BTNCerrar").click();
            //$("[id*='BTNCerrar']").click();
        }
        function cerrarPopNotasPresupuesto() {

            $("[id*='BTNCerrarPresupuesto']").click();
        }
        function cerrarPopConvertir() {

            $("[id*='BTNCerrarPresupuesto3']").click();
        }


        function limpiarmodal() {

            document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';
            document.getElementById('<%= TXTTituloNota.ClientID %>').value = '';
            document.getElementById("titulomodalnotas").innerHTML = "Nueva Nota";

            document.getElementById('<%= CMDActualizarNota.ClientID %>').style.display = 'none';
             document.getElementById('<%= CMDIncluirNota.ClientID %>').style.display = 'inherit';

            document.getElementById('<%= TXTTituloNota.ClientID %>').disabled = false;
            document.getElementById('<%= CHKEstado.ClientID %>').disabled = false;
            document.getElementById('<%= CHKEstado.ClientID %>').checked = false;
          <%--   document.getElementById('<%= LBLTituloMenu.ClientID %>').value = 'testtttttttt';--%>
            return false;
        }


        function validarmodalnotas() {
            var TXTContenidoNota = document.getElementById('<%= TXTContenidoNota.ClientID %>').value.trim();
            TXTContenidoNota = TXTContenidoNota.trim();
            if (TXTContenidoNota.length == 0) {
                alert('Debe Ingresar el detalle de la nota');
                return false;
            }
        }

        $('#btn_nuevanota').click(function () {

            //  $('#FormNotas').dialog();
            // alert('df');

            //document.getElementById('formNotas').style.display = 'block';
            //document.getElementById('fade').style.display = 'block';

            //$("#Content_CMD_Guardar").click(function () {
            //    $("#divCompleto").addClass("bloqueo container body-content");
            //});

            //return false;

        });

        $(document).on("click", "[id*=Responder]", function () {

            //$("[id*=TXTContenidoNota]").val($(".Nota", $(this).closest("tr")).html());
            $("[id*=TXTTipo]").val($(".Tipo", $(this).closest("tr")).html());
            $("[id*=TXTTituloNota]").val($(".Titulo", $(this).closest("tr")).html());

            document.getElementById('<%= TXTTituloNota.ClientID %>').disabled = true;
              document.getElementById('<%= CHKEstado.ClientID %>').checked = false;
              document.getElementById('<%= CHKEstado.ClientID %>').disabled = true;
              document.getElementById("titulomodalnotas").innerHTML = "Responder Nota";
              document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';

              //abrirmodalnotas();



                document.getElementById('<%= CMDActualizarNota.ClientID %>').style.display = 'inherit';
              document.getElementById('<%= CMDIncluirNota.ClientID %>').style.display = 'none';

              return false;
          });


          function limpiarmodal() {
              //campos
        <%--    document.getElementById('<%= TXT_NombreCliente.ClientID %>').value = '';
            document.getElementById('<%= TXT_CodigoCliente.ClientID %>').value = '';
            document.getElementById('<%= TXT_Telefono.ClientID %>').value = '';
            document.getElementById('<%= TXT_NombreContacto.ClientID %>').value = '';
            document.getElementById('<%= TXT_TelefonoContacto.ClientID %>').value = '';
            document.getElementById('<%= TXT_OtroTelefono.ClientID %>').value = '';
            document.getElementById('<%= TXT_NotaCliente.ClientID %>').value = '';
            document.getElementById('<%= TXT_DireccionCliente.ClientID %>').value = '';
            document.getElementById('<%= DTP_FSolicitud.ClientID %>').value = '';
            document.getElementById('<%= DTP_FServicio.ClientID %>').value = '';
            document.getElementById('<%= DTP_FCierre.ClientID %>').value = '';
            document.getElementById('<%= TXT_TipoServicio.ClientID %>').value = '';
            document.getElementById('<%= TXT_Referencia.ClientID %>').value = '';
            document.getElementById('<%= TXT_SolicitadoPor.ClientID %>').value = '';
            document.getElementById('<%= TXT_DañoReportado.ClientID %>').value = '';
            document.getElementById('<%= TXT_TrabajoRealizado.ClientID %>').value = '';
            document.getElementById('<%= TXT_RepuestosInsumos.ClientID %>').value = '';
            document.getElementById('<%= TXT_TipoCambio.ClientID %>').value = ''; ///debería cargarse el tipo actual
            document.getElementById('<%= TXT_CostoVisita.ClientID %>').value = '';
            document.getElementById('<%= TXT_CostoRepuestos.ClientID %>').value = '';
            document.getElementById('<%= TXT_CostoTecnico.ClientID %>').value = '';--%>


            //campos--%>


            return false;
        }


        function opencalendariodiseno() {

            // $("[id*='btn_CalendarioDiseno']").click();
            document.getElementById('btn_CalendarioDiseno').click();
        }


        function mostraralertifywarning(msj) {
            alertify.notify(msj, 'warning', 5, null);
        }

        function mostraralertifysuccess(msj) {
            alertify.notify(msj, 'success', 5, null);
        }

        function mostraralertifyerror(msj) {
            alertify.notify(msj, 'error', 5, null);
        }

        $(function () {

            $(document).on("click", "[id*=subnav]", function () {
                $(this).children('.children').slideToggle();
            });

            $(document).on("click", "[id*=subm]", function () {
                $(this).children('.uno2').slideToggle();
                // alert('togle');
            });



            $('#cerrarp').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });
            $('#cerrar2').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });




        });


        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';
            $("#divCompleto").addClass("bloqueo");

            return false;
        }

        $("[src*=plus]").live("click", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "../images/minus.png");
        });
        $("[src*=minus]").live("click", function () {
            $(this).attr("src", "../images/plus.png");
            $(this).closest("tr").next().remove();
        });




    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

     <h3><asp:Label ID="lbltitulo" CssClass="colortitulo" runat="server" Text="Modificación clientes"></asp:Label>
         <asp:HiddenField ID="TXT_Contacto" runat="server"  /> 
         </h3>

    <script type="text/javascript">

        $(function () {
            $('#cerrarp').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });
            $('#cerrar2').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });

            //$('#popClientes').dialog({
            //    autoOpen: false,
            //    modal: true,
            //    width: 350,
            //    height: 400,
            //    title: 'Buscar Clientes',
            //    buttons: {
            //        "Cerrar": function () {
            //            // document.getElementById('popCargarPedidoPCG').style.display = "none";
            //            $(this).dialog("close");
            //        }
            //    },
            //    open: function (type, data) {
            //        $(this).parent().appendTo("form");
            //        // $("[id*='CMD_SearchProdPcgraf']").click();
            //        //$('#TXT_FiltroProducto').focus();
            //    }
            //});

        });

        function ClientSelected(source, eventArgs) {
            <%-- var idx = source._selectIndex;
             var value = source.get_completionList().childNodes[idx]._value;
             var array = value.split('-');
             var Id = array[0];
             Id = Id.trim();
             var Descripcion = array[1];
             Descripcion = Descripcion.trim();
             var TXT_NombreCliente = "<%= TXT_NombreCliente.ClientID %>";
             document.getElementById(TXT_NombreCliente).value = Descripcion;
             var TXT_NombreClientehd = "<%= TXT_NombreClientehd.ClientID %>";
             document.getElementById(TXT_NombreClientehd).value = Id;--%>
        }


        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';
            $("#divCompleto").addClass("bloqueo");

            //$("#Content_CMD_Guardar").click(function () {
            //    $("#divCompleto").addClass("bloqueo container body-content");
            //    $("body").addClass("no_scroll");
            //});


            return false;
        }

        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 32)
        }

        function mostraralertifywarning(msj) {
            alertify.notify(msj, 'warning', 5, null);
        }

        function mostraralertifysuccess(msj) {
            alertify.notify(msj, 'success', 5, null);
        }

        function mostraralertifyerror(msj) {
            alertify.notify(msj, 'error', 5, null);
        }

        function setearFecha() {
            var fecha = new Date(); //Fecha actual
            var mes = fecha.getMonth() + 1; //obteniendo mes
            var dia = fecha.getDate(); //obteniendo dia
            var ano = fecha.getFullYear(); //obteniendo año
            if (dia < 10)
                dia = '0' + dia; //agrega cero si el menor de 10
            if (mes < 10)
                mes = '0' + mes
            document.getElementById('<%= DTP_FSolicitud.ClientID %>').value = dia + "/" + mes + "/" + ano;
            document.getElementById('<%= DTP_FServicio.ClientID %>').value = dia + "/" + mes + "/" + ano;
            document.getElementById('<%= DTP_FCierre.ClientID %>').value = dia + "/" + mes + "/" + ano;
        }
       <%-- function setearCostos() {

            document.getElementById('<%= TXT_CostoVisita.ClientID %>').value = 0;
            document.getElementById('<%= TXT_CostoTecnico.ClientID %>').value = 0;
            document.getElementById('<%= TXT_CostoRepuestos.ClientID %>').value = 0;

            //tipo cambio
            document.getElementById('<%= TXT_TipoCambio.ClientID %>').value = 0;--%>

        }
        function validaFecha() {

            var DTP_FSolicitud = document.getElementById('<%= DTP_FSolicitud.ClientID %>').value;

            var DTP_FServicio = document.getElementById('<%= DTP_FServicio.ClientID %>').value;

            var DTP_FCierre = document.getElementById('<%= DTP_FCierre.ClientID %>').value;


            if (DTP_FSolicitud.length == 0) {
                mostraralertifyerror('Debe completar la fecha de solicitud!');
                return false;
            }

            if (DTP_FServicio.length == 0) {
                mostraralertifyerror('Debe completar la fecha de servicio!');
                return false;
            }

            if (DTP_FCierre.length == 0) {
                mostraralertifyerror('Debe completar la fecha de cierre!');
                return false;
            }
            if (DTP_FSolicitud == DTP_FCierre) {
                mostraralertifyerror('La fecha de inicio no puede ser igual a la fecha final.');
                return false;
            }

            if (DTP_FSolicitud > DTP_FCierre) {
                mostraralertifyerror('La fecha de cierre no puede ser menor a la fecha de solicitud.');
                return false;
            }



        }

        function validar() {
        <%--   var TXT_NombreCliente = document.getElementById('<%= TXT_NombreCliente.ClientID %>').value.trim();
             TXT_NombreCliente = TXT_NombreCliente.trim();

             var TXT_CodigoCliente = document.getElementById('<%= TXT_CodigoCliente.ClientID %>').value.trim();
            TXT_CodigoCliente = TXT_CodigoCliente.trim();

            var TXT_Telefono = document.getElementById('<%= TXT_Telefono.ClientID %>').value.trim();
            TXT_Telefono = TXT_Telefono.trim();

             var TXT_NombreContacto = document.getElementById('<%= TXT_NombreContacto.ClientID %>').value.trim();
            TXT_NombreContacto = TXT_NombreContacto.trim();

            var TXT_TelefonoContacto = document.getElementById('<%= TXT_TelefonoContacto.ClientID %>').value.trim();
            TXT_TelefonoContacto = TXT_TelefonoContacto.trim();

            var TXT_OtroTelefono = document.getElementById('<%= TXT_OtroTelefono.ClientID %>').value.trim();
            TXT_OtroTelefono = TXT_TelefonoContacto.trim();

            var CMB_Estado = document.getElementById('<%= CMB_Estado.ClientID %>');

            var TXT_NotaCliente = document.getElementById('<%= TXT_NotaCliente.ClientID %>').value.trim();
            TXT_NotaCliente = TXT_NotaCliente.trim();

            var TXT_DireccionCliente = document.getElementById('<%= TXT_DireccionCliente.ClientID %>').value.trim();
            TXT_DireccionCliente = TXT_DireccionCliente.trim();

            var TXT_TipoServicio = document.getElementById('<%= TXT_TipoServicio.ClientID %>').value.trim();
            TXT_TipoServicio = TXT_TipoServicio.trim();

            var TXT_SolicitadoPor = document.getElementById('<%= TXT_SolicitadoPor.ClientID %>').value.trim();
            TXT_SolicitadoPor = TXT_SolicitadoPor.trim();

            var TXT_Referencia = document.getElementById('<%= TXT_Referencia.ClientID %>').value.trim();
            TXT_Referencia = TXT_Referencia.trim();

            var TXT_DañoReportado = document.getElementById('<%= TXT_DañoReportado.ClientID %>').value.trim();
            TXT_DañoReportado = TXT_DañoReportado.trim();

            var TXT_TrabajoRealizado = document.getElementById('<%= TXT_TrabajoRealizado.ClientID %>').value.trim();
            TXT_TrabajoRealizado = TXT_TrabajoRealizado.trim();

            var TXT_RepuestosInsumos = document.getElementById('<%= TXT_RepuestosInsumos.ClientID %>').value.trim();
            TXT_RepuestosInsumos = TXT_RepuestosInsumos.trim();

            var DT_HoraInicio = document.getElementById('<%= DT_HoraInicio.ClientID %>');

            var DT_HoraFinal = document.getElementById('<%= DT_HoraFinal.ClientID %>');

            var CMB_Zona = document.getElementById('<%= CMB_Zona.ClientID %>');

            var CMB_Moneda = document.getElementById('<%= CMB_Moneda.ClientID %>');

            var TXT_TipoCambio = document.getElementById('<%= TXT_TipoCambio.ClientID %>').value.trim();
            TXT_TipoCambio = TXT_TipoCambio.trim();

            var TXT_CostoVisita = document.getElementById('<%= TXT_CostoVisita.ClientID %>').value.trim();
            TXT_CostoVisita = TXT_CostoVisita.trim();

            var TXT_CostoTecnico = document.getElementById('<%= TXT_CostoTecnico.ClientID %>').value.trim();
            TXT_CostoTecnico = TXT_CostoTecnico.trim();

            var TXT_CostoRepuestos = document.getElementById('<%= TXT_CostoRepuestos.ClientID %>').value.trim();
            TXT_CostoRepuestos = TXT_CostoRepuestos.trim();

             


            //if (CMB_SectorLead.selectedIndex == 0) {
            //    mostraralertifyerror('Debe seleccionar el sector!');
            //    return false;
            //}
            //if (TXT_NombreCliente.length == 0) {
            //    mostraralertifyerror('Debe completar el nombre del cliente!');
            //    return false;
            //}
            //if (TXT_CodigoCliente.length == 0) {
            //    mostraralertifyerror('Debe completar el código del cliente!');
            //    return false;
            //}
            //if (TXT_Telefono.length == 0) {
            //    mostraralertifyerror('Debe completar el telefono!');
            //    return false;
            //}

            //if (!(/^\d{8}$/.test(TXT_Telefono)))
            //{
            //    mostraralertifyerror('Debe digitar un teléfono de cliente válido!');
            //    return false;
            //}
            //if (TXT_NombreContacto.length == 0) {
            //    mostraralertifyerror('Debe completar el nombre del contacto!');
            //    return false;
            //}
            //if (TXT_TelefonoContacto.length == 0) {
            //    mostraralertifyerror('Debe completar el teléfono del contacto!');
            //    return false;
            //}

            //if (!(/^\d{8}$/.test(TXT_TelefonoContacto))) {
            //    mostraralertifyerror('Debe digitar un teléfono de contacto válido!');
            //    return false;
            //}

            //if (TXT_OtroTelefono.length == 0) {
            //    mostraralertifyerror('Debe completar el campo de otro teléfono!');
            //    return false;
            //}

            //if (!(/^\d{8}$/.test(TXT_OtroTelefono))) {
            //    mostraralertifyerror('Debe digitar otro teléfono de contacto válido!');
            //    return false;
            //}

            //validaFecha();

            //if (TXT_TipoServicio.length == 0) {
            //    mostraralertifyerror('Debe completar el tipo de servicio!');
            //    return false;
            //}

            //if (TXT_Referencia.length == 0) {
            //    mostraralertifyerror('Debe completar la referencia!');
            //    return false;
            //}

            //if (TXT_SolicitadoPor.length == 0) {
            //    mostraralertifyerror('Debe completar el campo solicitado por!');
            //    return false;
            //}

            //if (TXT_DañoReportado.length == 0) {
            //    mostraralertifyerror('Debe completar el daño reportado!');
            //    return false;
            //}

            //if (TXT_TrabajoRealizado.length == 0) {
            //    mostraralertifyerror('Debe completar el trabajo realizado!');
            //    return false;
            //}

            //if (TXT_RepuestosInsumos.length == 0) {
            //    mostraralertifyerror('Debe completar el campo de respuestos o insumos!');
            //    return false;
            //}
        --%>
        }


        $('#popImagen').dialog({
            autoOpen: false,
            modal: true,
            width: 800,
            Height: 600,
            title: 'Visualizar Adjunto',
            //buttons: {
            //    "Cerrar": function () {
            //        // document.getElementById('popCargarPedidoPCG').style.display = "none";
            //        $(this).dialog("close");
            //    }
            //},
            open: function (type, data) {
                $(this).parent().appendTo("form");
                // $("[id*='CMD_SearchProdPcgraf']").click();
                //$('#TXT_FiltroProducto').focus();
            }
        });

    </script>

         <div class="container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">     
         


     <%--<div id="divCompleto" class="main container">--%>

       
         

        <%--  </div> --%>

      

        <div class="rowsPanel panel panel-primary">



            <table class="trans_table">
                <tr>
                    <%--<td colspan="5">--%>
                        
                    <%--</td>--%>

                    <td align="Left" style="background-color: rgba(251,251,251,.6); overflow:hidden;">

                        <h2>
                          <asp:Label ID="Label1" runat="server" Text="Crear Nuevo Caso"></asp:Label>


                    </td>



                    <td align="right">

                        
                        <h4>
                            <span class="badge" style="padding: 7px; background-color: #006699;">Caso <span class="badge" style="background-color: #f2f2f2;">
                                <asp:Label ID="LBL_Caso" CssClass="colortitulo" runat="server" ForeColor="Red" Text="#"></asp:Label></span></span>


                        </h4>
                    </td>
                    <td align="right">
                        <asp:TextBox ID="TXT_UsuarioCreo" runat="server" Enabled="false" Visible="false"></asp:TextBox>

                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:HiddenField ID="TXT_IDCaso" runat="server" Value="" />
                               
                                       
                 <%-- <div style="text-align:right;">
                  <asp:LinkButton ID="LinkButtonrg15" runat="server" OnClick="ButtonRg_Click"  CssClass="btn btn-success" > <span class="glyphicon glyphicon-plus"></span>&nbsp;regresar </asp:LinkButton>
                  </div>--%>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </td>
                </tr>
            </table>
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="" aria-controls="collapseExample">
                Informaci&oacute;n del Caso:
                                 <span class="icon-chevron-small-down rightBar"></span>
            </div>

<%-----------------------------------------Inicio Colapse 1 info caso---------------------------------------------------------------------%>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse1">
                    <div class="well">


                        <div class="row">
                            <div class="col-md-8">

                            <asp:UpdatePanel ID="UpdatePanel26" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                            
                                <%--<asp:LinkButton ID="lnkbuscaCliente" runat="server" CssClass="btn btn-default" OnClick="lnkbuscaCliente_Click">
                                <span class="glyphicon glyphicon-search"></span>&nbsp; Buscar Cliente:
                                </asp:LinkButton>--%>
                                <%--<asp:TextBox ID="TextBox1" class="form-control" Enabled="false" Width="100%" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>--%>
                                
                                               
                                   
                                <%--<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default" OnClientClick="abrirPopFactura()">
                                <span class="glyphicon glyphicon-search"></span>&nbsp; Buscar factura:
                                </asp:LinkButton>--%>
                                


                                <div class="form-group">
                                    <label for="TXT_NombreCliente">Nombre Cliente:</label>
                                    <asp:TextBox ID="TXT_NombreCliente" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>

                                </div>

                                <div class="form-group">
                                    <label for="TXT_NumeroFac">Numero de Factura:</label>
                                    <asp:TextBox ID="TXT_NumeroFac" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>

                                </div>

                                <div class="form-group">
                                    <label for="TXT_Telefono">Teléfono:</label>
                                    <asp:TextBox ID="TXT_Telefono" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                    <label for="TXT_OtroTelefono">Otro Teléfono:</label>
                                    <asp:TextBox ID="TXT_OtroTelefono" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="TXT_CodigoCliente">Correo Electronico:</label>
                                    <asp:TextBox ID="TXT_CorreoElectronico" class="form-control" runat="server" MaxLength="150"
                                        onkeydown="return (event.keyCode!=13);" ReadOnly="true"></asp:TextBox>
                                </div>

                                                             

                                

                                </ContentTemplate>
                                    
                                </asp:UpdatePanel>

                            </div>


                            <div class="col-md-4">

                                 <div class="form-group">
                                    <label for="TXT_NombreContacto">Nombre Contacto:</label>
                                    <asp:TextBox ID="TXT_NombreContacto" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="TXT_TelefonoContacto">Teléfono Contacto:</label>
                                    <asp:TextBox ID="TXT_TelefonoContacto" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);" ReadOnly="true" ></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="CMB_Estado">Estado Solicitud:</label>
                                    <asp:DropDownList  ID="CMB_Estado" Enabled="false" class="form-control" runat="server">
                                        <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                        <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            
                                 <asp:UpdatePanel ID="paneldire" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                 Dirección Cliente:
                                <asp:TextBox ID="TXT_DireccionCliente" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" ReadOnly="true" ></asp:TextBox>
                                </ContentTemplate>
                                    
                                </asp:UpdatePanel>

                                </div>
                                </div>

                            
                                <div class="row">

                                <div class="col-md-12">
                                
                                Nota Cliente:
                                <asp:TextBox ID="TXT_NotaCliente" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" ReadOnly="true" ></asp:TextBox>
                                <br />
                                </div>

                               

                               </div>



                           
                        
                        <br />
                        <div class="row">


                            <div class="col-md-4">
                                Fecha Inicio:<br />
                                <asp:TextBox ID="DTP_FSolicitud" class="date start" Width="120" runat="server" onkeypress="return false" onpaste="return false" ReadOnly="true"></asp:TextBox>
                                <asp:ImageButton ID="imgDTPSolicitud" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" Enabled="false" />
                                <ajax:CalendarExtender ID="calendario1" PopupButtonID="imgDTPSolicitud" TargetControlID="DTP_FSolicitud" runat="server" Format="dd/MM/yyyy" Enabled="false" />

                            </div>

                            <div class="col-md-4">
                                Fecha Servicio:<br />
                                <asp:TextBox ID="DTP_FServicio" class="date start" Width="120" runat="server" onkeypress="return false" onpaste="return false" ReadOnly="true"></asp:TextBox>
                                <asp:ImageButton ID="imgDTPServicio" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" Enabled="false"/>
                                <ajax:CalendarExtender ID="calendario2" PopupButtonID="imgDTPServicio" TargetControlID="DTP_FServicio" runat="server" Format="dd/MM/yyyy" Enabled="false"  />
                            </div>

                            <div class="col-md-4">
                                Fecha Cierre:<br />
                                <asp:TextBox ID="DTP_FCierre" class="date start" Width="120" runat="server" onkeypress="return false" onpaste="return false" ReadOnly="true"></asp:TextBox>
                                <asp:ImageButton ID="imgDTPCierre" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" Enabled="false" />
                                <ajax:CalendarExtender ID="calendario3" PopupButtonID="imgDTPCierre" TargetControlID="DTP_FCierre" runat="server" Format="dd/MM/yyyy" Enabled="false" />
                                
                            </div>


                              
                        </div>
                    </div>


                </div>
            </div>

        </div>

<%------------------------------------------------fin colapse 1 informacion------------------------------------------------------------------%>

  

<%-------------------------------------Inicio Colapse 2 detalle de caso-------------------------------------------------------------------------------%>

        <div class="rowsPanel panel panel-primary">

            <div class="panel-heading" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapseExample">
                Detalle del Caso:</div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse2">
                    <div class="well">


                        <div class="row">
                            <div class="col-md-6">

                               <%-- <div class="form-group">
                                    <label for="TXT_TipoServicio">Tipo Servicio:</label>
                                    <asp:TextBox ID="TXT_TipoServicio" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>--%>


                            
                                <div class="form-group">
                                    <asp:UpdatePanel ID="UDP_TipoCausa" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <label for="CMB_Tipo">Tipo de caso:</label>
                                    <asp:DropDownList ID="CMB_Tipo" Enabled="false" class="form-control" runat="server" Autopostback="true"  OnSelectedIndexChanged="CMB_Tipo_SelectedIndexChanged">
                                       <%-- <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                        <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>--%>
                                    </asp:DropDownList>
                                    </ContentTemplate>
                             </asp:UpdatePanel>
                                </div>
                                


                                <div class="form-group">
                                    <asp:UpdatePanel ID="UDP_Causas" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <label for="CMB_Causa">Causa:</label>
                                    <asp:DropDownList ID="CMB_Causa" class="form-control" runat="server" Enabled="false" >
                                  <%--      <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                        <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>--%>
                                    </asp:DropDownList>
                                    </ContentTemplate>
                                        </asp:UpdatePanel>
                                </div>

                            

                                <div class="form-group">
                                    <label for="TXT_SolicitadoPor">Solicitado Por:</label>
                                    <asp:TextBox ID="TXT_SolicitadoPor" class="form-control" runat="server" MaxLength="50"
                                        onkeydown="return (event.keyCode!=13);" ReadOnly="true"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label for="TXT_Referencia">Referencia:</label>
                                    <asp:TextBox ID="TXT_Referencia" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);" ReadOnly="true"></asp:TextBox>
                                </div>

                                Daño Reportado:
                                 <asp:TextBox ID="TXT_DañoReportado" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" ReadOnly="true"></asp:TextBox>

                            </div>

                            <div class="col-md-6">
                                Trabajo Realizado:
                                <asp:TextBox ID="TXT_TrabajoRealizado" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" ReadOnly="true"></asp:TextBox>
                                <br />
                                Repuestos o Insumos:
                                <asp:TextBox ID="TXT_RepuestosInsumos" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

        </div>
<%--------------------------------------Fin colapse 2 detalle de caso----------------------------------------------------------------------------------------%>

      

<%----------------------------------Inicio Panel 3 Notas------------------------------------------------------------------------------%>

           

   <div id ="MenuNotas" class="rowsPanel panel panel-primary">
              
          
             <div class="panel-heading" data-toggle="collapse" data-target="#collapse3">
                Seguimiento<span class="icon-chevron-small-down rightBar"></span> :</div>



            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse3">
                    <div class="well">
                        <asp:UpdatePanel ID="UpdatePanelseguimiento" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <%--<asp:Button ID="btn_nuevanota" runat="server" Text="Nueva Nota" CssClass="btn btn-default" OnClientClick="limpiarmodal();abrirmodalnotas();return false;" />--%><br />
                                <br />

                                <asp:GridView ID="DGVNota" runat="server" Width="100%" DataKeyNames="ID_Nota"
                                    Font-Size="9pt" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="4"
                                    AutoGenerateColumns="False" ForeColor="Black" GridLines="Horizontal">
                                    <Columns>

                                        <asp:BoundField DataField="ID_Nota" HeaderText="" ItemStyle-Width="60"
                                            ItemStyle-CssClass="ID_Nota">
                                            <ItemStyle CssClass="ID_Nota" ForeColor="White" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="dFechaIngreso" HeaderText="Fecha" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg" />
                                        <asp:BoundField DataField="sQuienIngreso" HeaderText="Usuario" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg" />

                                        <asp:BoundField DataField="Titulo" HeaderText="Titulo" ItemStyle-CssClass="Titulo">
                                            <ItemStyle CssClass="Titulo" />
                                        </asp:BoundField>

                                        <asp:BoundField DataField="Nota" HeaderText="Nota" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg"></asp:BoundField>
                                        <asp:BoundField DataField="Estado" HeaderText="Estado" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg" />
                                        <asp:BoundField DataField="Tipo" HeaderText=""
                                            ItemStyle-CssClass="Tipo">
                                            <ItemStyle CssClass="Tipo" ForeColor="White" />
                                        </asp:BoundField>
                                        <%-- <asp:BoundField DataField="CMDResponder_Nota" HeaderText="Responder"  />--%>

                                        <%--<asp:TemplateField>
                                            <ItemTemplate>
                                                <%--<asp:LinkButton ID="Responder" runat="server"  >Responder</asp:LinkButton>--%>
                                                <%--<a id="Responder" href="javascript:void(0)" onclick="return abrirmodalnotas();">Responder</a>--%>

                                                <%--<input type="button" style="width: 50px;" id="Responder" 
                                                                     onclick="abrirmodalnotas();" value='<%# Eval("ID_Nota") %>' />--%>
                                           <%-- </ItemTemplate>--%>
                                       <%-- </asp:TemplateField>--%>
                                        <%-- <asp:HyperLinkField HeaderText="Responder" Text='Responder'   />--%>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#cccccc" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>


                                <%--<input type="button" id="btn_nuevanota" value="Nueva Nota" onclick="limpiarmodal();abrirmodalnotas();" />--%>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>

<%-----------------------------------Fin panel 3 Notas--------------------------------------------------------------------------------%>

     
<%-----------------------------------Inicio panel 4 adjuntos-------------------------------------------------------------%>


              <div id="MenuAdjuntos" class="rowsPanel panel panel-primary">

             <div class="panel-heading" data-toggle="collapse" data-target="#collapse4">
                Archivos Adjuntos<span class="icon-chevron-small-down rightBar"></span> :</div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse4">
                    <div class="well">



                        <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <%--<asp:Button ID="btn_newAdj" runat="server" Text="Nuevo" CssClass="btn btn-default" OnClientClick="openPopAdjunto();return false;" />--%> <%--OnClientClick="openPopAdjunto();return false;" --%>


                                <asp:LinkButton ID="btn_descargarAdj" runat="server" Visible="false" CssClass="btn btn-default" OnClick="btn_descargarAdj_Click">
                                                       <span class="glyphicon glyphicon-download-alt"></span>&nbsp;Descargar
                                </asp:LinkButton>

                                <%--<asp:LinkButton ID="btn_visualizar" runat="server" Visible="false" OnClick="btn_visualizar_Click" CssClass="btn btn-default" OnClientClick="return activarloading();">
                                                   <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Visualizar
                                </asp:LinkButton>--%>

                                <asp:LinkButton ID="CMDCancelar" runat="server" Visible="false" OnClick="CMDCancelar_Click" CssClass="btn btn-default">
                                                   <span class="glyphicon glyphicon-pushpin"></span>&nbsp;Desmarcar
                                </asp:LinkButton>


                            </ContentTemplate>
                            <Triggers>
                                <asp:PostBackTrigger ControlID="btn_descargarAdj" />
                                <%--<asp:PostBackTrigger ControlID="CMDCancelar" />   --%>
                            </Triggers>
                        </asp:UpdatePanel>
                        <br />


                        <asp:UpdatePanel ID="UPAdjunto" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <asp:GridView ID="DGV_Adjuntos" DataKeyNames="IDLinea,Extension,NombreDocumento" Width="100%" runat="server"
                                    AutoGenerateColumns="False" CssClass="table tabler"
                                    CaptionAlign="Left" Font-Size="Small"
                                    BorderColor="#DAD9D8" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="2"
                                    OnRowCancelingEdit="DGV_Adjuntos_RowCancelingEdit"
                                    OnRowEditing="DGV_Adjuntos_RowEditing"
                                    OnRowUpdating="DGV_Adjuntos_RowUpdating"
                                    OnRowDataBound="DGV_Adjuntos_RowDataBound"
                                    OnRowDeleting="DGV_Adjuntos_RowDeleting"
                                    OnPreRender="DGV_Adjuntos_PreRender"
                                    OnSelectedIndexChanged="DGV_Adjuntos_SelectedIndexChanged">
                                    <Columns>

                                        <asp:TemplateField HeaderText="Nombre Documento">
                                            <ItemTemplate>
                                                <asp:Label ID="LBL_NombreDocumento" runat="server" Text='<%#Eval("NombreDocumento") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TXT_NombreDocumento" runat="server" MaxLength="99" Enabled="false" Text='<%#Eval("NombreDocumento") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Comentario">
                                            <ItemTemplate>
                                                <asp:Label ID="LBL_Observaciones" runat="server" Text='<%#Eval("Observaciones") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TXT_Observaciones" runat="server" CssClass="form-control" MaxLength="199" Text='<%#Eval("Observaciones") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Extension" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" >
                                            <ItemTemplate>
                                                <asp:Label ID="LBL_Ext" runat="server" Text='<%#Eval("Extension") %>'></asp:Label>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TXT_ext" runat="server" MaxLength="199" Enabled="false" Text='<%#Eval("Extension") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>

                                        <%-- <asp:BoundField DataField="NombreDocumento"  HeaderText="Nombre del documento"/>
                                                          <asp:BoundField DataField="Observaciones" HeaderText="Comentario"/>
                                        --%>

                                        <asp:TemplateField  ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btn_Edit" runat="server" CommandName="Edit" ToolTip="Editar" Style="text-decoration: none; color: #0094ff;" CssClass="btn btn-default">
                                                                                          <span class="glyphicon glyphicon-cog"></span>
                                                </asp:LinkButton>
                                            </ItemTemplate>
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="btn_Update" runat="server" CommandName="Update" ToolTip="Actualizar" Style="text-decoration: none; color: #05b724;" CssClass="btn btn-default">
                                                                                             <span class="glyphicon glyphicon-ok"></span>
                                                </asp:LinkButton>

                                                <asp:LinkButton ID="btn_Cancel" runat="server" CommandName="Cancel" ToolTip="Cancelar Edición" Style="text-decoration: none; color: #ff0000;" CssClass="btn btn-default">
                                                                                             <span class="glyphicon glyphicon-remove"></span>
                                                </asp:LinkButton>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <asp:LinkButton ID="lnkDelete" runat="server" Style="text-decoration: none; color: #ff0000;" ToolTip="Eliminar"
                                                    OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                    CssClass="btn btn-default" CommandName="Delete">
                                                                                    <span class="glyphicon glyphicon-trash"></span>
                                                </asp:LinkButton>

                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                    <HeaderStyle BackColor="#D8D8D8" Font-Bold="True" ForeColor="#000" />
                                    <RowStyle ForeColor="#000000" />
                                    <SelectedRowStyle BackColor="LightGray" ForeColor="#000" Font-Bold="true" />

                                </asp:GridView>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>
         
<%------------------------------------Fin panel 4 adjuntos------------------------------------------------------------------%>
        

<%----------------------------------panel costos-------------------------------------------------------%>
        <div class="rowsPanel panel panel-primary">

            <div class="panel-heading" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapseExample">
                Control Seguimiento Muestreo:
                <span class="icon-chevron-small-down rightBar"></span>
                :</div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse5">
                    <div class="well">

                        <br />
                        <div class="row">
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="CMB_Status">Estatus:</label>
                                    <asp:DropDownList ID="CMB_Status" class="form-control" runat="server">
                                        <asp:ListItem Value="Execelente">Excelente</asp:ListItem>
                                        <asp:ListItem Value="Bueno">Bueno</asp:ListItem>
                                        <asp:ListItem Value="Regular">Regular</asp:ListItem>
                                        <asp:ListItem Value="Deficiente">Deficiente</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                             </div>
                             </div>

                        <div class="row">
                            <div class="col-md-12">

                                <div class="form-group">
                                   <%-- <label for="TXT_Comentario">Comentario:</label>
                                    <asp:TextBox ID="TXT_Comentario" class="form-control" runat="server" MaxLength="50"
                                        onkeydown="return (event.keyCode!=13);"></asp:TextBox>--%>


                                    Comentarios Cliente:
                                <asp:TextBox ID="TXT_Comentario" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>

                                </div>
                            
                                 </div>
                             </div>

                            
                        
                    </div>


                </div>
            </div>

        </div>

<%-------------------------------------------------fin panel costos-------------------------------------------------%>


               <div class=" footerControles">
                    <div class =" main container" style="background-color: rgba(0,0,0,.6); border: 0; padding: 3px; text-align: center; overflow:hidden;">

                <table class="trans_table">
                    <tr>
                        <td align="center">

                            <asp:Button ID="CMD_Guardar" runat="server" Text="Guardar" OnClick="CMD_Guardar_Click" OnClientClick="return validar();" CssClass="btn btn-success" />

                            <asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado" OnClick="CMD_Salir_Click" CssClass="btn btn-default active" />

                 <asp:Label ID="LBL_OpcionCliente" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_OpcionContacto" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_CodCliente" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_CodClienteEntrega" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>

                        </td>
                    </tr>
                </table>

                    </div>
                </div>










    <!-- base semi-transparente -->
    <div id="fade" class="overlay" onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none'"></div>
    <!-- fin base semi-transparente -->


    <div id="popmsj" class="popupnotificacion">
        <a title="Cerrar" class="close" id="cerrarp" href="javascript:void(0)" onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
        <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
        <div style="text-align: center;">
            <label id="lblmsj" style="font-weight: 200;"></label>
            <br />
            <a title="Cerrar" class="closeok" id="cerrar2" href="javascript:void(0)"
                onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">Aceptar</a>
        </div>

    </div>






 




    <%------------------------------inicio popop notas--------------------------------------------%>

                                      <button type="button" id="btn_FormNotas" data-toggle="modal" data-target="#FormNotas" style="visibility:hidden;">open</button>


                                          <div class="modal fade" id="FormNotas" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">
                                            
                                              <div class="modal-dialog modal-sm" >
                                                <div class="modal-content">
                                                  <div class="modal-header">
                         
                                                    <h3 class="modal-title" id="exampleModalLabel913">
                                                         <label id="titulomodalnotas"></label> 
                                                    </h3>
                       
                                                  </div>
                                                  <div class="modal-body">
                                                       
                                                      <asp:UpdatePanel ID="upNotas" runat="server" >
                                                        <ContentTemplate>


                                                      <asp:HiddenField ID="TXTTituloNotahd" runat="server" Value="" />
                                                      <asp:HiddenField ID="TXTTipo" runat="server" Value="" />
                                                           
                                                            <div class="row">
                                                                 <div class="col-md-12">
                                                                      <div class="form-group">
                                                                            <label for="TXTTituloNota">Titulo:</label> 
                                                                            <asp:TextBox ID="TXTTituloNota" runat="server" MaxLength="99"></asp:TextBox>
                                                                      </div>
                                                                     <div class="form-group">
                                                                          <asp:CheckBox ID="CHKEstado" runat="server" />
                                                                            <label for="CHKEstado">Incluir como pendiente</label>
                                                                           
                                                                      </div>
                                                                      <div class="form-group">
                                                                            <label for="TXTContenidoNota">Contenido de la nota:</label>
                                                                            <asp:TextBox ID="TXTContenidoNota" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="400" ></asp:TextBox>
                                                                      </div>
                                                                     
                                                                 </div>
                                                               
                                                            </div> 
                                                             <table class="trans_table" >
                                                                <tr >
                                                                    <td colspan="3" align="center" >
                                                                         <asp:Button ID="CMDActualizarNota" runat="server" CssClass="btn btn-success" Text="Incluir Respuesta" OnClick="CMDActualizarNota_Click" OnClientClick="return validarmodalnotas();"  />&nbsp;
                                                                         <asp:Button ID="CMDIncluirNota" runat="server" CssClass="btn btn-success" Text="Incluir Nota" OnClick="CMDIncluirNota_Click" OnClientClick="return validarmodalnotas();" />&nbsp;
                                                                         </td>
                                                                </tr>
                                                             </table> 
                                                              
                                                        </ContentTemplate>
                                                      </asp:UpdatePanel>

                                                  </div>
                                                  <div class="modal-footer">
                            
                                                       <asp:Button ID="BTNCerrar" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                                                  </div>
                                                </div>
                                              </div>
                                           
                                          </div>
                           
<%-----------------------------------------------fin popop notas-------------------------------------------------------------------%>




<%------------------------inicio popop adjuntos--------------------------------------%>








      <div id="popImagen" style="display: none;">
            <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="lbl_Linea" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:Label ID="lbl_Ext" runat="server" Text="" Visible="false"></asp:Label>
                    <asp:Label ID="lbl_Filename" runat="server" Text="" Visible="false"></asp:Label>

                    <asp:Image ID="imageArchivo" runat="server" Width="730" Height="500" /><br />
                    <br />

                    <div style="float: right">

                        <asp:LinkButton ID="CMD_Cerrarimg" runat="server" CssClass="btn btn-default" OnClick="CMD_Cerrarimg_Click">
                      Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                        </asp:LinkButton>

                    </div>


                </ContentTemplate>

            </asp:UpdatePanel>
        </div>

       

         <button type="button" id="btn_popAdjunto" data-toggle="modal" data-target="#popAdjunto" style="visibility:hidden;">open</button>

        
             <div class="modal fade" id="popAdjunto" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">

                  <asp:UpdatePanel ID="UPPAdjunto" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel23">Adjunto</h3>
                       
                      </div>
                      <div class="modal-body">
                              <%-- Modulo:--%>
                               <asp:TextBox ID="TXT_Modulo" runat="server" Enabled="false" Visible="false"></asp:TextBox>
                                <asp:HiddenField ID="TXT_IDModulo" runat="server" Value="" />
                         <%-- <br />--%>
                          Tipo documento: <asp:DropDownList ID="TXTNombreDocumento" class="form-control" runat="server">
                                    <asp:ListItem Value="Factura">Contrato asesor</asp:ListItem>
                                    <asp:ListItem Value="Defecto Productos">Contrato asesor cliente</asp:ListItem>
                               <%--     <asp:ListItem Value="Contrato diseñador">Contrato diseñador</asp:ListItem>
                                    <asp:ListItem Value="Definitivo fabrica">Definitivo fabrica</asp:ListItem>
                                    <asp:ListItem Value="Boleta terminación">Boleta terminación</asp:ListItem>
                                    <asp:ListItem Value="Memorandum">Memorandum</asp:ListItem>--%>
                                </asp:DropDownList>
                          Observaciones:
                           <asp:TextBox ID="TXTObservaciones" class="form-control" runat="server" MaxLength="299"
                                    TextMode="MultiLine" Rows="10"></asp:TextBox>
                          Archivo:<asp:FileUpload ID="btnExaminar" runat="server" accept="image/*" multiple="false" />

                      </div>
                      <div class="modal-footer">
                             <asp:LinkButton ID="btnguardarArchivo" runat="server" CssClass="btn btn-success" OnClick="btnguardarArchivo_Click" OnClientClick="return activarloading();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                                </asp:LinkButton>&nbsp;

                                        <%-- <asp:LinkButton ID="CMD_Cerrar" runat="server" CssClass="btn btn-default" OnClientClick="return  $('#popAdjunto').dialog('close');return false;">
                                               Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                                         </asp:LinkButton>--%>
                           <asp:Button ID="Button2" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                      </div>
                    </div>
                  </div>
                     </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnguardarArchivo" />
                </Triggers>
            </asp:UpdatePanel>
            </div>


<%--    ---------------------------------------fin popop Adjuntos-------------------------------------------%>



    
</asp:Content>