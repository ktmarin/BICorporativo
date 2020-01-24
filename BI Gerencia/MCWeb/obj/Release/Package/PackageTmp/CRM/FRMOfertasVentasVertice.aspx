<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMOfertasVentasVertice.aspx.cs" 
    Inherits="MCWebHogar.CRMVertice.FRMOfertasVentasVertice"  EnableEventValidation="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %> 

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <script type="text/javascript">

        $(function () {
           
            $(document).on("click", "[id*=subnav]", function () {
               $(this).children('.children').slideToggle();
            });

            //$('#cerrarp').click(function () {
            //    $("#divCompleto").removeClass("bloqueo");
            //});
            //$('#cerrar2').click(function () {
            //    $("#divCompleto").removeClass("bloqueo");
            //});
           

            $('#CMD_AbrirAdjunto').click(function () {
                var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
                if (oferta.length == 0 || oferta == "#") {
                    alertar('No existe una oferta seleccionada en este momento');
                    return false;
                } else {
                    document.getElementById('<%= TXTNombreDocumento.ClientID %>').value = '';
                    document.getElementById('<%= TXTObservaciones.ClientID %>').value = '';
                    $('#popAdjunto').dialog('open');
                 }

            });

            

           <%-- $('#CMDCargarProductoPCGraf').click(function () {
                var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
                if (oferta.length == 0 || oferta == "#") {
                    alertar('No existe una oferta seleccionada en este momento');
                    return false;
                } else {
                    //alert('llego');
                    $('#popCargarProductoPCG').dialog('open');
                   
                }

            });--%>

            

            <%-- $('#CMD_DatosOferta').click(function () {
                var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
                if (oferta.length == 0 || oferta == "#") {
                    alertar('No existe una oferta seleccionada en este momento');
                    return false;
                } else {
                    
                    $('#popCargarPedidoPCG').dialog('open');
                }

            });--%>

            $('#popFoto_HTI').dialog({
                autoOpen: false,
                modal: true,
                width: 400,
                height: 300,
                title: 'Adjuntar Documento',
                buttons: {
                    "Cerrar": function () {

                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");

                }
            });

            $('#popClientes').dialog({
                autoOpen: false,
                modal: true,
                width: 600,
                height: 500,
                title: 'Buscar Clientes',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            
            $('#popNewAdjunto').dialog({
                autoOpen: false,
                modal: true,
                width: 600,
                height: 400,
                title: 'Nuevo Adjunto',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popAsesor').dialog({
                autoOpen: false,
                modal: true,
                width: 500,
                height: 500,
                title: 'Buscar Asesor',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popSupervisor').dialog({
                autoOpen: false,
                modal: true,
                width: 500,
                height: 500,
                title: 'Buscar Supervisor',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popDetalleFacturacion').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                height: 500,
                title: 'Detalle Facturación',
                buttons: {
                    "Cerrar": function () {
                        
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                   
                }
            });
            
            $('#popBitacora').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                height: 500,
                title: 'Bitacora de cambios en Oferta economica',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popContactos').dialog({
                autoOpen: false,
                modal: true,
                width: 700,
                Height: 500,
                title: 'Información del Contacto',
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

            $('#popProyectos').dialog({
                autoOpen: false,
                modal: true,
                width: 500,
                height: 500,
                title: 'Buscar proyectos por contrato',
                buttons: {
                    "Cerrar": function () {
                        // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

           


            $('#popImagen').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                Height: 600,
                title: '',
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
            
            $('#popCargarPedidoPCG').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                Height: 400,
                title: 'Cargar Pedido de PC Graf',
                buttons: {
                    "Cerrar": function () {
                       // document.getElementById('popCargarPedidoPCG').style.display = "none";
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popCargarProductoPCG').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                heigth: 400,
                title: 'Cargar Productos de PC Graf',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popFormBodega').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                Height: 400,
                title: 'Bodega',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popContacto').dialog({
                autoOpen: false,
                modal: true,
                width: 700,
                Height: 200,
                title: 'Buscar Clientes',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });
            
            $('#popCampana').dialog({
                autoOpen: false,
                modal: true,
                width: 800,
                Height: 500,
                title: 'Campañas',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });
     

            $('#popAdjunto').dialog({
                autoOpen: false,
                modal: true,
                width: 980,
                Height: 600,
                title: 'Gestor de Archivos',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                   // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            $('#popFacturacion').dialog({
                autoOpen: false,
                modal: true,
                width: 880,
                Height: 700,
                title: 'Adjuntar documentos',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

            
            $('#popImpresionDisenos').dialog({
                autoOpen: false,
                modal: true,
                width: 880,
                Height: 500,
                title: '',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                   
                }
            });


            $('#popImpresion').dialog({
                autoOpen: false,
                modal: true,
                width: 400,
                Height: 300,
                title: 'Formularios de Impresion',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                    // $("[id*='CMD_SearchProdPcgraf']").click();
                    //$('#TXT_FiltroProducto').focus();
                }
            });

        });

        function sub() {

        }

        function activarver() {

            var isDisabled = $('#Content_TXTOferta').prop('disabled');
            //alert(isDisabled);
            if ( ! isDisabled) {
                activarloadmail();
            } 

        }



        function dgv_soloNumeros(e, t) {
            if (e.keyCode == 13) {
                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridOfertEco', 'Update$' + i);
            }
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 13)
        }

        function dgv_soloNumerosCP(e, t) {
            if (e.keyCode == 13) {
                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridOfertEco', 'Update$' + i);
            }

            var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57 || key == 46 || key == 13)
        }

        function dgv_update(e, t) {
            if (e.keyCode == 13) {

                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridOfertEco', 'Update$' + i);

            }
        }
        

        function activarOK_Asesor(e) {
            if (e.keyCode == 13) {
                __doPostBack('ctl00$Content$CMD_buscarAsesor', '');
            }
        }

        function activarOK_cliente(e) {
            if (e.keyCode == 13) {
                __doPostBack('ctl00$Content$CMD_SearchCliente', '');
            }
        }

        function activarOK_supervisor(e) {
            if (e.keyCode == 13) {
                __doPostBack('ctl00$Content$CMD_buscarSupervisor', '');
            }
        }


        /****************/

        function dgvsoloNumerosCP(e, t) {
            if (e.keyCode == 13) {
                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridPlan', 'Update$' + i);
            }

            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 46 || key == 13)
        }

        function validanumeroupdate(e,t) {

            if (e.keyCode == 13) {
               
                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridPlan', 'Update$' + i);
               
            }

            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 13)

        }

        function dgvupdate(e, t) {
            if (e.keyCode == 13) {

                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridPlan', 'Update$' + i);

            }
        }

        function dgvupdatecalendar(e, t) {
            if (e.keyCode == 13) {

                var id = t.id.split("_");
                var i = id[4];
                __doPostBack('ctl00$Content$DataGridPlan', 'Update$' + i);

            } else {
               // return false;
            }
        }

        function activarloadmail() {
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';
           
        }

        function desactivarloadmail(){

            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
           return false;
        }


        function cerrarImpresion() {
            $('#popImpresionDisenos').dialog('close');

            mostraralertifysuccess('Cargando reporte, por favor espere...');
        }

        function abrirReporte() {
            $('#popImpresionDisenos').dialog('close');
            var parameters = 'width=1100,height=600,top=50,left=50,scrollbars=1,resizable=0,status=0';
            var popup_PrintVoucher;

            popup_PrintVoucher = window.open('/Reportes/FRMReportes.aspx');
            popup_PrintVoucher.focus();
        }

        function openadjuntos() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                   document.getElementById('<%= TXTNombreDocumento.ClientID %>').value = '';
                    document.getElementById('<%= TXTObservaciones.ClientID %>').value = '';
                $('#popAdjunto').dialog('open');
                return false;
             }
        }

        

        function abrirpopDetalleFacturacion() {
            $('#popDetalleFacturacion').dialog('open');
        }
        function cerrarpopDetalleFacturacion() {
            $('#popDetalleFacturacion').dialog('close');
        }


        function abrirFacturacion() {
            $('#popFacturacion').dialog('open');
        }
        function cerrarFacturacion() {
            $('#popFacturacion').dialog('close');
        }

        function abrirImpresion() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                $('#popImpresion').dialog('open');
                return false;
            }
            
        }

        function openbitacora() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                //alert('llego');
                $('#popBitacora').dialog('open');

            }  
        }

        
        function loadingdisenosON() {
            document.getElementById('imgLoadingdisenos').style.display = 'block';
        }

        function loadingdisenosOFF() {
            document.getElementById('imgLoadingdisenos').style.display = 'none';
        }


        function ClearControls() {
            document.getElementById('<%= Pedido_Generado.ClientID %>').value = '';
            document.getElementById('<%= Fecha_Bloqueo.ClientID %>').value = '';
            document.getElementById('<%= QuienBloqueo.ClientID %>').value = '';
            document.getElementById('<%= DTPFechaInstalacionh.ClientID %>').value = '';

            document.getElementById('<%= txtcambiodolares.ClientID %>').value = '';
            document.getElementById('<%= txtcambiopedidodolares.ClientID %>').value = '';
            document.getElementById('<%= txtcambiomonedapedido.ClientID %>').value = '';
            document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '';
            document.getElementById('<%= txtcambioplan.ClientID %>').value = '';


            for (i = 0; i < document.forms[0].length; i++) {
                doc = document.forms[0].elements[i];
                switch (doc.type) {
                    case "text":
                        doc.value = "";
                        break;
                    case "checkbox":
                        doc.checked = false;
                        break;
                    case "radio":
                        doc.checked = false;
                        break;
                    case "select-one":
                        //doc.options[doc.selectedIndex].selected = false;
                        break;
                    case "select-multiple":
                        while (doc.selectedIndex != -1) {
                            indx = doc.selectedIndex;
                            doc.options[indx].selected = false;
                        }
                        doc.selected = false;
                        break;

                    default:
                        break;
                }
            }
        }


        function validacampos(){
            
            var TXTcodigoAsesor = document.getElementById('<%= TXTcodigoAsesor.ClientID %>').value;
            TXTcodigoAsesor = TXTcodigoAsesor.trim();
            var TXTAsesor = document.getElementById('<%= TXTAsesor.ClientID %>').value;
            TXTAsesor = TXTAsesor.trim();
            var TXTSuperv = document.getElementById('<%= TXTSuperv.ClientID %>').value;
            TXTSuperv = TXTSuperv.trim();
            var TXTCodSuper = document.getElementById('<%= TXTCodSuper.ClientID %>').value;
            TXTCodSuper = TXTCodSuper.trim();
            // var = document.getElementById('<%= DTFecha.ClientID %>').value ;

            var TXTOferta = document.getElementById('<%= TXTOferta.ClientID %>').value;
            TXTOferta = TXTOferta.trim();
            var TXTCliente = document.getElementById('<%= TXTCliente.ClientID %>').value;
            TXTCliente = TXTCliente.trim();
            var TXTCodCliente = document.getElementById('<%= TXTCodCliente.ClientID %>').value;
            TXTCodCliente = TXTCodCliente.trim();

            var CMBMedioCreacion = document.getElementById('<%= CMBMedioCreacion.ClientID %>');
            var CMBProvincia2 = document.getElementById('<%= CMBProvincias.ClientID %>');
            var CMBCondicion2 = document.getElementById('<%= CMBCondicion.ClientID %>');

            if (TXTOferta.length == 0  ) {
                //alertar('Debe completar toda la informacion!');
                mostraralertifyerror('Por favor ingresar la descripción del proyecto');
                return false;
            }

            if (TXTCliente.length == 0 || TXTCodCliente.length == 0 ) {
                mostraralertifyerror('Por favor escribir el nombre del cliente y el sistema de asignará el codigo automaticamente.');
                return false;
            }

            if (TXTcodigoAsesor.length == 0 || TXTAsesor.length == 0 ) {
                mostraralertifyerror('Por favor escribir el nombre del asesor y el sistema de asignará el codigo automaticamente.');
                return false;
            }
            if ( TXTSuperv.length == 0 || TXTCodSuper.length == 0 ) {
                mostraralertifyerror('Por favor escribir el nombre del supervisor y el sistema de asignará el codigo automaticamente.');
                return false;
            }

            if (CMBMedioCreacion.selectedIndex == 0 ) {
                mostraralertifyerror('Debe seleccionar el medio de contacto');
                return false;
            }
            if (CMBProvincia2.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar la provincia');
                return false;
            }
            if (CMBCondicion2.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar la condición');
                return false;
            }

        }


        function limpiarcampos() {
            document.getElementById('<%= TXTSubEspecial.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTSubLista.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTTotalEspecial.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTTotalLista.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTImptLista.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTImptEspecial.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTExento.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTDescuento.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTExentoEspecial.ClientID %>').value = '0.00';
            document.getElementById('<%= TXTOfertaMadre.ClientID %>').value = '';

            document.getElementById('<%= TXTContacto1.ClientID %>').value = '';
            document.getElementById('<%= TXTtel1.ClientID %>').value = '';
           <%-- document.getElementById('<%= TXTCelular1.ClientID %>').value = '';--%>
            document.getElementById('<%= TXTEmail1.ClientID %>').value = '';
            document.getElementById('<%= TXTPuesto1.ClientID %>').value = '';

            document.getElementById('<%= TXTContacto2.ClientID %>').value = '';
            document.getElementById('<%= TXTtel2.ClientID %>').value = '';
           <%-- document.getElementById('<%= TXTCelular2.ClientID %>').value = '';--%>
            document.getElementById('<%= TXTEmail2.ClientID %>').value = '';
            document.getElementById('<%= TXTPuesto2.ClientID %>').value = '';
            
            document.getElementById('<%= TXTCompetencia.ClientID %>').value = '';
            document.getElementById('<%= TXTcodigoAsesor.ClientID %>').value = '';
            document.getElementById('<%= TXTAsesor.ClientID %>').value = '';
            document.getElementById('<%= TXTAsesorh.ClientID %>').value = '';
            document.getElementById('<%= TXTSuperv.ClientID %>').value = '';

            document.getElementById('<%= TXTCodSuper.ClientID %>').value = '';
            document.getElementById('<%= TXTProyecto.ClientID %>').value = '';
            document.getElementById('<%= DTFecha.ClientID %>').value = '';
            document.getElementById('<%= TXTOferta.ClientID %>').value = '';
            document.getElementById('<%= TXTCliente.ClientID %>').value = '';
            document.getElementById('<%= TXTCodCliente.ClientID %>').value = '';

            document.getElementById('<%= Pedido_Generado.ClientID %>').value = '';

            

        }



        function agregarlinea() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } 
        }

        function openNewadj() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                //alert('llego');
                $('#popNewAdjunto').dialog('open');

            }
            
        }

        function opencargaproducto() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                //alert('llego');
                $('#popCargarProductoPCG').dialog('open');
                $('#Content_txtfiltrocodigoproducto').focus();
            }
            return false;
        }

        function openformpedidos() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {

                $('#popCargarPedidoPCG').dialog('open');
                $('#Content_txt_searchpedido').focus();
            }
            return false;
        }

        function cerrarpopcargarpedidopcgraf() {
            $('#popCargarPedidoPCG').dialog('close');
        }


        
        function abrirformbodega() {
            <%--var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {--%>

                $('#popFormBodega').dialog('open');
            //}
            return false;
        }
        function openpopFoto_HTI() {
            $('#popFoto_HTI').dialog('open');
            return false;
        }

        function closepopFoto_HTI() {
            $('#popFoto_HTI').dialog('close');
        }


        function openpopNewAdjunto() {
            $('#popNewAdjunto').dialog('open');
            return false;
        }

        function closepopNewAdjunto() {
            $('#popNewAdjunto').dialog('close');
        }

        function openpopclientes() {
           
            $('#popClientes').dialog('open');
            $('#Content_TXT_searchcliente').focus();
            //return false;
        }

        function closepopclientes() {
            $('#popClientes').dialog('close');
        }

        function openpopAsesor() {
            $('#popAsesor').dialog('open');
            $('#Content_txt_filtroAsesor').focus();
            //return false;
        }

        function closepopAsesor() {
            $('#popAsesor').dialog('close');
        }

        function openpopSupervisor() {
            $('#popSupervisor').dialog('open');
            $('#Content_txt_filtroSupervisor').focus();
            //return false;
        }

        function closepopSupervisor() {
            $('#popSupervisor').dialog('close');
        }

        function abrirformcontacto() {
            
              $('#popContacto').dialog('open');
              return false;
        }

        function cerrarPopContacto() {
            $('#popContacto').dialog('close');
        }

        function cerrarPopCampana() {
            $('#popCampana').dialog('close');
        }

        function cerrarpopbodega() {   
            $('#popFormBodega').dialog('close');
        }

        function openPopProyecto() {
            $('#popProyectos').dialog('open');
            return false;
        }
        function cerrarPopProyectos() {
            $('#popProyectos').dialog('close');
        }
        

        function cerrarformproducto() {
            $('#popCargarProductoPCG').dialog('close');
            mostraralertifysuccess('Se agregó el Producto, Cuando se le asigne la bodega se le refresca el precio.');

        }

        
        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return (( key >= 48 && key <= 57 ) || key == 32)
        }

        function soloNumerosCP(e) {
            var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57 || key == 46)
        }

        //function soloNumerosycoma(e) {
        //    var key = window.Event ? e.which : e.keyCode
        //    return (key >= 48 && key <= 57 || key == 44)
        //}

        
        function doclick() {
            __doPostBack('Btn_Buscar', '');
        }

        function detour(e) {
            var key = window.Event ? e.which : e.keyCode
            if (key == 13) {
                doclick();
            }
        }


        function abrirModalAdjunto() {

            document.getElementById('fade').style.display = 'block';
            document.getElementById('popAdjunto').style.display = 'block';

            return false;
        }

        function limpiarpopnuevocontacto() {
            document.getElementById('<%= TXT_NombreContacto.ClientID %>').value = '';

            document.getElementById('<%= TXT_Departamento.ClientID %>').value = '';
            document.getElementById('<%= TXT_Correo.ClientID %>').value = '';
            document.getElementById('<%= TXT_Telefono.ClientID %>').value = '';
            document.getElementById('<%= TXT_Celular.ClientID %>').value = '';
            document.getElementById('<%= TXT_Observaciones.ClientID %>').value = '';

            document.getElementById('<%= TXT_IDContacto.ClientID %>').value = ''; 
        }

        function openPopCrearContacto() {
            $('#popContactos').dialog('open');
            return false;
        }

        function cerrarPopCrearContacto() {
            $('#popContactos').dialog('close');
        }

        function cerrarabrir() {
            $('#popImpresion').dialog('close');
            $('#popImpresionDisenos').dialog('open');
        }



        function nuevoadjunto() {
            
        }

        function abrircampana() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                $('#popCampana').dialog('open');
                return false;
            }
        }

        function validaduplicar() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                var respuesta = confirm("Desea duplicar esta oferta?");
                if (respuesta != true) {
                    return false;
                }
            }

            
        }


        function validarliberar() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            } else {
                var respuesta = confirm("Desea liberar esta oferta?");
                if (respuesta != true) {
                    return false;
                }
            }
            
        }


        function validamadre() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;
            if (oferta.length == 0 || oferta == "#") {
                alertar('No existe una oferta seleccionada en este momento');
                return false;
            }
        }

        function validarcrearpedidopcg() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;

            if (oferta.length == 0 || oferta == "#") {
                alertar('Ingrese la informacion basica del nuevo contrato y luego presione el boton incluir para poder ingresar el plan de pago.');
                return false;
            } else {
                var respuesta = confirm("Desea generar un pedido en el pc Graf?");
                if (respuesta != true) {
                    return false;
                } 
            }

        }

        function validarverificardisponibles() {
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;

            if (oferta.length == 0 || oferta == "#") {
                alertar('Ingrese la informacion basica del nuevo contrato y luego presione el boton incluir para poder ingresar el plan de pago.');
                return false;
            }
        }

        function validaAdjuntoFHTI() {
            var btn = document.getElementById('<%= fluFoto_HTI.ClientID %>').value;

            if (btn.length == 0) {
                mostraralertifyerror('Debe adjuntar un archivo.');
                return false;
            }

            activarloadmail();
        }
        


        function validaAdjunto() {

            var TXTNombreDocumento = document.getElementById('<%= TXTNombreDocumento.ClientID %>').value.trim();
            TXTNombreDocumento = TXTNombreDocumento.trim();

            var CMB_TipoArchivo = document.getElementById('<%= CMB_TipoArchivo.ClientID %>');

             var btn = document.getElementById('<%= btnExaminar.ClientID %>').value;
            
            if (TXTNombreDocumento.length == 0 ) {
                mostraralertifyerror('Debe completar el nombre del documento.');
                return false;
            }

            if (CMB_TipoArchivo.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el tipo de archivo.');
                return false;
            }

            if (btn.length == 0 ) {
                mostraralertifyerror('Debe adjuntar un archivo.');
                return false;
            }


            activarloadmail();
        }

        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';
           
            return false;
        }

        function validarvacios() {
            var TXTCodCliente = document.getElementById('<%= TXTCodCliente.ClientID %>').value;
            TXTCodCliente = TXTCodCliente.trim();
            var TXTcodigoAsesor = document.getElementById('<%= TXTcodigoAsesor.ClientID %>').value;
            TXTcodigoAsesor = TXTcodigoAsesor.trim();
            var TXTCodSuper = document.getElementById('<%= TXTCodSuper.ClientID %>').value;
            TXTCodSuper = TXTCodSuper.trim();
            var TXTMontoOferta = document.getElementById('<%= TXTMontoOferta.ClientID %>').value;
            TXTMontoOferta = TXTMontoOferta.trim();
            var TXTReserva = document.getElementById('<%= TXTReserva.ClientID %>').value;
            TXTReserva = TXTReserva.trim();
            var TXT_DireccionRetiro = document.getElementById('<%= TXT_DireccionRetiro.ClientID %>').value;
            TXT_DireccionRetiro = TXT_DireccionRetiro.trim();

            var CMBEstado = document.getElementById('<%= CMBEstado.ClientID %>');
            var CMBMedioCreacion = document.getElementById('<%= CMBMedioCreacion.ClientID %>');
            var CMBLugarRetiro = document.getElementById('<%= CMBLugarRetiro.ClientID %>');

            
            if(CMB_TipoEmpresa.selectedIndex == 0){
                  mostraralertifyerror('Debe seleccionar el tipo de empresa.');
                  return false;
            }
            if(CMB_TipoIdentificacion.selectedIndex == 0){
                    mostraralertifyerror('Debe seleccionar el tipo de identificación.');
                    return false;
            }
            if(TXTCodCliente.length == 0){
                    mostraralertifyerror('El código del cliente no puede estar vacío.');
                   return false;
            }
            if(TXTcodigoAsesor.length == 0){
                    mostraralertifyerror('El código del asesor no puede estar vacío.');
                    return false;
            }
            if(TXTCodSuper.length == 0){
                mostraralertifyerror('El código del supervisor no puede estar vacío.');
                    return false;
            }
            if(TXTMontoOferta.length == 0 ){
                    mostraralertifyerror('El monto oferta no puede estar vacío.');
                   return false;
            }
            if(TXTReserva.length == 0){
                mostraralertifyerror('El monto reserva no puede estar vacío.');
                  return false;
            }
            //if(TXT_DireccionRetiro.length == 0){
            //     mostraralertifyerror('Debe completar toda la informacion!');
            //     return false;
            //}

        }

        function cambioplan() {
            var _gv = document.getElementById('<%=DataGridPlan.ClientID %>'); 
            var len = _gv.rows.length;
            if(len > 1){
                var conf = confirm('Este proyecto ya tiene un plan definido si desea modificar el plan a uno definido se eliminaran los datos actules, Esta seguro?');
                if (conf) {
                    
                    document.getElementById('<%= txtcambioplan.ClientID %>').value = '1'; 
                    return true;
                } else {
                    document.getElementById('<%= txtcambioplan.ClientID %>').value = '2'; 
                    return false;
                }
            } 

        }


        function cambiomoneda() {
           
            var ddl = document.getElementById("<%=CMBmoneda.ClientID%>");
            var Value = ddl.options[ddl.selectedIndex].value;

            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;

            if (oferta.length == 0 || oferta == "#") {
               // alertar('');
                return false;
            }


           // alert(''+ Value);
             if (Value == "Dólares") {
                
                 <%--alertify.confirm('Mensaje de Confirmación', "Desea convertir los articulos a Dólares?", function (e) {
                    if (e) {
                        document.getElementById('<%= txtcambiodolares.ClientID %>').value = '1';
                        var btn = document.getElementById('<%= ActivarCMBmoneda.ClientID %>');
                        btn.click();

                   } else {
                        document.getElementById('<%= txtcambiodolares.ClientID %>').value = '2';
                       
                    }
                    
                });--%>

               <%-- var confirm = alertify.confirm('Mensaje de Confirmación', 'Desea convertir los articulos a Dólares?', null, null).set('labels', { ok: 'Confirmar', cancel: 'Cancelar' });

                confirm.set({ transition: 'slide' });

                confirm.set('onok', function () { //callbak al pulsar botón positivo
                   // alertify.success('Has confirmado');
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '1';
                    $("#ActivarCMBmoneda").click();
                });

                confirm.set('oncancel', function () { //callbak al pulsar botón negativo
                   // alertify.error('Has Cancelado el dialog');
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '2'; 
                });--%>

                var respuesta = confirm("Desea convertir los articulos a Dólares?");
                if (respuesta == true) {
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '1'; 
                }else {
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '2'; 
                }

             } else {
                 
               <%-- alertify.confirm('Mensaje de Confirmación', "Desea convertir los articulos a Colones?", function (e) {
                    if (e) {
                        document.getElementById('<%= txtcambiodolares.ClientID %>').value = '3';
                        var btn = document.getElementById('<%= ActivarCMBmoneda.ClientID %>');
                        btn.click();
                    } else {
                        document.getElementById('<%= txtcambiodolares.ClientID %>').value = '4';
                        
                    }
                   
                 });--%>

                <%--var confirm = alertify.confirm('Mensaje de Confirmación', 'Desea convertir los articulos a Colones?', null, null).set('labels', { ok: 'Confirmar', cancel: 'Cancelar' });

                confirm.set({ transition: 'slide' });

                confirm.set('onok', function () { //callbak al pulsar botón positivo
                   // alertify.success('Has confirmado');
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '3';
                    $("#ActivarCMBmoneda").click();
                });

                confirm.set('oncancel', function () { //callbak al pulsar botón negativo
                    alertify.error('Has Cancelado el dialog');
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '4';
                });--%>

                var respuesta = confirm("Desea convertir los articulos a Colones?");
                if (respuesta == true) {
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '3'; 
                } else {
                    document.getElementById('<%= txtcambiodolares.ClientID %>').value = '4';
                }
            }

        }

        
       function validarimgscotizacion(){
           var respuesta = confirm("Desea cargar las imagenes para esta cotización?");
           if (respuesta == true) {
               document.getElementById('<%= txtimgs.ClientID %>').value = '1'; 
           } else {
               document.getElementById('<%= txtimgs.ClientID %>').value = '0';
           }
           activarloadmail();
       }

        function validacambiomoneda(e) {     //funcion de crear pedido

            var ddlReport = document.getElementById("<%=CMBmoneda.ClientID%>");
            var Value = ddlReport.options[ddlReport.selectedIndex].value;
            
         
            if (e.title == "0") {

                 if (Value == "Dólares") {

                     var respuesta = confirm("Desea convertir este pedido a Dólares?");
                     if (respuesta == true) {
                         document.getElementById('<%= txtcambiopedidodolares.ClientID %>').value = '1';
                     } else {
                         document.getElementById('<%= txtcambiopedidodolares.ClientID %>').value = '';
                     }
                }
            }
            if (e.title == "1") {
                if (Value == "Colones") {
                    var respuesta = confirm("Desea convertir este pedido a Colones?");
                    if (respuesta == true) {
                        document.getElementById('<%= txtcambiopedidodolares.ClientID %>').value = '2';
                    }
                    else {
                        document.getElementById('<%= txtcambiopedidodolares.ClientID %>').value = '';
                    }
                }
            }
            return true;
           
        }

        function validacambioestado() {
            var ddlestado = document.getElementById("<%=CMBEstado.ClientID%>");
            var Value = ddlestado.options[ddlestado.selectedIndex].value;
            var oferta = document.getElementById('<%= TXTOfertaMadre.ClientID %>').value;

           // alert(Value + ':' + oferta);

            if (oferta != "#" || oferta.length != 0) {

                if (Value == "Terminado") {
                       var respuesta = confirm(" Desea terminar este contrato?, una vez terminado no se podrá editar");
                        if (respuesta == true) {
                            document.getElementById('<%= cmbestado2.ClientID %>').value = '1';
                             //return true;
                         }
                         else {
                             document.getElementById('<%= cmbestado2.ClientID %>').value = '0';
                             //return false;
                         }
                }
                else {
                    var respuesta2 = confirm("Esta seguro en cambiar el estado del contrato?");
                    if (respuesta2 == true) {
                            document.getElementById('<%= cambioestado2.ClientID %>').value = '1';
                       // return true;
                    }
                    else {
                       
                        document.getElementById('<%= cambioestado2.ClientID %>').value = '0';
                       // return false;
                    }

                }

            } 
             
            
        }


        function validamonedapedido(e) {    //funcion de cargar pedido

            var ddlReport = document.getElementById("<%=CMBmoneda.ClientID%>");
            var Value = ddlReport.options[ddlReport.selectedIndex].value;
            
            if (e.title == "0") {

                if (Value == "Dólares") {

                    var respuesta = confirm("Desea convertir este pedido a Dólares?");
                    if (respuesta == true) {
                        document.getElementById('<%= txtcambiomonedapedido.ClientID %>').value = '1';
                    }
                    else {
                        document.getElementById('<%= txtcambiomonedapedido.ClientID %>').value = '0';
                    }
                 }
             }
             if (e.title == "1") {
                 if (Value == "Colones") {
                     var respuesta = confirm("Desea convertir este pedido a Colones?");
                     if (respuesta == true) {
                         document.getElementById('<%= txtcambiomonedapedido.ClientID %>').value = '2';
                     } else {
                         document.getElementById('<%= txtcambiomonedapedido.ClientID %>').value = '0';
                     }
                }
            }

        }

        function validacambiobodega(e) {    //funcion de validacambiobodega

            //alert(e.title); 
            <%--var respuesta = confirm("Desea convertir este pedido a Dólares?");
            if (respuesta == true) {
                document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '1';
            }
             else {
                return false;
            }--%>
            
            
             var ddlReport = document.getElementById("<%=CMBmoneda.ClientID%>");
             var Value = ddlReport.options[ddlReport.selectedIndex].value;

             if (e.title == "0") {
                if (Value == "Dólares") {
                    
                     var respuesta = confirm("Desea convertir este pedido a Dólares?");
                     if (respuesta == true) {
                         document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '1';
                    }
                    else {
                        document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '0';
                    }
                }
            }
            if (e.title == "1") {
               
                if (Value == "Colones") {
                    var respuesta = confirm("Desea convertir este pedido a Colones?");
                    if (respuesta == true) {
                        document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '2';
                     } else {
                        document.getElementById('<%= txtvalidacambiobodega.ClientID %>').value = '0';
                        
                     }
                 }
            }

         }

        function validaeliminaradjunto(){
            var respuesta = confirm("Esta seguro que desea eliminar el adjunto?");
            if (respuesta != true) {
                return false;
             }
        }

        function mostraralertifywarning(msj) {
            alertify.notify(msj, 'warning', 5, null);
        }

        function mostraralertifysuccess(msj) {
            alertify.notify(msj, 'success',5, null);
        }

        function mostraralertifyerror(msj) {
            alertify.notify(msj, 'error', 5, null);
        }

        function activarLoading() {
            document.getElementById('imgLoading').style.display = 'block';
        }
      
        function desactivarLoading() {
            document.getElementById('imgLoading').style.display = 'none';
        }

        function activarLoading2() {
            document.getElementById('imgLoading2').style.display = 'block';
        }

        function desactivarLoading2() {
            document.getElementById('imgLoading2').style.display = 'none';
        }


        function ClientSelected(source, eventArgs) {
            var idx = source._selectIndex;
            var value = source.get_completionList().childNodes[idx]._value;

            var array = value.split('-');
            var Id = array[0];
            Id = Id.trim();
            var Descripcion = array[1];
            Descripcion = Descripcion.trim();

            var TXTCodSuper = "<%= TXTCodSuper.ClientID %>";
            document.getElementById(TXTCodSuper).value = Descripcion;
             var TXTSuperv = "<%= TXTSuperv.ClientID %>";
            document.getElementById(TXTSuperv).value = Id;
         }


        function validar() {
            alert('valida');
            return false;
        }



        function ClientSelected2(source, eventArgs) {
            var idx = source._selectIndex;
            var value = source.get_completionList().childNodes[idx]._value;

            var array = value.split('-');
            var Id = array[0];
            Id = Id.trim();
            var Descripcion = array[1];
            Descripcion = Descripcion.trim();

            var TXTAsesor = "<%= TXTAsesor.ClientID %>";
            document.getElementById(TXTAsesor).value = Id;

            var TXTcodigoAsesor = "<%= TXTcodigoAsesor.ClientID %>";
            document.getElementById(TXTcodigoAsesor).value = Descripcion;
        }

        function ClientSelected3(source, eventArgs) {
            var idx = source._selectIndex;
            var value = source.get_completionList().childNodes[idx]._value;

            var array = value.split('-');
            var Id = array[0];
            Id = Id.trim();
            var Descripcion = array[1];
            Descripcion = Descripcion.trim();

            var TXTCodCliente = "<%= TXTCodCliente.ClientID %>";
            document.getElementById(TXTCodCliente).value = Id;

            var TXTCliente = "<%= TXTCliente.ClientID %>";
            document.getElementById(TXTCliente).value = Descripcion;
        }


        function validarInfoContacto() {
            var TXT_NombreContacto = document.getElementById('<%= TXT_NombreContacto.ClientID %>').value.trim();
             TXT_NombreContacto = TXT_NombreContacto.trim();

             var TXT_Celular = document.getElementById('<%= TXT_Celular.ClientID %>').value.trim();
             TXT_Celular = TXT_Celular.trim();

             var TXT_Telefono = document.getElementById('<%= TXT_Telefono.ClientID %>').value;
             TXT_Telefono = TXT_Telefono.trim();

             var TXT_NombreCliente = document.getElementById('<%= TXT_NombreCliente.ClientID %>').value.trim();
             TXT_NombreCliente = TXT_NombreCliente.trim();

             var TXT_Correo = document.getElementById('<%= TXT_Correo.ClientID %>').value.trim();
             TXT_Correo = TXT_Correo.trim();

             var TXT_Observaciones = document.getElementById('<%= TXT_Observaciones.ClientID %>').value.trim();
             TXT_Observaciones = TXT_Observaciones.trim();

             var TXT_Departamento = document.getElementById('<%= TXT_Departamento.ClientID %>').value.trim();
             TXT_Departamento = TXT_Departamento.trim();


          <%--   var CMB_Propietario = document.getElementById('<%= CMB_Propietario.ClientID %>');--%>
             var CMB_Puesto = document.getElementById('<%= CMB_Puesto.ClientID %>');
             var CMB_SectorLead = document.getElementById('<%= CMB_SectorLead2.ClientID %>');


             if (CMB_Puesto.selectedIndex == 0) {
                 mostraralertifyerror('Debe seleccionar el puesto!');
                 return false;
             }

             if (CMB_SectorLead.selectedIndex == 0) {
                 mostraralertifyerror('Debe seleccionar el sector!');
                 return false;
             }
             if (TXT_NombreContacto.length == 0) {
                 mostraralertifyerror('Debe completar el nombre del contacto!');
                 return false;
             }
             if (TXT_Celular.length == 0) {
                 mostraralertifyerror('Debe completar el teléfono celular!');
                 return false;
             }
             if (TXT_Telefono.length == 0) {
                 mostraralertifyerror('Debe completar el teléfono!');
                 return false;
             }
             if (TXT_NombreCliente.length == 0) {
                 mostraralertifyerror('Debe completar el nombre del cliente');
                 return false;
             }
             if (TXT_Correo.length == 0) {
                 mostraralertifyerror('Debe completar el email.');
                 return false;
             }

             if (/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(TXT_Correo)) {

             } else {
                 mostraralertifyerror("La dirección de email es inválida.");
                 return false;
             }


             if (TXT_Departamento.length == 0) {
                 mostraralertifyerror('Debe completar el departamento!');
                 return false;
             }


         }


        


       </script>


     <div id="popmsj" class="popupnotificacion">
	   <a  title="Cerrar" class="close" id="cerrarp" href = "javascript:void(0)" onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
		        <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
              <div style="text-align:center;">
                    <label id="lblmsj" style="font-weight:200;"></label><br />
                   <a  title="Cerrar" class="closeok" id="cerrar2" href = "javascript:void(0)"
                        onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">Aceptar</a>
              </div>
		</div>  

       <!-- base semi-transparente -->
    <div id="fade" class="overlay" ></div>
	<!-- fin base semi-transparente -->

    <div id="modalloading" class="loading">
		   
		    <img src="../Images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>

     <div id="popContactos"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel24" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                   <asp:HiddenField ID="TXT_IDContacto" runat="server" Value="" />
                   <asp:HiddenField ID="TXT_NombreClientehd" runat="server"  Value="" />

                   <table  class="trans_table" >
                                     <tr>
                                         <td align="right">Vendedor:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_Propietario2" class="ddlclass" runat="server" width="100%">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         <td align="right">Estado Contacto:</td>
                                         <td>
                                            <asp:DropDownList ID="CMB_Estado" class="ddlclass" runat="server" width="100%">
                                                <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                                 <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                                            </asp:DropDownList></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Nombre del Cliente:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_NombreCliente" class="textboxpeq" width="100%" runat="server" Enabled="false" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                             
                                         </td>
                                         <td align="right">Telefono:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_Telefono" runat="server" class="textboxpeq" width="100%"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Nombre Contacto:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_NombreContacto" class="textboxpeq" width="100%" runat="server"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                         </td>
                                         <td align="right">Celular:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_Celular" class="textboxpeq" runat="server" width="100%" MaxLength="74" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Puesto:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_Puesto" class="ddlclass" width="100%" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         <td align="right">Sector:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_SectorLead2" class="ddlclass" width="100%" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                     </tr>
                                      <tr>
                                          <td align="right">Departamento:</td>
                                         <td>
                      
                                              <asp:TextBox ID="TXT_Departamento" class="textboxpeq" width="100%"  runat="server" MaxLength="50" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                         </td>
                                         <td align="right">Clasificaci&oacute;n:</td>
                                         <td>
                                              <asp:DropDownList ID="CMB_TipoClasificacion2" class="ddlclass" width="100%" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         
                                     </tr>
                                     <tr>
                                         <td align="right">Correo electr&oacute;nico:</td>
                                         <td><asp:TextBox ID="TXT_Correo" class="textboxpeq"  runat="server" MaxLength="99" width="100%" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                         <td></td>
                                         <td></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Observaciones:</td>
                                         <td colspan="3">
                                              <asp:TextBox ID="TXT_Observaciones" runat="server" TextMode="MultiLine" width="60%" MaxLength="299" onpaste="return false"></asp:TextBox>
                                         </td>
                                        
                                     </tr>
                                      <tr>
                                        <td colspan="2" align="center"> 
                                            <asp:LinkButton ID="btnguardarContacto" runat="server"   CssClass="btn btn-default" OnClick="btnguardarContacto_Click" 
                                                 OnClientClick="return validarInfoContacto();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                                            </asp:LinkButton>
                                        </td>
                                       
                                        <td colspan="2" align="center"> 
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default"  OnClientClick="return  $('#popContactos').dialog('close');return false;"  >
                                               Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                                            </asp:LinkButton>

                                        </td>
                                       
                                    </tr>
                                     
                                 </table>
                 
               
               </ContentTemplate>
          </asp:UpdatePanel>         
     </div>

     <div id="popFoto_HTI"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel44" runat="server" >
              <ContentTemplate>
                  <asp:HiddenField ID="TipoDiseno" runat="server" value=""/>

                    <table class="trans_table" >
                            
                            <tr>
                                <td>Archivo:</td>
                                <td >
                                    <asp:FileUpload ID="fluFoto_HTI" runat="server" multiple="false" />
                                </td>
                            </tr>
                           <tr>
                                <td colspan="2" align="center">
                                    <br />
                                  
                                    <asp:Button ID="CMD_IncluirFHTI" runat="server" Text="Guardar" OnClick="CMD_IncluirFHTI_Click" OnClientClick="return validaAdjuntoFHTI();" CssClass="btn btn-default"/>
                                   
                                </td>
                               <td colspan="2"></td>
                            </tr>
                      </table>
               </ContentTemplate>
                 <Triggers>
                          <asp:PostBackTrigger ControlID="CMD_IncluirFHTI" />   
                 </Triggers>
              
      </asp:UpdatePanel>
              
     </div> 


    
     <div id="popClientes"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel25" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                      <p>Buscar: 
                                    <asp:DropDownList ID="Drop_filtro" runat="server" CssClass="ddlclass">
                                        <asp:ListItem Value="1">Nombre</asp:ListItem>
                                        <asp:ListItem Value="2">Cédula</asp:ListItem>
                                        <asp:ListItem Value="3">Código</asp:ListItem>
                                    </asp:DropDownList> 
                                 
                                  <asp:TextBox ID="TXT_searchcliente" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server" 
                                      onkeydown = "return activarOK_cliente(event);"></asp:TextBox>

                                 <asp:LinkButton ID="CMD_SearchCliente" runat="server" CssClass="btn btn-default" OnClick="CMD_SearchCliente_Click"  OnClientClick=""  >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                               
                                 <img id="imgLC" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;" >
                             
                                  <asp:LinkButton ID="btnnewcliente" runat="server" CssClass="btn btn-default" ToolTip="Agregar nuevo cliente" 
                                                  style="float:right;" OnClick="btnnewcliente_Click">
                                        <span class="icon-add-user"></span>
                                   </asp:LinkButton>
                         
                          </p>
                  <div style="height:300px; overflow:auto">
                     <asp:GridView ID="DGVClientes" Width="100%" runat="server"  Font-Size="10pt" 
                                     DataKeyNames="sCodigo,sNombre,sCedula_Juridica,sAgente,sDireccion,NombreVendedor" 
                                    AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                    BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                    BorderWidth="1px" CellPadding="3"
                                    ForeColor="Black" GridLines="Horizontal" OnRowCommand="DGVClientes_RowCommand" >
                                                  <Columns>
                                                         <asp:TemplateField>
                                                            <ItemTemplate>
                                                                  <asp:Button ID="verButton" runat="server"  
                                                                              CommandName = "sel" 
                                                                              CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                              Text="Elegir" CssClass="btn btn-success"   />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:BoundField DataField="sCodigo" HeaderText="Codigo" />
                                                         <asp:BoundField DataField="sNombre" HeaderText="Nombre" /> 
                                                         <asp:BoundField DataField="sCedula_Juridica" HeaderText="Cedula" />
                                                  </Columns>
                                               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <RowStyle ForeColor="#000000" />
                                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                               
                                 </asp:GridView>
                      </div> 
              </ContentTemplate>    
          </asp:UpdatePanel>         
     </div> 


    
     <div id="popAsesor"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel33" runat="server" >  <%--UpdateMode="Conditional"--%>
              <ContentTemplate>
                      <p>Nombre: 
                                    <%--<asp:DropDownList ID="ddl_filtroAsesor" runat="server" CssClass="ddlclass">
                                        <asp:ListItem Value="1">Nombre</asp:ListItem>
                                        <asp:ListItem Value="2">Código</asp:ListItem>
                                       
                                    </asp:DropDownList> --%>
                                 
                                  <asp:TextBox ID="txt_filtroAsesor" CssClass="textboxpeqSearch" placeholder="Escriba..." onkeypress="return activarOK_Asesor(event);" runat="server" ></asp:TextBox>

                                          <%-- <ajax:AutoCompleteExtender  
                                                 ServiceMethod="GetListAsesor"
                                                CompletionListCssClass ="autocomplete_completionListElement"                               
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                CompletionListItemCssClass="autocomplete_listItem" 
                                                 MinimumPrefixLength="2"  
                                                CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="txt_filtroAsesor"  
                                                ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false" >  
                                            </ajax:AutoCompleteExtender>--%>

                                 <asp:LinkButton ID="CMD_buscarAsesor" runat="server" CssClass="btn btn-default" OnClick="CMD_buscarAsesor_Click"   >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                               
                                <img id="imgLA" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;" >

                          </p>
                   <div style="height:300px; overflow:auto">
                     <asp:GridView ID="DGV_Asesor" Width="100%" runat="server"  Font-Size="10pt" 
                                     DataKeyNames="sCodigo,sNombre" 
                                    AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                    BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                    BorderWidth="1px" CellPadding="3"
                                    ForeColor="Black" GridLines="Horizontal" OnRowCommand="DGV_Asesor_RowCommand" >
                                                  <Columns>
                                                         <asp:TemplateField>
                                                            <ItemTemplate>
                                                                  <asp:Button ID="verButton" runat="server"  
                                                                              CommandName = "sel" 
                                                                              CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                              Text="Elegir" CssClass="btn btn-success"   />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:BoundField DataField="sCodigo" HeaderText="Codigo" />
                                                         <asp:BoundField DataField="sNombre" HeaderText="Nombre" /> 
                                                        
                                                  </Columns>
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <RowStyle ForeColor="#000000" />
                                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                               
                                 </asp:GridView>
                       </div>
              </ContentTemplate>    
          </asp:UpdatePanel>         
     </div> 


    
     <div id="popSupervisor"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel34" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                      <p>Nombre: 
                                    <%--<asp:DropDownList ID="ddl_filtrosupervisor" runat="server" CssClass="ddlclass">
                                        <asp:ListItem Value="1">Nombre</asp:ListItem>
                                        <asp:ListItem Value="2">Código</asp:ListItem>
                                    </asp:DropDownList> --%>
                                 
                                  <asp:TextBox ID="txt_filtroSupervisor" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server" 
                                      onkeydown = "return activarOK_supervisor(event);"></asp:TextBox>

                                 <asp:LinkButton ID="CMD_buscarSupervisor" runat="server" CssClass="btn btn-default" OnClick="CMD_buscarSupervisor_Click"  OnClientClick=""  >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                               
                                <img id="imgLSP" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;" >

                          </p>
                    <div style="height:300px; overflow:auto">
                         <asp:GridView ID="DGV_Supervisor" Width="100%" runat="server"  Font-Size="10pt" 
                                     DataKeyNames="sCodigo,sNombre" 
                                    AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                    BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                    BorderWidth="1px" CellPadding="3"
                                    ForeColor="Black" GridLines="Horizontal" OnRowCommand="DGV_Supervisor_RowCommand" >
                                                  <Columns>
                                                         <asp:TemplateField>
                                                            <ItemTemplate>
                                                                  <asp:Button ID="verButton" runat="server"  
                                                                              CommandName = "sel" 
                                                                              CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                              Text="Elegir" CssClass="btn btn-success"  />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                         <asp:BoundField DataField="sCodigo" HeaderText="Codigo" />
                                                         <asp:BoundField DataField="sNombre" HeaderText="Nombre" /> 
                                                         
                                                  </Columns>
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                <RowStyle ForeColor="#000000" />
                                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                               
                                 </asp:GridView>

                    </div>
                     
              </ContentTemplate>    
          </asp:UpdatePanel>         
     </div> 

 

     
     <div id="popAdjunto"  style="display:none;"    >
          <asp:UpdatePanel ID="upAdjunt" runat="server" UpdateMode="Conditional">
              <ContentTemplate>

                   <%-- <asp:LinkButton ID="btnNewAdj" runat="server"   CssClass="btn btn-default" OnClientClick="return openpopNewAdjunto();"   OnClientClick="return openNewadj();" >
                                   <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton><br />--%>
                  <asp:LinkButton ID="btn_Nuevo" runat="server"   CssClass="btn btn-default" OnClick="btn_Nuevo_Click"   >
                                    <span class="glyphicon glyphicon-plus"></span>
                   </asp:LinkButton><br /><br />

                  <div style="height:400px; overflow:auto">
                  <asp:GridView ID="DGVArchivos"  width="900px" runat="server"  DataKeyNames="IDLinea,Extension,NombreDocumento"
                                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                                OnRowDeleting="DGVArchivos_RowDeleting"
                                                OnRowCommand="DGVArchivos_RowCommand"
                                                OnRowUpdating="DGVArchivos_RowUpdating"
                                                OnRowCancelingEdit="DGVArchivos_RowCancelingEdit"
                                                OnRowEditing="DGVArchivos_RowEditing"
                                               Font-Size="8pt"  BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                               BorderWidth="1px" CellPadding="3">
                                            <Columns>
                                             
                                                <asp:TemplateField HeaderText="Nombre del documento"  >
                                                                <ItemTemplate>
                                                                            <asp:Label ID="LBL_NombreDocumento" runat="server" Text='<%#Eval("NombreDocumento") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                        <asp:TextBox ID="TXT_NombreDocumento" runat="server"  Text='<%#Eval("NombreDocumento") %>'></asp:TextBox>
                                                                </EditItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Extension"  >
                                                                <ItemTemplate>
                                                                            <asp:Label ID="LBL_Extension" runat="server" Text='<%#Eval("Extension") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                        <asp:Label ID="TXT_Extension" runat="server"  Text='<%#Eval("Extension") %>'></asp:Label>
                                                                </EditItemTemplate>
                                                </asp:TemplateField>
                                                 <asp:TemplateField HeaderText="Observaciones"  >
                                                                <ItemTemplate>
                                                                            <asp:Label ID="LBL_Observaciones" runat="server" Text='<%#Eval("Observaciones") %>'></asp:Label>
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                        <asp:TextBox ID="TXT_Observaciones" runat="server" MaxLength="99" Text ='<%#Eval("Observaciones") %>'></asp:TextBox>
                                                                </EditItemTemplate>
                                                </asp:TemplateField>

                                                
                                               <%-- <asp:BoundField DataField="NombreDocumento" HeaderText="Nombre del documento"  />
                                                <asp:BoundField DataField="Extension" HeaderText="Tipo Archivo" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                               --%>

                                                  <asp:TemplateField >
                                                         <ItemTemplate>
                                                              <%-- <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="3" />--%>
                                                            <asp:LinkButton ID="btn_Edit" runat="server" CommandName="Edit" Style="text-decoration:none;color:#444;" CssClass="btn btn-default" >
                                                                      <span class="glyphicon glyphicon-cog"></span>
                                                            </asp:LinkButton>
                                                         </ItemTemplate>
                                                        <EditItemTemplate>
                                                                                     <%-- <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" />
                                                                                      <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" />--%>
                                                                                   
                                                               <asp:LinkButton ID="btn_Update" runat="server" CommandName="Update" Style="text-decoration:none;color:#05b724;" CssClass="btn btn-default" >
                                                                     <span class="glyphicon glyphicon-ok"></span>
                                                              </asp:LinkButton>

                                                              <asp:LinkButton ID="btn_Cancel" runat="server" CommandName="Cancel" Style="text-decoration:none;color:#ff0000;" CssClass="btn btn-default" >
                                                                  <span class="glyphicon glyphicon-remove"></span>
                                                             </asp:LinkButton>
                                                        </EditItemTemplate>
                                                       
                                                </asp:TemplateField>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                         <%-- <asp:linkButton ID="verButton" runat="server"  ForeColor="Green"
                                                                      CommandName = "ver" 
                                                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                      Text="Ver"  />--%>

                                                        <asp:LinkButton ID="verButton" runat="server" CommandName="ver" OnClientClick="return activarver();" CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                  CssClass="btn btn-default" >
                                                                  <span class="glyphicon glyphicon-eye-open"></span>
                                                             </asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                 <asp:TemplateField>
                                                    <ItemTemplate>
                                                       <%-- <asp:LinkButton ID="lnkdelete" runat="server" CommandName="Delete" OnClientClick="return validaeliminaradjunto();" 
                                                             ForeColor="Red">Eliminar</asp:LinkButton>--%>
                                                         <asp:LinkButton ID="lnkdelete" runat="server" CommandName="Delete" Style="text-decoration:none;color:#B40404;"
                                                              CssClass="btn btn-default" OnClientClick="return validaeliminaradjunto();" >
                                                                  <span class="glyphicon glyphicon-trash"></span>
                                                             </asp:LinkButton>

                                                    </ItemTemplate>
                                                </asp:TemplateField>
     
                                              </Columns>

                                              <selectedrowstyle backcolor="White"  forecolor="DarkBlue" font-bold="true"/> 

                                </asp:GridView>
                      </div>
                      
              </ContentTemplate>
                
      </asp:UpdatePanel>
              
     </div> 


     <div id="popNewAdjunto"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel36" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                    <table class="trans_table" >
                            <tr>
                                <td>Nombre del documento:</td>
                                <td> <asp:TextBox ID="TXTNombreDocumento" runat="server" MaxLength="99" CssClass="form-control" Enabled="false"></asp:TextBox></td>
                                
                                <td colspan="2" rowspan="4" valign="top">
                                     
                                </td>
                            </tr>
                          <tr>
                              <td>Tipo Archivo:</td>
                              <td>
                                 <asp:DropDownList ID="CMB_TipoArchivo" CssClass="form-control" runat="server">
                                     
                                 </asp:DropDownList>
                              </td>
                          </tr>
                         
                           <tr>
                                <td>Observaciones:</td>
                                <td><asp:TextBox ID="TXTObservaciones"  CssClass="form-control" runat="server" MaxLength="99" TextMode="MultiLine" Enabled="false" Rows="3" ></asp:TextBox></td>
                                
                            </tr>
                            <tr>
                                <td>Archivo:</td>
                                <td >
                                    <asp:FileUpload ID="btnExaminar" runat="server" multiple="false" Enabled="false" />
                                </td>
                            </tr>
                           <tr>
                                <td colspan="2" align="center">
                                    <br />
                                   <%-- <asp:Button ID="btn_Nuevo" runat="server" Text="Nuevo" OnClick="btn_Nuevo_Click" OnClientClick="nuevoadjunto();"  />&nbsp;&nbsp;--%>
                                    <asp:Button ID="CMD_Incluir" runat="server" Text="Incluir" OnClick="CMD_Incluir_Click" OnClientClick="return validaAdjunto();" CssClass="btn btn-default"/>
                                   
                                </td>
                               <td colspan="2"></td>
                            </tr>
                      </table>
               </ContentTemplate>
                 <Triggers>
                          <asp:PostBackTrigger ControlID="CMD_Incluir" />   
                 </Triggers>
              
      </asp:UpdatePanel>
              
     </div> 

    
     <div id="popProyectos"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel22" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                         <p>Buscar: 
                            <asp:TextBox ID="TXT_ProyectoSearch" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server" MaxLength="50"></asp:TextBox>
                            <asp:LinkButton ID="CMD_buscarProyecto" runat="server" CssClass="btn btn-default" OnClick="CMD_buscarProyecto_Click"  >
                               <span class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>
                         </p>
                   
                  <asp:GridView ID="DGVProyectos"  runat="server"  DataKeyNames="CodProyecto,Codigo" CssClass="table"
                                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                              OnRowCommand="DGVProyectos_RowCommand"
                                               Font-Size="8pt"  BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                               BorderWidth="1px" CellPadding="3">
                                            <Columns>
                                                 <asp:TemplateField>
                                                    <ItemTemplate>
                                                          <asp:Button ID="selButton" runat="server" 
                                                                      CommandName = "selec" 
                                                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                                                      Text="Elegir" CssClass="btn btn-success"  />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                              
                                                <asp:BoundField DataField="Codigo" HeaderText="Codigo"/>
                                                <asp:BoundField DataField="Contrato" HeaderText="Contrato"  />
                                                <asp:BoundField DataField="Proyecto" HeaderText="Proyecto" />
                                                
                                              </Columns>
                                              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                               <RowStyle ForeColor="#000000" />
                                               <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                               
                                </asp:GridView>

               </ContentTemplate>
             
          </asp:UpdatePanel>         
     </div>

     <div id="popImagen"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                   
                  <asp:Image ID="imageArchivo" runat="server" Width="730" Height="500" /><br />
                  <asp:Label ID="lbl_Linea" runat="server" Text="" Visible="false"></asp:Label>
                  <asp:Label ID="lbl_Ext" runat="server" Text=""  Visible="false"></asp:Label>
                  <asp:Label ID="lbl_Filename" runat="server" Text=""  Visible="false"></asp:Label>

                 <br />
                   <asp:LinkButton ID="BtnDescargarImg" runat="server"   CssClass="btn btn-default" OnClick="BtnDescargarImg_Click" >
                               <span class="glyphicon glyphicon-download-alt"></span>&nbsp;Descargar
                    </asp:LinkButton>
                   <asp:LinkButton ID="Cerrar" runat="server"   CssClass="btn btn-default" OnClick="Cerrar_Click">
                               <span class="glyphicon glyphicon-download-alt"></span>&nbsp;Cerrar
                    </asp:LinkButton>

               </ContentTemplate>
               <Triggers>
                        <asp:PostBackTrigger ControlID="BtnDescargarImg" />   
                 </Triggers>
          </asp:UpdatePanel>         
     </div>

    <div id="popImpresion"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel14" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                  <asp:Button ID="CK1_Contrato" runat="server" Text="1-Imprimir Contrato" OnClick="CK1_Contrato_Click" />
               </ContentTemplate>
          </asp:UpdatePanel>         
     </div> 


    
     <div id="popImpresionDisenos"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel15" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                  <table class="trans_table" >
                      <tr>
                          <td>Diseños Cargados</td>
                          <td>Vista Previa
                               <img id="imgLoadingdisenos" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;">
                          </td>
                      </tr>
                      <tr>
                          <td>
                               <asp:GridView ID="DGVDisenos"  width="500px" runat="server"  
                                              AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                              DataKeyNames="NichoMercado"
                                             OnRowCommand="DGVDisenos_RowCommand" 
                                             Font-Size="8pt"  BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                     
                                             BorderWidth="1px" CellPadding="3">
                                            <Columns>
  
                                               <%-- <asp:BoundField DataField="NichoMercado" HeaderText="Nicho de mercado" />--%>

                                                 <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                                    <HeaderTemplate>
                                                        
                                                        <asp:Label ID="Lbl_NichoMercado" runat="server" Text="NichoMercado"></asp:Label>
                                                    </HeaderTemplate>
                                                   <ItemTemplate>
                                                        <asp:Label ID="Lbl_NichoMercado2" runat="server" Text='<%#Eval("NichoMercado") %>'></asp:Label>
                                                   </ItemTemplate>     
                                                </asp:TemplateField>


                                                <%-- <asp:TemplateField HeaderText="Nicho de mercado" ItemStyle-HorizontalAlign="Center">
                                                   <ItemTemplate>
                                                        <asp:Label ID="Lbl_NichoMercado" runat="server" Text='<%#Eval("NichoMercado") %>'></asp:Label>
                                                   </ItemTemplate>     
                                                </asp:TemplateField>--%>

                                                <asp:TemplateField  HeaderText="">
                                                  <ItemTemplate>
                                                    <asp:Button ID="verButton" runat="server" 
                                                      CommandName = "seleccionar" 
                                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                                      Text="Ver" OnClientClick="loadingdisenosON();"
                                                       />
                                        
                                                  </ItemTemplate> 
                                                </asp:TemplateField>

                                                 <asp:TemplateField  HeaderText="">
                                                  <ItemTemplate>
                                                    <asp:Button ID="AddButton" runat="server" 
                                                      CommandName = "add" 
                                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                                        OnClientClick="return validarimgscotizacion(); "
                                                      Text="Elegir"  />
                                        
                                                  </ItemTemplate> 
                                                </asp:TemplateField>
     
     
                                              </Columns>

                                              <selectedrowstyle backcolor="White"  forecolor="DarkBlue" font-bold="true"/> 

                                </asp:GridView>
                          </td>
                           <td>
                                 <asp:Image ID="Image1" Height="200" Width="270" runat="server"  />
                           </td>
                      </tr>
                  </table>
                   
                   
                   <asp:HiddenField ID="hidenimg" runat="server"  Value=""/>

                     <asp:HiddenField ID="txtimgs" runat="server"  Value=""/>

               </ContentTemplate>
          </asp:UpdatePanel>
              
     </div>

     
     <div id="popFacturacion"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel13" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                  <asp:HiddenField ID="txttipomail" runat="server" Value="" />
                                 <h4>
                                     <asp:Label ID="LBLDetalle" runat="server" Text="Este proceso envía un email con la información de la entrega."></asp:Label>
                                 </h4>
                                      <asp:GridView ID="DGVDetalles"  width="500px" runat="server"  DataKeyNames="IDLinea,NOferta,FechaIngreso"
                                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                             Font-Size="8pt"  BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                             BorderWidth="1px" CellPadding="3">
                                            <Columns>
  
                                                 <asp:TemplateField HeaderText="Adjuntar">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="ChkAdj" runat="server"   />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                               
                                                <asp:BoundField DataField="NombreDocumento" HeaderText="Nombre del documento"  />
                                                <asp:BoundField DataField="Extension" HeaderText="Tipo" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                               
                                               <%-- <asp:BoundField DataField="Extension" Visible="False"/>
                                                <asp:BoundField DataField="Data" Visible="False"/>
                                                <asp:BoundField DataField="IDModulo" Visible="False" />
                                                <asp:BoundField DataField="FileName" Visible="False"/>--%>

                                              </Columns>

                                              <selectedrowstyle backcolor="White"  forecolor="DarkBlue" font-bold="true"/> 

                                </asp:GridView><br />
                              <table class="trans_table" >
                                  <tr>
                                      <td align="left">Enviar copia a:</td>
                                      <td>
                                          <asp:TextBox ID="TXTEnviarCopia" runat="server" CssClass="textboxpeq"></asp:TextBox>
                                      </td>
                                  </tr>
                                   <tr>
                                      <td align="left">
                                          
                                          <asp:Label ID="LBLComentario" runat="server" Text="Indicar comentarios"></asp:Label>
                                      </td>
                                       <td>
                                            <asp:TextBox ID="TXTasuntomail" runat="server" TextMode="MultiLine" Rows="4" Columns="70"></asp:TextBox>
                                      </td>
                                  </tr>
                                   <tr>
                                        <td colspan="2" align="left">   
                                           
                                            <asp:Button ID="CMDMailRemedida" runat="server" Text="Enviar Mail" OnClick="CMDMailRemedida_Click"  OnClientClick="return activarloadmail();"  />
                                            
                                        </td>
                                    </tr>
                             </table>
              </ContentTemplate>
                <%-- <Triggers>
                          <asp:PostBackTrigger ControlID="CMD_Incluir" />   
                 </Triggers>--%>
              
      </asp:UpdatePanel>
              
     </div> 


     <div id="popCargarProductoPCG"  style="display:none;"  >
          <asp:UpdatePanel ID="UpCargarProdPCG" runat="server" UpdateMode="Conditional" > 
                <ContentTemplate>
                       
                     <p>Buscar código: 
                                   
                                 
                                  <asp:TextBox ID="txtfiltrocodigoproducto" CssClass="textboxpeqSearch" placeholder="Escriba el codigo de producto..." runat="server"  MaxLength="10"
                                      onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                 <asp:LinkButton ID="Btn_Buscar" runat="server" CssClass="btn btn-default" OnClick="Btn_Buscar_Click" OnClientClick="return activarLoading2();" >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                               
                                <img id="imgLoading2" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;">
                          </p>
                        <div style="height:400px; overflow:auto">
                       
                           
                             <div class="table-responsive">  
                            <asp:GridView ID="DGVCargaProductoPCG"  Width="100%" 
                                 runat="server" DataKeyNames="sCodigo_Producto"  CssClass ="table" 
                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"  OnRowDataBound="DGVCargaProductoPCG_RowDataBound"  OnRowCommand="DGVCargaProductoPCG_RowCommand"   >   <%--OnPreRender="" OnRowEditing=""--%>
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        <asp:Button ID="AddButton" runat="server" 
                                          CommandName = "seleccionar" 
                                          CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                          ToolTip='<%#Eval("bMoneda") %>'
                                          OnClientClick="return validacambiomoneda(this);"
                                         
                                          Text="Elegir" CssClass="btn btn-success"  />
                                        
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                           
                                            <asp:Label ID="Lbl_sCodigo_Producto" runat="server" Text="Codigo"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sCodigo_Producto2" runat="server" Text='<%#Eval("sCodigo_Producto") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                          
                                            <asp:Label ID="Lbl_sDescripcion_Inventario" runat="server" Text="Descripcion"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sDescripcion_Inventario2" runat="server" Text='<%#Eval("sDescripcion_Inventario") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            
                                            <asp:Label ID="Lbl_sCodigo_Proveedor" runat="server" Text="Proveedor"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sCodigo_Proveedor2" runat="server" Text='<%#Eval("sCodigo_Proveedor") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_sCodigoMarca" runat="server" Text="Marca"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sCodigoMarca2" runat="server" Text='<%#Eval("sCodigoMarca") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                       
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" Visible="false">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTcPrecio_Publico" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_cPrecio_Publico" runat="server" Text="Marca"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_cPrecio_Publico2" runat="server" Text='<%#Eval("cPrecio_Publico") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" Visible="false">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTbMoneda" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_bMoneda" runat="server" Text="Marca"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_bMoneda2" runat="server" Text='<%#Eval("bMoneda") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                </Columns>

                                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
             
      </asp:UpdatePanel>
              
     </div> 

    <div id="popDetalleFacturacion"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel45" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                       
                        <div style="height:200px; overflow:auto">
                           Información de facturación
                            <asp:GridView ID="DGVOferta"  Width="100%"    runat="server" 
                                DataKeyNames="PrecioEspecial,Descuento,Impuesto"
                                ShowHeaderWhenEmpty="true"
                                AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"    >  
                                <Columns>
                                     <asp:BoundField DataField="sBodega" HeaderText="Bodega"  />
                                    <asp:BoundField DataField="cCodigo" HeaderText="Cod Producto"  />
                                    <asp:BoundField DataField="cantidad" HeaderText="Cantidad"  />
                                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"  />
                                    <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio Unitario + IV"  DataFormatString="{0:N2}" />
                                    <asp:BoundField DataField="Descuento" HeaderText="Desc" DataFormatString="{0:N2}" />
                                    <asp:BoundField DataField="Impuesto" HeaderText="I.V." DataFormatString="{0:N2}" />
                                    <asp:BoundField DataField="PrecioEspecial" HeaderText="Total + IV" DataFormatString="{0:N2}"  />
                                    <asp:BoundField DataField="TeoReferencia" HeaderText="Referencia"  />
                                    
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                          
                            
                         </div>
                         <table style="float:right;border-color: #c8c3c3;border-style:solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;">
                             <tr>
                                 <td>Sub Total:</td>
                                 <td><asp:TextBox ID="TXTSubLista2" runat="server" Width="120" Text="0.00" ReadOnly="true"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td>Impuesto:</td>
                                 <td><asp:TextBox ID="TXTImptLista2" runat="server" Width="120" Text="0.00"  ReadOnly="true"></asp:TextBox></td>
                                 
                             </tr>
                             <tr>
                                 <td>Exento:</td>
                                 <td><asp:TextBox ID="TXTExento2" runat="server" Width="120" Text="0.00" ReadOnly="true"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td>Descuento:</td>
                                 <td><asp:TextBox ID="TXTDescuento2" runat="server" Width="120" Text="0.00"  ReadOnly="true"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td>Precio Total:</td>
                                 <td><asp:TextBox ID="TXTTotalLista2" runat="server" Width="120"  Text="0.00" ReadOnly="true"></asp:TextBox></td>
                             </tr>
                         </table>

                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div>

     <div id="popBitacora"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                       
                        <div style="height:500px; overflow:auto">
                         <div class="table-responsive">  
                             
                              
                            <asp:GridView ID="GridView2"  Width="100%"    runat="server" 
                                ShowHeaderWhenEmpty="true"
                                AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"    >  
                                <Columns>
                                     <asp:BoundField DataField="Instruccion" HeaderText="Instruccion"  />
                                    <asp:BoundField DataField="Fecha" HeaderText="Fecha"  />
                                    <asp:BoundField DataField="Usuario" HeaderText="Usuario"  />
                                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"  />
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad"  />
                                    <asp:BoundField DataField="PrecioUnitario" HeaderText="PrecioUnitario"  />
                                    <asp:BoundField DataField="Impuesto" HeaderText="Impuesto"  />
                                    <asp:BoundField DataField="TeoReferencia" HeaderText="TeoReferencia"  />
                                    
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div> 

     <div id="popContacto"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                       
                    <asp:LinkButton ID="btncrearcontacto" runat="server"   CssClass="btn btn-default" OnClick="btncrearcontacto_Click" OnClientClick="return limpiarpopnuevocontacto();" >
                            <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo Contacto
                     </asp:LinkButton> <br /><br />

                        <div style="height:300px; overflow:auto">
                         <div class="table-responsive">  
                            
                            <asp:GridView ID="DGVContactos"  Width="100%"    runat="server"  
                                AutoGenerateColumns="False" DataKeyNames="Nombre,Telefono,Puesto,Email" ShowHeaderWhenEmpty="true" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"  OnRowCommand="DGVContactos_RowCommand"   >  
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        <asp:Button ID="AddButton" runat="server" 
                                          CommandName = "seleccionar" 
                                          CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                          
                                          Text="Elegir"  CssClass="btn btn-success" />
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_Nombre" runat="server" Text="Nombre"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Nombre2" runat="server" Text='<%#Eval("Nombre") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            
                                            <asp:Label ID="Lbl_Telefono" runat="server" Text="Telefono"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Telefono2" runat="server" Text='<%#Eval("Telefono") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                          
                                            <asp:Label ID="Lbl_Puesto" runat="server" Text="Puesto"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Puesto2" runat="server" Text='<%#Eval("Puesto") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            
                                            <asp:Label ID="Lbl_Email" runat="server" Text="Email"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Email2" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                                <EmptyDataTemplate>
                                         <div style="text-align:center;width:100%;"><b>Sin registros.</b> </div>                                                                  
                                </EmptyDataTemplate>  

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div> 


     <div id="popCampana"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                       
                     <p>Buscar Campaña: 
                                   
                                  <asp:TextBox ID="TXTNombre_Campana" CssClass="textboxpeqSearch" placeholder="Escriba el nombre" runat="server"  MaxLength="99"
                                      onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                 <asp:LinkButton ID="btnBuscarCampana" runat="server" CssClass="btn btn-default" OnClick="btnBuscarCampana_Click"  >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>

                          </p>

                        <div style="height:500px; overflow:auto">
                         <div class="table-responsive">  
                           

                            <asp:GridView ID="DGV_Campanas"  Width="100%"   runat="server"  
                                AutoGenerateColumns="False" DataKeyNames="ID_Campana" ShowHeaderWhenEmpty="true"
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"  OnRowCommand="DGV_Campanas_RowCommand"   >  
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        <asp:Button ID="AddButton" runat="server" 
                                          CommandName = "seleccionar" 
                                          CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                          
                                          Text="Agregar" CssClass="btn btn-success" />
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                          <%-- <asp:TextBox ID="TXTNombre_Campana" runat="server"  width="100%"  MaxLength="99" Placeholder="Buscar..."  ForeColor="Black" ></asp:TextBox>
                                            
                                             <br />--%>
                                            <asp:Label ID="Lbl_Nombre_Campana" runat="server" Text="Nombre"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Nombre_Campana2" runat="server" Text='<%#Eval("Nombre_Campana") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTEstado_Campana" runat="server"  width="100%"  MaxLength="99" Placeholder="Buscar..."  ForeColor="Black" ></asp:TextBox>
                                            
                                             <br />--%>
                                            <asp:Label ID="Lbl_Estado_Campana" runat="server" Text="Estado"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Estado_Campana2" runat="server" Text='<%#Eval("Estado_Campana") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                          
                                            <asp:Label ID="Lbl_FechaInicio" runat="server" Text="Fecha de Inicio"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaInicio2" runat="server" Text='<%#Eval("FechaInicio") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div> 

    


      <div id="popCargarPedidoPCG"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
                <ContentTemplate>

                         <p>Buscar: 
                                    <asp:DropDownList ID="ddlfiltropedido" runat="server" CssClass="ddlclass">
                                        <asp:ListItem Value="1">Nombre Cliente</asp:ListItem>
                                        <asp:ListItem Value="2">Número Pedido</asp:ListItem>
                                       
                                    </asp:DropDownList> 
                                 
                                  <asp:TextBox ID="txt_searchpedido" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server"   MaxLength="99"
                                      onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                 <asp:LinkButton ID="btnBuscarPedido" runat="server" CssClass="btn btn-default" OnClick="btnBuscarPedido_Click" OnClientClick="return activarLoading();"  >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                               
                               <img id="imgLoading" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;">
                         
                          </p>

                       
                        <div style="height:400px; overflow:auto">
                         <div class="table-responsive">  
                              
                            <asp:GridView ID="DataGridOfeta"  Width="100%"   runat="server" CssClass="table"
                                DataKeyNames="sPedido" ShowHeaderWhenEmpty="true"
                                AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"  OnRowDataBound="DataGridOfeta_RowDataBound"  OnRowCommand="DataGridOfeta_RowCommand"   >  
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        <asp:Button ID="AddButton" runat="server" 
                                          CommandName = "seleccionar" 
                                          CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                          OnClientClick="validamonedapedido(this);"
                                          ToolTip='<%#Eval("iTipo_Moneda") %>'
                                          Text="Elegir" CssClass="btn btn-success"  />
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_Pedido" runat="server" Text="Pedido"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Pedido2" runat="server" Text='<%#Eval("sPedido") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_sNombre_Cliente" runat="server" Text="Cliente"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sNombre_Cliente2" runat="server" Text='<%#Eval("sNombre_Cliente") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_dFecha" runat="server" Text="Fecha"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_dFecha2" runat="server" Text='<%#Eval("dFecha", "{0:dd/MM/yyyy}" ) %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_iTipo_Moneda" runat="server" Text="Moneda"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_iTipo_Moneda2" runat="server" Text='<%#Eval("iTipo_Moneda") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                       
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" >
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTcPrecio_Publico" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_cMonto_Total_Precio" runat="server" Text="Monto Total"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_cMonto_Total_Precio2" runat="server" Text='<%#Eval("cMonto_Total_Precio") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                   

                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div> 


    <div id="popFormBodega"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                       
                          <p>Buscar código de producto: 
                                   
                                 
                                  <asp:TextBox ID="txtsearchcodigobodega" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server" 
                                      onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                 <asp:LinkButton ID="btnbuscarbodega" runat="server" CssClass="btn btn-default" OnClick="btnbuscarbodega_Click" >
                                     <span class="glyphicon glyphicon-search"></span>
                                 </asp:LinkButton>
                                <img id="imgLoading3" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;">
                              
                          </p>

                        <div style="height:300px; overflow:auto">
                         <div class="table-responsive">  
                              
                            <asp:HiddenField ID="txtindexlinea" runat="server"  Value=""/>
    
		                     
                            <asp:GridView ID="dataGridView1"  Width="100%"  runat="server"
                                 DataKeyNames="sCodigo_Proveedor,sCodigoMarca,cPrecio_Publico,bMoneda,sDescripcion_Inventario,sBodega" 
                                AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2"   OnRowDataBound="dataGridView1_RowDataBound" 
                                 OnRowCommand="dataGridView1_RowCommand"   ShowHeaderWhenEmpty="true" >  
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        <asp:Button ID="AddButton" runat="server" 
                                          CommandName = "seleccionar" 
                                          CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"    
                                          Text="Elegir"  CssClass="btn btn-success"
                                           ToolTip='<%#Eval("bMoneda") %>'
                                           OnClientClick="validacambiobodega(this);"  />
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTBodega" runat="server"  width="100%"  MaxLength="99" Placeholder="Buscar..." Enabled="false"  ForeColor="Black" ></asp:TextBox>
                                            
                                             <br />--%>
                                            <asp:Label ID="Lbl_Bodega" runat="server" Text="Bodega"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Bodega2" runat="server" Text='<%#Eval("sBodega") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTCodigo" runat="server"  Width="100%" MaxLength="99"  ForeColor="Black" Placeholder="Buscar..." ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_Codigo" runat="server" Text="Codigo"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Codigo2" runat="server" Text='<%#Eval("sCodigo_Producto") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTsDescripcion_Inventario" runat="server" onkeypress="return detour(event)"  Enabled="false"  Width="100%" MaxLength="99"  ForeColor="Black" ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_sDescripcion_Inventario" runat="server" Text="Descripcion"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sDescripcion_Inventario2" runat="server" Text='<%#Eval("sDescripcion_Inventario") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>
 
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" >
                                        <HeaderTemplate>
                                           <%-- <asp:TextBox ID="TXTcPrecio_Publico" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" ></asp:TextBox>
                                             <br />--%>
                                            <asp:Label ID="Lbl_Saldo" runat="server" Text="Saldo"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Saldo2" runat="server" Text='<%#Eval("Saldo") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>


                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            
                          </div>
                            
                         </div><br />
                      
                </ContentTemplate>
      </asp:UpdatePanel>
              
     </div> 
   

    
     <br /><br /><br />
     <div class="main container">
        
          <table class="trans_table" >
               <asp:Panel ID="GBEncabezado" runat="server" >
              <tr>
                  <%--<td colspan="7"></td>--%>
                  <td colspan="10" align="right" style="background-color:#006699;border-radius:2px;">
                      <label class="lblofertas">N° Oferta Maestra: </label>
                      <asp:HiddenField ID="TXTOfertaMadre" runat="server" Value="#" />
                      <asp:Label ID="LBLNumContrato" runat="server" Text="#" CssClass="lblnumcontrato"></asp:Label>&nbsp;&nbsp;
                  </td>
                
              </tr>
              <tr>
                  <td>
                       
                      <asp:UpdatePanel ID="UpdatePanel26" runat="server">
                          <ContentTemplate>
                                <%-- <asp:Button ID="btnnewcliente" runat="server" Text="+" ToolTip="Agregar nuevo cliente" OnClick="btnnewcliente_Click" />--%>
                                   

                                 <asp:LinkButton ID="lnkbuscaCliente" runat="server" CssClass="btn btn-default"  OnClick="lnkbuscaCliente_Click">
                                    <span class="glyphicon glyphicon-search"></span>&nbsp; Cliente:
                                </asp:LinkButton>
                          </ContentTemplate>
                      </asp:UpdatePanel>
                       
                  </td>
                  <td colspan="2">
                        <asp:UpdatePanel ID="UpdatePanel28" runat="server">
                          <ContentTemplate>
                                   <asp:TextBox ID="TXTCodCliente" runat="server" Width="70" Enabled="false" ></asp:TextBox>
                                   <asp:TextBox ID="TXTCliente" runat="server"  Enabled="false"></asp:TextBox>
                              </ContentTemplate>
                      </asp:UpdatePanel>

                     <%--  <ajax:AutoCompleteExtender  
                                                 ServiceMethod="GetListCliente"
                                                CompletionListCssClass ="autocomplete_completionListElement"                               
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                CompletionListItemCssClass="autocomplete_listItem" 
                                                 MinimumPrefixLength="1"  
                                                CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXTCliente"  
                                                ID="AutoCompleteExtender3" runat="server" FirstRowSelected="false"
                                                 OnClientItemSelected ="ClientSelected3"
                                                 OnClientPopulated =""     >  
                                             </ajax:AutoCompleteExtender> --%>
                     

                  </td>
                   
                  <td>
                      <asp:DropDownList ID="CMBProvincia" runat="server"  Visible="false">
                          <asp:ListItem Value="San José">San José</asp:ListItem>
                           <asp:ListItem Value="Heredia ">Heredia </asp:ListItem>
                           <asp:ListItem Value="Alajuela ">Alajuela </asp:ListItem>
                           <asp:ListItem Value="Cartago">Cartago</asp:ListItem>
                           <asp:ListItem Value="Puntarenas">Puntarenas</asp:ListItem>
                           <asp:ListItem Value="Guanacaste">Guanacaste</asp:ListItem>
                           <asp:ListItem Value="Limon">Limon</asp:ListItem>  

                      </asp:DropDownList></td>
                 
                 
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                 <td>Descripción Proyecto:</td>
                  <td><asp:TextBox ID="TXTOferta" runat="server" ></asp:TextBox></td>
                  <td>Fecha Inicio:</td>
                  <td>
                      <asp:TextBox ID="DTFecha" runat="server" Width="90" Enabled="false"></asp:TextBox>
                      <asp:ImageButton ID="imgPopupFecha" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                      <ajax:CalendarExtender ID="calendarioFechaIni"  PopupButtonID="imgPopupFecha" TargetControlID="DTFecha"  runat="server" Format="MM/dd/yyyy" />

                  </td>
                 
                  <td>
                       <asp:UpdatePanel ID="UpdatePanel35" runat="server" >
                            <ContentTemplate>
                               <asp:LinkButton ID="LNKProyecto" runat="server" OnClick="LNKProyecto_Click" ToolTip="Buscar Proyecto">
                                  <span class="glyphicon glyphicon-search"></span>&nbsp; Proyecto:</asp:LinkButton>
                            </ContentTemplate>
                      </asp:UpdatePanel>
                  </td>
                  <td>
                       <asp:UpdatePanel ID="UpdatePanel23" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:TextBox ID="TXTProyecto" runat="server" Width="100" Enabled="false"  ></asp:TextBox>
                            </ContentTemplate>
                      </asp:UpdatePanel>
                  </td>
                  <td></td>
                  <td> <asp:Button ID="CMDPlandePagos" runat="server" Text="Plan de Pagos" Visible="false" /></td>
              </tr>
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel30" runat="server">
                          <ContentTemplate>
                                 <asp:LinkButton ID="LnkSupervisor" runat="server" CssClass="btn btn-default"  OnClick="LnkSupervisor_Click">
                                    <span class="glyphicon glyphicon-search"></span>&nbsp;  Supervisor:
                                </asp:LinkButton>
                          </ContentTemplate>
                      </asp:UpdatePanel>
                        
                       </td>
                  <td> 
                       <asp:UpdatePanel ID="UpdatePanel32" runat="server">
                          <ContentTemplate>
                                  <asp:TextBox ID="TXTCodSuper" runat="server" Width="40" Enabled="false"></asp:TextBox>
                                  <asp:TextBox ID="TXTSuperv" runat="server" Width="130"  Enabled="false"></asp:TextBox>
                           </ContentTemplate>
                      </asp:UpdatePanel>
                       
                      <%-- <ajax:AutoCompleteExtender  
                                                 ServiceMethod="GetListAsesor"
                                                CompletionListCssClass ="autocomplete_completionListElement"                               
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                CompletionListItemCssClass="autocomplete_listItem" 
                                                 MinimumPrefixLength="1"  
                                                CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXTSuperv"  
                                                ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false"
                                                 OnClientItemSelected ="ClientSelected"
                                                 OnClientPopulated =""     >  
                                             </ajax:AutoCompleteExtender> --%>
                  </td>

                    <td>Fecha Aprox Entrega:</td>
                  <td>
                       
                       <asp:TextBox ID="DTP_Fecha_cierre" runat="server" Width="90" Enabled="false" ></asp:TextBox>
                      <asp:ImageButton ID="ImageButton1" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                      <ajax:CalendarExtender ID="CalendarFechaEntreg"  PopupButtonID="ImageButton1" TargetControlID="DTP_Fecha_cierre"  runat="server" Format="MM/dd/yyyy" />

                  </td>
                   
                  <td>Moneda:</td>
                    <td>
                         <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>
                             <asp:DropDownList ID="CMBmoneda" runat="server" OnSelectedIndexChanged="CMBmoneda_SelectedIndexChanged"  AutoPostBack="true" onchange="cambiomoneda();">
                               <asp:ListItem Value="Colones">Colones</asp:ListItem>      
                               <asp:ListItem Value="Dólares">Dólares</asp:ListItem> 
                             </asp:DropDownList>
                                <asp:Button ID="ActivarCMBmoneda" runat="server" Text="Button" Visible="false"  OnClick="ActivarCMBmoneda_Click"/>
                           </ContentTemplate>
                        <%--  <Triggers>
                                   <asp:AsyncPostBackTrigger ControlID="CMBmoneda"  />
                           </Triggers>--%>

                            <%--  <Triggers>
                                      <asp:PostBackTrigger ControlID="ActivarCMBmoneda" />
                              </Triggers>--%>
                        </asp:UpdatePanel>

                    </td>
                    <td></td>
                    <td></td>
                </tr>
                  </asp:Panel>  
              <tr>
                  <td>
                        <asp:UpdatePanel ID="UpdatePanel31" runat="server">
                          <ContentTemplate>
                                 <asp:LinkButton ID="lnkAsesor" runat="server" CssClass="btn btn-default"  OnClick="lnkAsesor_Click">
                                    <span class="glyphicon glyphicon-search"></span>&nbsp;   Asesor:
                                </asp:LinkButton>
                          </ContentTemplate>
                      </asp:UpdatePanel>
                     </td>
                  <td>
                       <asp:UpdatePanel ID="UpdatePanel29" runat="server">
                          <ContentTemplate>
                                  <asp:TextBox ID="TXTcodigoAsesor" runat="server" Width="40" Enabled="false"></asp:TextBox>
                                  <asp:TextBox ID="TXTAsesor" runat="server"  Width="130" Enabled="false"></asp:TextBox>
                                  <asp:HiddenField ID="TXTAsesorh" runat="server" Value="" />
                            </ContentTemplate>
                         </asp:UpdatePanel>

                       <%-- <ajax:AutoCompleteExtender  
                                                 ServiceMethod="GetListAsesor"
                                                CompletionListCssClass ="autocomplete_completionListElement"                               
                                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                CompletionListItemCssClass="autocomplete_listItem" 
                                                 MinimumPrefixLength="1"  
                                                CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXTAsesor"  
                                                ID="AutoCompleteExtender2" runat="server" FirstRowSelected="false"
                                                 OnClientItemSelected ="ClientSelected2"
                                                 OnClientPopulated =""     >  
                                             </ajax:AutoCompleteExtender> --%>
                      
                  </td>
                  <td>
                      <asp:CheckBox ID="CHKCuentaSegura" runat="server" Text="Cuenta Segura"/>
                  </td>
                 
                  <td>Factibilidad:
                       <asp:DropDownList ID="TXTFactibilidad" runat="server">
                          <asp:ListItem Value="25 %">25 %</asp:ListItem>      
                          <asp:ListItem Value="50 %">50 %</asp:ListItem> 
                          <asp:ListItem Value="75 %">75 %</asp:ListItem>
                          <asp:ListItem Value="100 %">100 %</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                 
                   <td colspan="4">
                       <%-- <asp:UpdatePanel ID="UpdatePanel37" runat="server">
                          <ContentTemplate>--%>
                               

                              <asp:LinkButton ID="CMD_AbrirAdjunto" runat="server" CssClass="btn btn-default" OnClientClick="return openadjuntos();" >
                                     <span class="glyphicon glyphicon-paperclip"></span>&nbsp;Adjuntos
                               </asp:LinkButton>

                          <%-- </ContentTemplate>
                         </asp:UpdatePanel>--%>
                       &nbsp;
                       <asp:LinkButton ID="LnkDisenos" runat="server"    OnClick="LnkDisenos_Click" CssClass="btn btn-default" >
                          <span class="icon-images"></span> &nbsp;Diseños
                       </asp:LinkButton>

                   </td>
                  
                       
                  
              </tr>
            

          </table>
       
     </div>
     <div class="main container">

             <ul class="nav nav-tabs">
                <li class="active" style="background-color:#BDBDBD;"><a data-toggle="tab" href="#tab_InformacionGeneral">  <span class="icon-info-with-circle"></span> Información General</a></li>
                <li style="background-color:#BDBDBD;"><a data-toggle="tab" style="color:#DF0101 !important"; href="#tab_Oferta"><span class="icon-calculator"></span> Oferta Económica</a></li>
                <li style="background-color:#BDBDBD;"><a data-toggle="tab" href="#tab_Instalacion"><span class="glyphicon glyphicon-envelope"></span> Instalación / Entrega</a></li>
              </ul>

              <div class="tab-content">
                    <div id="tab_InformacionGeneral" class="tab-pane fade in active">
                      <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>--%>
                         <table class="trans_table">
                             <tr>
                                 <td>Estado:</td>
                                 <td>
                                     <asp:UpdatePanel ID="UpdatePanel38" runat="server">
                                        <ContentTemplate>
                                           <asp:DropDownList ID="CMBEstado" runat="server" AutoPostBack="true" onchange="validacambioestado();" OnSelectedIndexChanged="CMBEstado_SelectedIndexChanged">
                                             <asp:ListItem Value="Ofertado">Ofertado</asp:ListItem> 
                                             <asp:ListItem Value="Fallido">Fallido</asp:ListItem> 
                                             <asp:ListItem Value="Aprobado">Aprobado</asp:ListItem> 
                                             <asp:ListItem Value="Instalado">Instalado</asp:ListItem> 
                                             <asp:ListItem Value="Terminado">Terminado</asp:ListItem>
                                           </asp:DropDownList>
                                         </ContentTemplate>
                              </asp:UpdatePanel>

                                 </td>
                                  <td>Competencia:</td>
                                 <td>
                                     <asp:TextBox ID="TXTCompetencia" width="130" runat="server"></asp:TextBox></td>
                                  <td>
                                      <asp:Button ID="CMD_AgregarCampana" runat="server" Text="Agregar a Campaña" OnClientClick="return abrircampana();"   /></td>
                                 <td>Tipo Cambio:
                                     <asp:TextBox ID="TXTTipoCambioContrato" runat="server" onKeyPress="return soloNumerosCP(event)" MaxLength="6" Width="60"></asp:TextBox>
                                 </td>
                             </tr>
                         </table>
                        
                        <%--<div id="divCompleto" class="main container">
                          --%>   
                          <div class="rowsPanel panel panel-primary">
                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                                     Contacto de Compra
                                     <span class="icon-chevron-small-down rightBar"></span>
                                 </div>
                                 <div class="panel-body">
                                     <div class="shadowrow collapse in" id="collapse1">
                                        <div class="well">
                                            <asp:UpdatePanel ID="UpdatePanel12" runat="server" >
                                             <ContentTemplate>
                                                 <div class="row">
                                                    <div class="col-md-6">
                                                        <div>
                                                          <p>
                                                                 <asp:LinkButton ID="LNKContacto1" runat="server" OnClick="LNKContacto1_Click" ToolTip="Buscar Contactos del cliente">
                                                                     <span class="glyphicon glyphicon-search"></span>&nbsp;Nombre:</asp:LinkButton>

                                                                 <asp:HiddenField ID="txtreferencia" runat="server"  Value=""/>       
                                                              
                                                             <asp:TextBox ID="TXTContacto1" runat="server" width="130" Enabled="false"></asp:TextBox>
                                                             Teléfono:
                                                            <asp:TextBox ID="TXTtel1" runat="server" width="130"  Enabled="false"></asp:TextBox>
                                                        </p>
                                                            </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                         <div>
                                                          <p>
                                                                <%-- <td>Celular:</td>
                                                                 <td><asp:TextBox ID="TXTCelular1" runat="server" class="textboxpeq" Width="80" Visible="false" Enabled="false"></asp:TextBox></td>--%>
                                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:
                                                                 <asp:TextBox ID="TXTEmail1" runat="server" width="130" Enabled="false"></asp:TextBox>
                                                                &nbsp;&nbsp;&nbsp;Puesto:
                                                                 <asp:TextBox ID="TXTPuesto1" runat="server" width="130"  Enabled="false"></asp:TextBox>     
                                                           </p>
                                                           </div>
                                                    </div>
                                                </div>
                                                  <div class="row">
                                                    <div class="col-md-6">
                                                        <div>
                                                        <p>
                                                                 <asp:LinkButton ID="LNKContacto2" runat="server" OnClick="LNKContacto2_Click" ToolTip="Buscar Contactos del cliente">
                                                                       <span class="glyphicon glyphicon-search"></span>&nbsp;Nombre:</asp:LinkButton>
                                                              
                                                                 <asp:TextBox ID="TXTContacto2" runat="server"  width="130" Enabled="false"></asp:TextBox>
                                                                 Teléfono:
                                                                 <asp:TextBox ID="TXTtel2" runat="server" width="130"  Enabled="false"></asp:TextBox>
                                                                <%-- <td>Celular:</td>
                                                                 <td><asp:TextBox ID="TXTCelular2" runat="server" class="textboxpeq"  Width="80" Visible="false" Enabled="false"></asp:TextBox></td>--%>
                                                    
                                                             </p>
                                                            </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div>
                                                           <p>       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:
                                                                    <asp:TextBox ID="TXTEmail2" runat="server" width="130"  Enabled="false"></asp:TextBox>
                                                                   &nbsp;&nbsp;&nbsp;Puesto:
                                                                    <asp:TextBox ID="TXTPuesto2" runat="server" width="130"  Enabled="false"></asp:TextBox>
                                                                    <%-- </ContentTemplate>
                                                                               <Triggers>
                                                                                    <asp:AsyncPostBackTrigger ControlID="LNKContacto2" EventName="Click"  />
                                                                               </Triggers>
                                                                      </asp:UpdatePanel>--%>
                                                          </p>
                                                         </div>
                                                    </div>
                                                </div>
                                                
                                               
                                            </ContentTemplate>                    
                                           </asp:UpdatePanel>
                                         </div>
                                    </div>
                                 </div>
                            </div>

                             <div class="rowsPanel panel panel-primary">
                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapseExample">
                                     Detalle del proyecto
                                    <span class="icon-chevron-small-down rightBar"></span>
                                 </div>
                                 <div class="panel-body">
                                     <div class="shadowrow collapse in" id="collapse2">
                                        <div class="well">
                                            <asp:Panel ID="GBDetalleCliente" runat="server">
                                            <table class="trans_table" >
                                                 <tr>
                                                     <td>Condición:</td>
                                                     <td>
                                                           <asp:UpdatePanel ID="UpdatePanel17" runat="server">
                                                             <ContentTemplate>
                                                                 <asp:DropDownList ID="CMBCondicion" runat="server" OnSelectedIndexChanged="CMBCondicion_SelectedIndexChanged" AutoPostBack="true">
                                                                      <%--<asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>--%>
                                                                      <asp:ListItem Value="Cambios plano">Cambios plano</asp:ListItem>
                                                                      <asp:ListItem Value="Pendiente diseño">Pendiente diseño</asp:ListItem>
                                                                      <asp:ListItem Value="Falta revisión y aprobación">Falta revisión y aprobación</asp:ListItem>
                                                                      <asp:ListItem Value="Estudio">Estudio</asp:ListItem>
                                                                      <asp:ListItem Value="Otro">Otro</asp:ListItem>   
                                                                 </asp:DropDownList>
                                                                </ContentTemplate>
                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="CMBCondicion" EventName="selectedindexchanged" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                     </td>
                                                     <td>
                                                         <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                                                                  <ContentTemplate>
                                                                       <asp:Label ID="LBLOtro" runat="server" Text="Condición:" Visible="false"></asp:Label>
                                                                  </ContentTemplate>
                                                           </asp:UpdatePanel> 
                                                     </td>
                                                     <td> 
                                                        <asp:UpdatePanel ID="UpdatePanel21" runat="server">
                                                              <ContentTemplate>
                                                                   <asp:TextBox ID="TXTOtro" runat="server" class="textboxpeq" Visible="false"></asp:TextBox>
                                                              </ContentTemplate>
                                                         </asp:UpdatePanel>
                                                     </td>
                                                     <td>Medio de Contacto:</td>
                                                     <td><asp:DropDownList ID="CMBMedioCreacion" runat="server">
                                                         <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                                         <asp:ListItem Value="Facebook">Facebook</asp:ListItem>
                                                         <asp:ListItem Value="Sitio Web">Sitio Web</asp:ListItem>
                                                         <asp:ListItem Value="Correo Electrónico">Correo Electrónico</asp:ListItem>
                                                         <asp:ListItem Value="Show Room">Show Room</asp:ListItem>
                                                         <asp:ListItem Value="Llamada telefónica">Llamada telefónica</asp:ListItem>
                                                         <asp:ListItem Value="Prospecto">Prospecto</asp:ListItem>
                                                         <asp:ListItem Value="Chat Vértice">Chat Vértice</asp:ListItem>
                                                         <asp:ListItem Value="Telemarketing">Telemarketing</asp:ListItem>
                                                         <asp:ListItem Value="Email Marketing">Email Marketing</asp:ListItem>
                                                         <asp:ListItem Value="Whatsapp">Whatsapp</asp:ListItem>
                                                         <asp:ListItem Value="Otro">Otro</asp:ListItem>
                                                         
                                                         </asp:DropDownList></td>
                                                     <td></td>
                                                     <td></td>
                                                  </tr>
                                                  <tr>
                                                     <td>País:</td>
                                                     <td>
                                                           <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                             <ContentTemplate>
                                                         <asp:DropDownList ID="CMBPais" runat="server" OnSelectedIndexChanged="CMBPais_SelectedIndexChanged" AutoPostBack="True" >
                                                              <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                                              <asp:ListItem Value="República Dominicana">República Dominicana</asp:ListItem>
                                                              <asp:ListItem Value="Panamá">Panamá</asp:ListItem>
                                                              <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                                                              <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                                              <asp:ListItem Value="Salvador">Salvador</asp:ListItem>
                                                              <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                                                              <asp:ListItem Value="Otro">Otro</asp:ListItem>
                                                         </asp:DropDownList>

                                                       </ContentTemplate>

                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="CMBPais" EventName="selectedindexchanged" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>

                                                     </td>
                                                     <td>
                                                          <asp:UpdatePanel ID="UpdatePanel18" runat="server">
                                                              <ContentTemplate>
                                                                    <asp:Label ID="LBLOtroPais" runat="server" Text="Ingrese el país" Visible="false"></asp:Label>
                                                              </ContentTemplate>

                                                          </asp:UpdatePanel>
                                                        
                                                     </td>
                                                     <td>
                                                         
                                                      <asp:UpdatePanel ID="UpdatePanel19" runat="server">
                                                          <ContentTemplate>
                                                              <asp:TextBox ID="TXTOtroPais" runat="server" class="textboxpeq" Visible="false"></asp:TextBox>
                                                          </ContentTemplate>
                                                      </asp:UpdatePanel>
                                                     </td>
                                                     <td></td>
                                                     <td></td>
                                                     <td><%--Remedida:--%></td>
                                                     <td><asp:DropDownList ID="CMBRemedida" runat="server" Visible="false">
                                                            <asp:ListItem>Sitio listo</asp:ListItem>
                                                            <asp:ListItem>Sitio no listo</asp:ListItem>
                                                            <asp:ListItem>No se remide</asp:ListItem>
                                                            <asp:ListItem>Remedida Efectuada</asp:ListItem>
                                                         </asp:DropDownList></td>
                                                  </tr>
                                                <tr>
                                                     <td>Provincia:</td>
                                                     <td>
                                                          <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                             <ContentTemplate>
                                                                 <asp:DropDownList ID="CMBProvincias" runat="server" OnSelectedIndexChanged="CMBProvincias_SelectedIndexChanged" AutoPostBack="True" >
                                                                       <asp:ListItem Value="0">Seleccione</asp:ListItem>
                                                                        <asp:ListItem Value="San José">San José</asp:ListItem>
                                                                           <asp:ListItem Value="Heredia">Heredia </asp:ListItem>
                                                                           <asp:ListItem Value="Alajuela">Alajuela </asp:ListItem>
                                                                           <asp:ListItem Value="Cartago">Cartago</asp:ListItem>
                                                                           <asp:ListItem Value="Puntarenas">Puntarenas</asp:ListItem>
                                                                           <asp:ListItem Value="Guanacaste">Guanacaste</asp:ListItem>
                                                                           <asp:ListItem Value="Limón">Limón</asp:ListItem>  
                                                                 </asp:DropDownList>
                                                                  </ContentTemplate>

                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="CMBProvincias" EventName="selectedindexchanged" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>

                                                     </td>
                                                     <td>Otras señas: (Dirección HTI)</td>
                                                     <td colspan="3">
                                                          <asp:UpdatePanel ID="UpdatePanel27" runat="server">
                                                             <ContentTemplate>
                                                                    <asp:TextBox ID="TXTDireccion" runat="server" class="textboxpeq" TextMode="MultiLine" width="90%" ></asp:TextBox>
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                     </td>
                                                     
                                                     <td></td>
                                                     <td></td>
                                                  </tr>
                                                <tr>
                                                     <td>Cantón:</td>
                                                     <td>
                                                           <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                             <ContentTemplate>
                                                                 <asp:DropDownList ID="CMBCanton" runat="server"></asp:DropDownList>
                                                              </ContentTemplate>
                                                           </asp:UpdatePanel>
                                                      </td>
                                                     <td></td>
                                                     <td></td>
                                                     <td></td>
                                                     <td></td>
                                                     <td></td>
                                                     <td></td>
                                                  </tr>
                                             </table>
                                           </asp:Panel>
                                         </div>

                                    </div>
                                 </div>
                            </div>

                     </div>
                          

                           <%--  </ContentTemplate>
                        </asp:UpdatePanel>--%>
                    

                    <div id="tab_Oferta" class="tab-pane fade">     <!--tab-pane fade    este no es el principal -->
                       <asp:UpdatePanel ID="UpdatePanel11" runat="server" >
                            <ContentTemplate>
                          <%--<div class="rowsPanel panel panel-primary">
                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapseExample">
                                      Mantenimiento Oferta Económica
                                     <span class="rightBar glyphicon glyphicon-chevron-down"></span>
                                 </div>
                                 <div class="panel-body">--%>
                                     <%--<div class="shadowrow collapse in" id="collapse3">
                                        <div class="wellof">--%>

                                            <div class="row">
                                                  <div class="col-md-8 of">
                                                       <div class="rowsPanel panel panel-primary">
                                                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapseExample">
                                                                 Detalle
                                                                 <span class="icon-chevron-small-down rightBar"></span>
                                                             </div>
                                                             <div class="panel-body">
                                                                 <div class="shadowrow collapse in" id="collapse7">
                                                                    <div class="well">

                                                        <div style="height:300px; overflow:auto">
                                                          <asp:GridView ID="DataGridOfertEco" runat="server" Font-Size="8pt"   AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                                               DataKeyNames="cCodigo,Area,Departamento,Impuesto,DescuentoAutomatico,PrecioEspecialImpues,PrecioListaImpues,IdLinea,MontoTotal"
                                                               OnRowDataBound="DataGridOfertEco_RowDataBound"
                                                               OnRowEditing="DataGridOfertEco_RowEditing" 
                                                               OnRowUpdating="DataGridOfertEco_RowUpdating"
                                                               OnRowCancelingEdit="DataGridOfertEco_RowCancelingEdit"
                                                               OnRowCommand="DataGridOfertEco_RowCommand"
                                                              OnRowDeleting="DataGridOfertEco_RowDeleting"
                                                              >
                                                              <Columns>
                                                                   
                                                                         
                                                                  <asp:TemplateField HeaderText="Cantidad" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Cantidad" runat="server" Text='<%#Eval("Cantidad" ,"{0:N0}") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Cantidad" runat="server" MaxLength="12" Width="50" onKeyPress="return dgv_soloNumeros(event,this)" Text='<%#Eval("Cantidad" ,"{0:N0}") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="Codigo" ItemStyle-HorizontalAlign="Center">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Codigo" runat="server" Text='<%#Eval("cCodigo") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Codigo" runat="server" onKeyPress="return dgv_update(event,this)" Width="80" MaxLength="10" Text='<%#Eval("cCodigo") %>'></asp:TextBox>


                                                                                                  <ajax:AutoCompleteExtender  
                                                         ServiceMethod="GetList"
                                                        CompletionListCssClass ="autocomplete_completionListElement"                               
                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                        CompletionListItemCssClass="autocomplete_listItem" 
                                                         MinimumPrefixLength="2"  
                                                        CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXT_Codigo"  
                                                        ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false"
                                                            >  
                                                     </ajax:AutoCompleteExtender> 





                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>

                                                                         <asp:TemplateField HeaderText="Bodega" ItemStyle-HorizontalAlign="Center">
                                                                                          <%--  <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Bodega" runat="server" Text='<%#Eval("sBodega") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                   <%-- <asp:TextBox ID="TXT_Bodega" runat="server" Width="30"  Text='<%#Eval("sBodega") %>'></asp:TextBox>--%>
                                                                                                   
                                                                                              <%--  <asp:LinkButton ID="TXT_Bodega" runat="server"  CommandName="bodega"  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" ><%#Eval("sBodega") %></asp:LinkButton>
                                                                                            </EditItemTemplate>--%>

                                                                             <ItemTemplate>
                                                                                <asp:Button ID="TXT_Bodega" runat="server" Enabled="false"
                                                                                  CommandName = "bodega" 
                                                                                  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                                                                 Text='<%#Eval("sBodega") %>'  ></asp:Button>
                                                                              </ItemTemplate> 
                                                                                            
                                                                         </asp:TemplateField>

                                                                         <asp:TemplateField HeaderText="Descripcion General" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Descripcion" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Descripcion" runat="server" onKeyPress="return dgv_update(event,this)"  MaxLength="200" Width="100%" Text='<%#Eval("Descripcion") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>

                                                                   <asp:TemplateField HeaderText="Area" Visible ="false" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Area" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Area" runat="server" Text='<%#Eval("Area") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="Departamento" visible="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Departamento" runat="server" Text='<%#Eval("Departamento") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Departamento" runat="server" Text='<%#Eval("Departamento") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="Precio Unitario + i.v." ItemStyle-HorizontalAlign="Left" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioUnitario" runat="server" ToolTip="Moneda"  Text='<%#Eval("PrecioUnitario") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioUnitario" runat="server" Width="70" MaxLength="12" onKeyPress="return dgv_soloNumerosCP(event,this)" Text='<%#Eval("PrecioUnitario") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="Precio Total + i.v."  ItemStyle-HorizontalAlign="Left">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioLista" runat="server" ToolTip="Moneda" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioLista" runat="server" Width="70" MaxLength="12" onKeyPress="return dgv_soloNumerosCP(event,this)" Text='<%#Eval("PrecioLista") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>

                                                                   <asp:TemplateField HeaderText="PrecioEspecial"  ItemStyle-HorizontalAlign="Left">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioEspecial" runat="server" ToolTip="Moneda" Text='<%#Eval("PrecioEspecial") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioEspecial" runat="server" Width="70" MaxLength="12" onKeyPress="return dgv_soloNumerosCP(event,this)" Text='<%#Eval("PrecioEspecial") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="IVI" visible="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Impuesto" runat="server" Text='<%#Eval("Impuesto") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Impuesto" runat="server" Text='<%#Eval("Impuesto") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="Tipo Descuento" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_DescuentoAutomatico" runat="server" Text='<%#Eval("DescuentoAutomatico") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_DescuentoAutomatico" runat="server" Text='<%#Eval("DescuentoAutomatico") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>

                                                                  <asp:TemplateField HeaderText="Desc %" ItemStyle-HorizontalAlign="Left" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Descuento" runat="server"  Text='<%#Eval("Descuento" ) %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Descuento" runat="server" Width="30" MaxLength="6"  onKeyPress="return dgv_soloNumeros(event,this)"   Text='<%#Eval("Descuento","{0:N0}" ) %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                 <%-- <asp:TemplateField HeaderText="PrecioListaTotal" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioListaTotal" runat="server" Text='<%#Eval("PrecioListaTotal") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioListaTotal" runat="server" Text='<%#Eval("PrecioListaTotal") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>--%>
                                                            <%--      <asp:TemplateField HeaderText="PrecioEspecialTotal" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioEspecialTotal" runat="server" Text='<%#Eval("PrecioEspecialTotal") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioEspecialTotal" runat="server" Text='<%#Eval("PrecioEspecialTotal") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>--%>
                                                                  <asp:TemplateField HeaderText="PrecioEspecialImpues" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioEspecialImpues" runat="server" Text='<%#Eval("PrecioEspecialImpues") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioEspecialImpues" runat="server" Text='<%#Eval("PrecioEspecialImpues") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                   <asp:TemplateField HeaderText="PrecioListaImpues" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_PrecioListaImpues" runat="server" Text='<%#Eval("PrecioListaImpues") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_PrecioListaImpues" runat="server" Text='<%#Eval("PrecioListaImpues") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="IdLineaH3" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_IdLineaH3" runat="server" Text='<%#Eval("IdLinea") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_IdLineaH3" runat="server" Text='<%#Eval("IdLinea") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="Imp" ItemStyle-HorizontalAlign="Center">
                                                                                            
                                                                                             <EditItemTemplate>
                                                                                                    <%--<asp:TextBox ID="TXT_CkImpuesto" runat="server" Width="30" Text='<%#Eval("CkImpuesto") %>'></asp:TextBox>--%>
                                                                                                    
                                                                                                <asp:DropDownList ID="TXT_CkImpuesto" runat="server"  >
                                                                                                      <asp:ListItem>Si</asp:ListItem>
                                                                                                      <asp:ListItem>No</asp:ListItem>
                                                                                                </asp:DropDownList>

                                                                                            </EditItemTemplate>
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_CkImpuesto" runat="server" Text='<%#Bind("CkImpuesto") %>'></asp:Label>
                                                                                            </ItemTemplate>     
                                                                   </asp:TemplateField>

                                                                    

                                                                  <asp:TemplateField HeaderText="OfertaMadre" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_OfertaMadre" runat="server" Text='<%#Eval("OfertaMadre") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_OfertaMadre" runat="server" Text='<%#Eval("OfertaMadre") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="OfertaTotal" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_OfertaTotal" runat="server" Text='<%#Eval("OfertaTotal") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_OfertaTotal" runat="server" Text='<%#Eval("OfertaTotal") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="DescuentoTotal" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_DescuentoTotal" runat="server" Text='<%#Eval("DescuentoTotal") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_DescuentoTotal" runat="server" Text='<%#Eval("DescuentoTotal") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>
                                                                  <asp:TemplateField HeaderText="MontoTotal" Visible ="false">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_MontoTotal" runat="server" Text='<%#Eval("MontoTotal") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_MontoTotal" runat="server" Text='<%#Eval("MontoTotal") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                         </asp:TemplateField>


                                                                  
                                                                
                                                                  <asp:TemplateField HeaderText="Referencia" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_TeoReferencia" runat="server" Text='<%#Eval("TeoReferencia") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_TeoReferencia" onKeyPress="return dgv_update(event,this)" runat="server" MaxLength="10" Width="50" Text='<%#Eval("TeoReferencia") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
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
                                                                   <asp:TemplateField HeaderText="" ControlStyle-Width="25">
                                                                         <ItemTemplate>
                                                                              <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                   CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                                    OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                    Text="Delete">     
                                                                               </asp:ImageButton>
                                                                          </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                         
                                                                         
                                                              </Columns>

                                                          </asp:GridView><br />

                                                           
                                                        </div>
                                                                        <table >
                                                                            <tr>
                                                                               
                                                                                <td >
                                                                                    <%-- <asp:UpdatePanel ID="UpdatePanel38" runat="server">
                                                                                            <ContentTemplate>--%>
                                                                                                  <nav>
				                                                                                    <ul >
					                                                                          
					                                                                                    <li class="submenu" id="subnav">
						                                                                                    <a href="javascript:void(0)"><span class="glyphicon glyphicon-cog"></span></a>
						                                                                                    <ul class="children">
							                                                                                   <li><a href="javascript:void(0)"><asp:Button ID="CMDCargarProductoPCGraf" CssClass="btn btn-default" runat="server" Text="Cargar Producto PC Graf" OnClientClick="return opencargaproducto();"   /></a></li>       
		                                                                                                        <li><a href="javascript:void(0)"> <asp:Button ID="CMD_DatosOferta" CssClass="btn btn-default" runat="server" Text="Cargar Pedidos PC Graf" OnClientClick="return openformpedidos();"  /></a></li>
		                                                                                                        <li><a href="javascript:void(0)"> <asp:Button ID="CMDHO03_CrearPedido" CssClass="btn btn-default" runat="server" Text="Crear Pedido PC Graf" OnClientClick="return validarcrearpedidopcg();" OnClick="CMDHO03_CrearPedido_Click"  /></a></li>
                                                                                                                <li><a href="javascript:void(0)"> <asp:Button ID="CMDHO03_VerificarDisponibles" CssClass="btn btn-default" runat="server" Text="Verificar disponibles" OnClientClick="return validarverificardisponibles();" OnClick="CMDHO03_VerificarDisponibles_Click" /></a></li>
		                                                                                                        <li><a href="javascript:void(0)"><asp:Button ID="CMD_VerInfoFactura" CssClass="btn btn-default" runat="server" Text="Detalle Facturacion" OnClick="CMD_VerInfoFactura_Click" OnClientClick="return activarloadmail();"  /></a></li>
						                                                                                    </ul>
					                                                                                    </li>
					                                                                            
				                                                                                    </ul>
			                                                                                    </nav>
                                                                                            <%--</ContentTemplate>
                                                                                      </asp:UpdatePanel>--%>
                                                                                      
                                                                                </td>
                                                                                 <td valign="top"> 
                                                                                     &nbsp;&nbsp;<asp:Button ID="CMDEconomicaAdd" runat="server" Text="Agregar" BackColor="Tomato"
                                                                                        OnClick="CMDEconomicaAdd_Click" OnClientClick="return agregarlinea();"  />
                                                                                 </td>
                                                                            </tr>
                                                                        </table>
                                                                       
                                                       </div>
                                                      </div>

                                                     </div>
                                                   </div>
                                                  </div>
                                                      
                                                      
                                                  
                                                  <div class="col-md-4 of">
                                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                          <ContentTemplate>
                                                          <div class="rowsPanel panel panel-primary">
                                                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapseExample">
                                                                 Forma de pago I.V.I
                                                                 <span class="icon-chevron-small-down rightBar"></span>
                                                             </div>
                                                             <div class="panel-body">
                                                                 <div class="shadowrow collapse in" id="collapse5">
                                                                    <div class="well">
                                                                        <asp:Panel ID="PnlFormaPago" runat="server">
                                                                         <table class="trans_table">
                                                                             <tr>
                                                                                 <td>Forma Pago:</td>
                                                                                 <td> <asp:DropDownList ID="CMBPlanPago" runat="server" OnSelectedIndexChanged="CMBPlanPago_SelectedIndexChanged" AutoPostBack="true" onchange="cambioplan();" >
                                                                                          <asp:ListItem Value="-1">Seleccione</asp:ListItem>
                                                                                          <asp:ListItem Value="0">Contado</asp:ListItem>
                                                                                          <asp:ListItem Value="1">100 Pago contra entrega</asp:ListItem>
                                                                                          <asp:ListItem Value="2">50-50 Dos Pagos</asp:ListItem>
                                                                                          <asp:ListItem Value="3">Otra</asp:ListItem> 
                                                                                      </asp:DropDownList></td>
                                                                                  <td></td>
                                                                                 <td></td>
                                                                                
                                                                             </tr>
                                                                             <tr>
                                                                                 <td align="right">Tipo de Cambio:</td>
                                                                                 <td><asp:TextBox ID="TXTTipoCambio" runat="server" onKeyPress="return soloNumerosCP(event)" MaxLength="6" Width="60" Enabled="false"></asp:TextBox></td>
                                                                                 <td></td>
                                                                                 <td></td>
                                                                             </tr>
                                                                         </table>
                                                                        <!-- aqui deberia ir un div para hacer overflow:hidden del contenido --> 

                                                                      <div style="height:150px; overflow:auto">
                                                                        <asp:GridView ID="DataGridPlan" runat="server" Font-Size="8pt" Width="100%" 
                                                                            DataKeyNames="IdLineaPlan,Monto"
                                                                            AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                                                            OnRowDeleting="DataGridPlan_RowDeleting" 
                                                                            OnRowEditing="DataGridPlan_RowEditing"
                                                                            OnRowUpdating="DataGridPlan_RowUpdating"
                                                                            OnRowCancelingEdit="DataGridPlan_RowCancelingEdit"
                                                                            OnRowDataBound="DataGridPlan_RowDataBound">
                                                                            <Columns>
                                                                               <%-- <asp:BoundField DataField="IdLinea" HeaderText="IdLinea" Visible="False" />--%>
                                                                              <%--  <asp:TemplateField HeaderText="IdLinea" Visible ="false" >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_IdLinea" runat="server" Text='<%#Eval("IdLineaPlan") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_IdLinea" runat="server" Text='<%#Eval("IdLineaPlan") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                                </asp:TemplateField>--%>

                                                                                <asp:TemplateField HeaderText="%"  >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Porcentaje" runat="server" Text='<%#Eval("Porcentaje") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Porcentaje" onkeyPress="return dgvsoloNumerosCP(event,this);"  runat="server" Width="50" MaxLength="5" Text='<%#Eval("Porcentaje" ) %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Monto"  >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_Monto" runat="server" Text='<%#Eval("Monto") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_Monto" runat="server" Width="70" MaxLength="12" onKeyPress="return dgvsoloNumerosCP(event,this);" Text='<%#Eval("Monto") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="DescripcionPlan"  >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_DescripcionPlan" runat="server" Text='<%#Eval("DescripcionPlan") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TXT_DescripcionPlan" onKeyPress="return dgvupdate(event,this);"  runat="server" MaxLength="99" Width="110" Text='<%#Eval("DescripcionPlan") %>'></asp:TextBox>
                                                                                            </EditItemTemplate>
                                                                                </asp:TemplateField>

                                                                                 <asp:TemplateField HeaderText="FechaPlan"  >
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="LBL_FechaPlan" runat="server" Text='<%#Eval("FechaPlan", "{0:MM-dd-yyyy}" ) %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <EditItemTemplate>
                                                                                                  <asp:TextBox ID="txtFechaPlan"  Text='<%#Eval("FechaPlan" , "{0:MM-dd-yyyy}" ) %>' runat="server" ClientIDMode="AutoID" Width="70" onKeyPress="return false;" ></asp:TextBox>

                                                                                                  <ajax:CalendarExtender ID="txtCalendar_CalendarExtender"  TargetControlID="txtFechaPlan"  runat="server" Format="MM-dd-yyyy" />
                                                                                            </EditItemTemplate>
                                                                                </asp:TemplateField>

                                                                               <%-- <asp:BoundField DataField="Porcentaje" HeaderText="%" />
                                                                                <asp:BoundField DataField="Monto" HeaderText="Monto" />
                                                                                <asp:BoundField DataField="DescripcionPlan" HeaderText="DescripcionPlan" />--%>
                                                                                <%--<asp:BoundField DataField="FechaPlan" HeaderText="FechaPlan"  DataFormatString="{0:dd/MM/yyyy}" />--%>

                                                                                 <%-- <asp:TemplateField>
                                                                                        <ItemTemplate>
                                                                                            <asp:TextBox ID="txtCalendar"  Text='<%#Eval("FechaPlan" , "{0:dd/MM/yyyy}" ) %>' runat="server" ClientIDMode="AutoID" Width="70" ></asp:TextBox>

                                                                                            <ajax:CalendarExtender ID="txtCalendar_CalendarExtender"  TargetControlID="txtCalendar"  runat="server" Format="dd-MM-yyyy" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>--%>

                                                                                 <asp:TemplateField ControlStyle-Width="20">
                                                                                    <ItemTemplate>
                                                                                        <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="3" />
                                                                                    </ItemTemplate>
                                                                                   <EditItemTemplate>
                                                                                      <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" />
                                                                                      <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" />
                                                                                   </EditItemTemplate>
                                                                                    <ControlStyle Width="20px" />
                                                                                </asp:TemplateField>

                                                                                <asp:TemplateField HeaderText="" ControlStyle-Width="20">
                                                                                     <ItemTemplate>
                                                                                          <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                                               CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                                                OnClientClick="javascript:return confirm('Esta Seguro que desea eliminar permanente este registro?');"
                                                                                                Text="Delete">     
                                                                                           </asp:ImageButton>
                                                                                      </ItemTemplate>
                                                                                </asp:TemplateField>

                                                                            </Columns>
                                                                         </asp:GridView>
                                                                       </div>
                                                                       
                                                                        <asp:Button ID="CMDAgregarPlan" runat="server" Text="Agregar" OnClick="CMDAgregarPlan_Click" OnClientClick="return validamadre();" />
                                                                        <table class="trans_table" >
                                                                            <tr>
                                                                                
                                                                                <td colspan="2" align="right">Pendiente de Asignar:</td>
                                                                                <td align="right"> &nbsp;&nbsp;
                                                                                    <asp:TextBox ID="TXTPendientepercibir" onKeyPress="return soloNumerosCP(event)" MaxLength="12" runat="server" Width="120"></asp:TextBox></td>
                                                                            </tr>
                                                                             <tr>
                                                                                
                                                                                <td colspan="2" align="right">Deposito para Reservar: </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="LBLMoneda3" runat="server" Text="$"></asp:Label>
                                                                                    <asp:TextBox ID="TXTReserva" runat="server" onKeyPress="return soloNumerosCP(event)" MaxLength="12" Width="120"></asp:TextBox></td>
                                                                            </tr>
                                                                             <tr>
                                                                              
                                                                                <td colspan="2" align="right">Total Oferta IVI: </td>
                                                                                <td align="right">
                                                                                    <asp:Label ID="LBLMoneda2" runat="server" Text="$"></asp:Label>
                                                                                    <asp:TextBox ID="TXTMontoOferta" runat="server" onKeyPress="return soloNumerosCP(event)" MaxLength="12" Width="120" ></asp:TextBox></td>
                                                                            </tr>
                                                                        </table>
                                                                        </asp:Panel>

                                                                    </div>
                                                                 </div>
                                                              </div>
                                                          </div>
                                                         </ContentTemplate>
                                                       </asp:UpdatePanel>


                                                  </div>
                                            </div>       <!--fin row-->
                                          

                                            <div class="row">
                                                
                                                                         <div class="col-xs-9">

                                                                             <table class="trans_tablecondiciones"  >
                                                                                   
                                                                                    <tr>
                                                                                        <td colspan="3"><h3>Condiciones</h3></td>
                                                                                        <td align="right" valign="top">
                                                                                           
                                                                                        </td>
                                                                                       <%-- <td  rowspan="6" valign="top">
                                                                                         
                                                                                            

                                                                                        </td>--%>
                                                                                        <td>Sub Total:</td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TXTSubLista" runat="server" Text="0.00" Width="120" Enabled="false"></asp:TextBox>
                                                                                            <asp:TextBox ID="TXTSubEspecial" runat="server" Text="0.00" Visible="false"></asp:TextBox>

                                                                                        </td>
                                                               
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td colspan="4" rowspan="5">
                                                                                            <asp:Panel ID="PanelCondiciones" runat="server">
                                                                                            <table >
                                                                                                 <tr>
                                                                                                      <td>  Visualizar Unitarios en facturas/contrato:</td>
                                                                                                      <td>
                                                                                                            <asp:RadioButtonList ID="RBT_Visualizar" runat="server" RepeatDirection="Horizontal" CellSpacing="5" CellPadding="5">
                                                                                                                <asp:ListItem Text="Si" Value="1" Selected="True"></asp:ListItem>
                                                                                                                 <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                                                            </asp:RadioButtonList>
                                                                                                      </td>
                                                                                                      <td>Cambiar Unit</td>
                                                                                                      <td>
                                                                                                          <asp:RadioButtonList ID="RbtCambUni" runat="server" RepeatDirection="Horizontal" CellSpacing="5" CellPadding="5">
                                                                                                              <asp:ListItem Text="Si" Value="1" Selected="True"></asp:ListItem>
                                                                                                              <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                                                          </asp:RadioButtonList>
                                                                                                      </td>
                                                                                                 </tr>
                                                                                                <tr>
                                                                                                     <td>Tiempo de entrega:</td>
                                                                                                     <td><asp:TextBox ID="TXTTiempo" runat="server"></asp:TextBox></td>
                                                                                                     <td>Vigencia Oferta:</td>
                                                                                                     <td><asp:TextBox ID="TXT_VigenciaOferta" runat="server"></asp:TextBox></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                     <td>Transporte:</td>
                                                                                                     <td>
                                                                                                         <asp:RadioButtonList ID="RBT_Transp" runat="server" OnSelectedIndexChanged="RBT_Transp_SelectedIndexChanged" AutoPostBack="true" RepeatDirection="Horizontal" CellSpacing="5" CellPadding="5">
                                                                                                            <asp:ListItem Text="Si" Value="1" Selected="True"></asp:ListItem>
                                                                                                             <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                                                        </asp:RadioButtonList>
                                                                                                     </td>
                                                                                                     <td>Instalación:</td>
                                                                                                     <td>
                                                                                                         <asp:RadioButtonList ID="RbtInstalac" runat="server"  OnSelectedIndexChanged="RbtInstalac_SelectedIndexChanged" AutoPostBack="true"  RepeatDirection="Horizontal" CellSpacing="5" CellPadding="5">
                                                                                                            <asp:ListItem Text="Si" Value="1" Selected="True"></asp:ListItem>
                                                                                                             <asp:ListItem Text="No" Value="0"></asp:ListItem>
                                                                                                        </asp:RadioButtonList>
                                                                                                     </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                        <td>Notas especiales:</td>
                                                                                                        <td>
                                                                                                             <asp:RadioButtonList ID="RBT_Notas" runat="server" RepeatDirection="Horizontal" CellSpacing="5" CellPadding="5">
                                                                                                                <asp:ListItem Text="Si" Value="1" ></asp:ListItem>
                                                                                                                 <asp:ListItem Text="No" Value="0" Selected="True"></asp:ListItem>
                                                                                                             </asp:RadioButtonList>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Label ID="LBL_LugarEntrega" runat="server" Text="Lugar de Retiro:"></asp:Label></td>
                                                                                                        <td>
                                                                                                            <asp:DropDownList ID="CMBLugarRetiro" runat="server">
                                                                                                                  <%--<asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Facebook">Facebook</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Sitio Web">Sitio Web</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Correo Electrónico">Correo Electrónico</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Show Room">Show Room</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Llamada telefónica">Llamada telefónica</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Prospecteo ">Prospecteo </asp:ListItem>
                                                                                                                  <asp:ListItem Value="Chat Vértice">Chat Vértice</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Telemarketing">Telemarketing</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Email Marketing">Email Marketing</asp:ListItem>
                                                                                                                  <asp:ListItem Value="Otro">Otro</asp:ListItem>--%>
                                                                                                            </asp:DropDownList>
                                                                                                        </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                     <td colspan="2">
                                                                                                        Notas especiales:<br />
                                                                                                        <asp:TextBox ID="TXTNotasEspeciales" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                                                                                    </td>
                                                               
                                                                                                    <td colspan="2" align="center">
                                                                                                        <asp:TextBox ID="TXT_DireccionRetiro" runat="server" TextMode="MultiLine"></asp:TextBox><br />
                                                                                                       <%-- <asp:UpdatePanel ID="UpdatePanel14" runat="server" UpdateMode="Conditional">
                                                                                                               <ContentTemplate>--%>
                                                                                                                   <asp:Button ID="CMD_SolicitarFacturacion" runat="server" Text="Solicitar Facturación" OnClick="CMD_SolicitarFacturacion_Click"  ForeColor="Black" BackColor="#FFCC00" BorderColor="#666666" Font-Bold="True" />
                                                                                                                <%-- </ContentTemplate>--%>
                                                                                                                <%-- <Triggers>
                                                                                                                          <asp:PostBackTrigger ControlID="CMD_Incluir" />   
                                                                                                                 </Triggers>--%>
   
                                                                                                     <%-- </asp:UpdatePanel>--%>
                                                                                                     </td>
                                                                                                </tr>
                                                                                             </table>
                                                                                            </asp:Panel>
                                                                                        </td>
                                                               
                                                                                        <%-- <td>
                                                                                               
                                                                                        </td>
                                                                                        <td>   </td>--%>
                                                                                        <td>Impuesto:</td>
                                                                                        <td><asp:TextBox ID="TXTImptLista" runat="server" Text="0.00" Width="120" Enabled="false"></asp:TextBox>
                                                                                            <asp:TextBox ID="TXTImptEspecial" runat="server" Text="0.00" Visible="false"></asp:TextBox>

                                                                                        </td>
                                                               
                                                                                    </tr>
                                                                                     <tr>
                                                               
                                                                                       <%-- <td colspan="2"></td>--%>
                                                                                        <td>Exento:</td>
                                                                                        <td><asp:TextBox ID="TXTExento" runat="server" Text="0.00" Width="120" Enabled="false"></asp:TextBox>
                                                                                            <asp:TextBox ID="TXTExentoEspecial" runat="server" Text="0.00" Visible="false"></asp:TextBox>
                                                                                            
                                                                                        </td>
                                                               
                                                                                    </tr>
                                                                                     <tr>
                                                               
                                                                                       <%-- <td colspan="2">
                                                                                            
                                                                                        </td>--%>
                                                                                        <td>Descuento:</td>
                                                                                        <td><asp:TextBox ID="TXTDescuento" runat="server" Text="0.00" Width="120" Enabled="false"></asp:TextBox></td>
                                                               
                                                                                    </tr>
                                                                                     <tr>
                                                               
                                                                                       <%-- <td colspan="2">
                                                                                           
                                                                                        </td>--%>
                                                                                        <td>Precio Total:</td>
                                                                                        <td><asp:TextBox ID="TXTTotalLista" runat="server"  Text="0.00" Width="120" Enabled="false"></asp:TextBox>
                                                                                            <asp:TextBox ID="TXTTotalEspecial" runat="server" Text="0.00" Visible="false"></asp:TextBox>

                                                                                        </td>
                                                                
                                                                                    </tr>
                                                                                     <tr>
                                                               
                                                                                       <%-- <td colspan="2">
                                                                                           
                                                                                        </td>--%>
                                                                                        <td><asp:Button ID="CMDBitacoraHO03" runat="server" Text="Bitacora..."  OnClick="CMDBitacoraHO03_Click" OnClientClick="return openbitacora();" /></td>
                                                                                        <td><asp:Button ID="CMD_DuplicarOferta" runat="server" Text="Duplicar Oferta" Width="100%" OnClientClick="return validaduplicar();" OnClick="CMD_DuplicarOferta_Click" /></td>
                                                               
                                                                                    </tr>
                                                                                </table>
                                                                         </div>
                                                                        <div class="col-xs-3">
                                                                            
                                                                        </div>
                                                                   </div>
                                              

                                      <%--  </div>
                                    </div>
                                </div>--%>

                                  </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                      
                       
                         <div id="tab_Instalacion" class="tab-pane fade">

                             <div class="rowsPanel panel panel-primary">
                                                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse8" aria-expanded="true" aria-controls="collapseExample">
                                                                 Información de Instalación
                                                                 <span class="icon-chevron-small-down rightBar"></span>
                                                             </div>
                                                             <div class="panel-body">
                                                                 <div class="shadowrow collapse in" id="collapse8">
                                                                       <div class="well">
                                    <div class="row">    
                                        
                                                                    <div class="col-md-8">
                                                                   <asp:UpdatePanel ID="UpdatePanel39" runat="server" >
                                                                       <ContentTemplate>
                                                                           <asp:HiddenField ID="TXTIdInstalacion" runat="server" Value="0" />
                                                                             <table >
                                                                                <tr>
                                                                                    <td>Fecha Entrega:</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="DTPFechaInstalacion" runat="server"  Width="140px" ></asp:TextBox>
                                                                                         <asp:ImageButton ID="Ibtn_FechaInstalac" ImageUrl="../images/Calendar_schedule.png"  OnClick="Ibtn_FechaInstalac_Click" ImageAlign="Bottom" runat="server" Enabled="false"  />
                                                                                         <ajax:CalendarExtender ID="CalendarExtenderFI"  PopupButtonID="Ibtn_FechaInstalac" TargetControlID="DTPFechaInstalacion" Enabled="false"  runat="server" Format="MM/dd/yyyy hh:mm:ss" />

                                                                                    </td>
                                                                                    <td>Prevista Eléctrica</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="CMBPrevistaElectrica" runat="server" Enabled="false" >
                                                                                            <asp:ListItem Value="-1">Seleccione</asp:ListItem>
                                                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Viaticos</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="CMBViaticos" runat="server" Enabled="false" >
                                                                                            <asp:ListItem Value="-1">Seleccione</asp:ListItem>
                                                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                        </asp:DropDownList></td>
                                                                                    <td>Piso de Instalación</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TXTPisoInstalacion" runat="server" TextMode="Number" Enabled="false" MaxLength="2" min="0" max="99" step="1" onKeyPress="return soloNumeros(event)"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Plano Instalación</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="CMBPlanoInstalacion" runat="server" Enabled="false" >
                                                                                            <asp:ListItem Value="-1">Seleccione</asp:ListItem>
                                                                                            <asp:ListItem Value="0">No</asp:ListItem>
                                                                                            <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                        </asp:DropDownList></td>
                                                                                    <td><!--Teléfono:--></td>
                                                                                    <td>
                                                                                      <asp:TextBox ID="TXTTelfEncargadoRec" runat="server" Enabled="false" Visible="false"  onKeyPress="return soloNumeros(event)" MaxLength="49"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Encargado de recibir:</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TXTEncargadoRecibir" Enabled="false" MaxLength="49"  runat="server"></asp:TextBox></td>
                                                                                    <td>Teléfono/Celular:</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TXTInst_Celular" Enabled="false"  runat="server" onKeyPress="return soloNumeros(event)" MaxLength="49"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Transportista:</td>
                                                                                    <td>
                                                                                        <asp:DropDownList ID="CMBTransportistas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CMBTransportistas_SelectedIndexChanged" Enabled="false"  Width="130px">
                                                                                            <asp:ListItem Value="-1">Seleccione</asp:ListItem>
                                                                                            <asp:ListItem value="VERTICE">VERTICE</asp:ListItem>
                                                                                            <asp:ListItem value="ALEX">ALEX</asp:ListItem>
                                                                                            <asp:ListItem value="El Golfo Express">El Golfo Express</asp:ListItem>
                                                                                             <asp:ListItem value="ALFARO (ANAY)">ALFARO (ANAY)</asp:ListItem>
                                                                                             <asp:ListItem value="BOGANTES (ANAY)">BOGANTES (ANAY)</asp:ListItem>
                                                                                             <asp:ListItem value="BADILLA  Y OBANDO">BADILLA  Y OBANDO</asp:ListItem>
                                                                                             <asp:ListItem value="BARQUERO">BARQUERO</asp:ListItem>
                                                                                             <asp:ListItem value="CENTENO">CENTENO</asp:ListItem>
                                                                                             <asp:ListItem value="CASTRO">CASTRO</asp:ListItem>
                                                                                             <asp:ListItem value="CAJETA EXPRESS (COBRA SJ)">CAJETA EXPRESS (COBRA SJ)</asp:ListItem>

                                                                                             <asp:ListItem value="CORCOBADO">CORCOBADO</asp:ListItem>
                                                                                             <asp:ListItem value="CHICO (ANAY)">CHICO (ANAY)</asp:ListItem>
                                                                                             <asp:ListItem value="COCORI">COCORI</asp:ListItem>
                                                                                             <asp:ListItem value="COLONO">COLONO</asp:ListItem>
                                                                                             <asp:ListItem value="CLAUDIO LOPEZ">CLAUDIO LOPEZ</asp:ListItem>
                                                                                             <asp:ListItem value="CORDERO">CORDERO</asp:ListItem>
                                                                                             <asp:ListItem value="CURUBANDE">CURUBANDE</asp:ListItem>
                                                                                             <asp:ListItem value="DELGADO">DELGADO</asp:ListItem>
                                                                                             <asp:ListItem value="DUARCO">DUARCO</asp:ListItem>
                                                                                             <asp:ListItem value="DEMAR">DEMAR</asp:ListItem> 
                                                                
                                                                                             <asp:ListItem value="DELO MORALES">DELO MORALES</asp:ListItem>
                                                                                             <asp:ListItem value="EMPRESARIOS UNIDOS">EMPRESARIOS UNIDOS</asp:ListItem>
                                                                                             <asp:ListItem value="EL RAPIDO">EL RAPIDO</asp:ListItem>
                                                                                             <asp:ListItem value="EL MACHO">EL MACHO</asp:ListItem>
                                                                                             <asp:ListItem value="EL PUMA">EL PUMA</asp:ListItem>
                                                                                             <asp:ListItem value="GUANACASTE EXPRESS">GUANACASTE EXPRESS</asp:ListItem>
                                                                                             <asp:ListItem value="GUATUZO">GUATUZO</asp:ListItem>
                                                                                             <asp:ListItem value="JIMENEZ">JIMENEZ</asp:ListItem>
                                                                                            <asp:ListItem value="JR Y R">JR Y R</asp:ListItem>
                                                                                            <asp:ListItem value="LA PENINSULA">LA PENINSULA</asp:ListItem>
                                                                
                                                                                            <asp:ListItem value="LAZARO EXPRESS (ANAY)">LAZARO EXPRESS (ANAY)</asp:ListItem>
                                                                                             <asp:ListItem value="LOS RAPIDOS DE UPALA">LOS RAPIDOS DE UPALA</asp:ListItem>
                                                                                            <asp:ListItem value="UPALA EXPRESS">UPALA EXPRESS</asp:ListItem>
                                                                                            <asp:ListItem value="LOPEZ E HIJOS">LOPEZ E HIJOS</asp:ListItem>
                                                                                            <asp:ListItem value="LOAIZA HERMANOS">LOAIZA HERMANOS</asp:ListItem>
                                                                                            <asp:ListItem value="MIRAVALLES EXPRESS">MIRAVALLES EXPRESS</asp:ListItem>
                                                                                            <asp:ListItem value="MIRAMAR">MIRAMAR</asp:ListItem>
                                                                                            <asp:ListItem value="MEJIA">MEJIA</asp:ListItem>
                                                                                            <asp:ListItem value="MUSOC">MUSOC</asp:ListItem>
                                                                                            <asp:ListItem value="OCAMPO SANDERS">OCAMPO SANDERS</asp:ListItem>
                                                                
                                                                                            <asp:ListItem value="OROTINA">OROTINA</asp:ListItem>
                                                                                            <asp:ListItem value="PACIFICO CENTRAL">PACIFICO CENTRAL</asp:ListItem>
                                                                                            <asp:ListItem value="PICAME (BODEGA LOPEZ)">PICAME (BODEGA LOPEZ)</asp:ListItem>
                                                                                            <asp:ListItem value="PULMITAN">PULMITAN</asp:ListItem>
                                                                                            <asp:ListItem value="QUIROS Y JIMENEZ">QUIROS Y JIMENEZ</asp:ListItem>
                                                                                            <asp:ListItem value="QUESADA">QUESADA</asp:ListItem>
                                                                                            <asp:ListItem value="RAMIREZ (EL MACHO)">RAMIREZ (EL MACHO)</asp:ListItem>
                                                                                            <asp:ListItem value="RIOBA">RIOBA</asp:ListItem>
                                                                                            <asp:ListItem value="RODRIGUEZ">RODRIGUEZ</asp:ListItem>
                                                                                            <asp:ListItem value="SAN CARLALEÑOS">SAN CARLALEÑOS</asp:ListItem>
                                                               
                                                                                             <asp:ListItem value="SUPER RAPIDO">SUPER RAPIDO</asp:ListItem>
                                                                                            <asp:ListItem value="TAVO">TAVO</asp:ListItem> 
                                                                                            <asp:ListItem value="TARRAZU">TARRAZU</asp:ListItem>
                                                                                            <asp:ListItem value="TONY">TONY</asp:ListItem>
                                                                                            <asp:ListItem value="TRALI">TRALI</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSKAJA">TRANSKAJA</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSACO">TRANSACO</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSCAMA">TRANSCAMA</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSBRUNCA">TRANSBRUNCA</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSNARANJO">TRANSNARANJO</asp:ListItem>

                                                                                            <asp:ListItem value="TRANSNAVAS">TRANSNAVAS</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSPURIS">TRANSPURIS</asp:ListItem>
                                                                                            <asp:ListItem value="TRANSROEN">TRANSROEN</asp:ListItem>
                                                                                            <asp:ListItem value="TREJOS">TREJOS</asp:ListItem>
                                                                                            <asp:ListItem value="TEMPISQUE">TEMPISQUE</asp:ListItem>
                                                                                            <asp:ListItem value="TRACOPA">TRACOPA</asp:ListItem>
                                                                                            <asp:ListItem value="VEGA DEL NORTE">VEGA DEL NORTE</asp:ListItem>
                                                                                            <asp:ListItem value="VEGA DEL SUR">VEGA DEL SUR</asp:ListItem>
                                                                                             <asp:ListItem value="VARMA">VARMA</asp:ListItem>
                                                                                             <asp:ListItem value="VARGAS SOLIS (BODEGAS TONY)">VARGAS SOLIS (BODEGAS TONY)</asp:ListItem>

                                                                                             <asp:ListItem value="YUBA">YUBA</asp:ListItem>
                                                                                             <asp:ListItem value="TRANSPORTE CÓBANO">TRANSPORTE CÓBANO</asp:ListItem>
                                                                                             <asp:ListItem value="OTRO">OTRO</asp:ListItem>

                                                                                        </asp:DropDownList>

                                                                                       
                                                                                    </td>
                                                                                    <td>
                                                                                        <asp:Label ID="LBLOtroInst" runat="server" Visible="false" Text="Otro:"></asp:Label></td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TXTInst_Otro" Visible="false" MaxLength="49"  runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td></td>
                                                                                    <td></td>
                                                                                    <td>Tiempo de Entrega:</td>
                                                                                    <td>
                                                                                        <asp:TextBox ID="TXT_TiempoEntrega" Enabled="false" MaxLength="49"  runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                   <td>Indicaciones:</td>
                                                                                   <td colspan="3">
                                                                                       <asp:TextBox ID="TXTIndicaciones" runat="server" Enabled="false" MaxLength="2000"  TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                                                                                   </td>
                                                                               </tr>

                                                                            </table>
                                                                            </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                       </div>
                                                                    
                                        <div class="col-md-4">
                                           
                                                                   <asp:UpdatePanel ID="UpdatePanel40" runat="server" >
                                                                       <ContentTemplate>
                                                                             <table >
                                                                                      <tr>
                                                                                           <td> <asp:LinkButton ID="PicDetalleLlamada" runat="server"  CssClass="btn" OnClick="PicDetalleLlamada_Click">
                                                                                             
                                                                                                   <span class="glyphicon glyphicon-question-sign" style="color:#171680;"></span>
                                                                                               </asp:LinkButton>

                                                                                              <asp:Label ID="lblUsuarioLlamo" runat="server" Text="" Visible="false"></asp:Label>
                                                                                              <asp:Label ID="lblFechaLlamo" runat="server" Text="" Visible="false"></asp:Label>
                                                                                          </td>
                                                                                           <td>

                                                                                              <asp:CheckBox ID="CHKLlamadaConfirmacion" runat="server" Enabled="false" />
                                                                                              Llamada de confirmación del sitio
                                                                                          </td>
                                                                                         
                                                     
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td colspan="2">Método de Pago
                                                                                              <hr />
                                                                                          </td>
                                                                                          
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td>Pago Contra entrega:</td>
                                                                                          <td>
                                                                                               <asp:UpdatePanel ID="UpdatePanel42" runat="server" >
                                                                                               <ContentTemplate>
                                                                                                 <asp:DropDownList ID="CMB_Pago_Cntra_Entrega" Enabled="false" AutoPostBack="true" OnSelectedIndexChanged="CMB_Pago_Cntra_Entrega_SelectedIndexChanged"  runat="server">  
                                                                                                    <asp:ListItem Value="0">No</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Si</asp:ListItem>
                                                                                                </asp:DropDownList>
                                                                                               </ContentTemplate>
                                                                                              </asp:UpdatePanel>
                                                                                          </td>
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td>Medio de pago</td>
                                                                                          <td>
                                                          
                                                                                          </td>
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td colspan="2">
                                                                                              <asp:RadioButtonList ID="RBT_Pago" runat="server" Enabled="false"  CellPadding="15" RepeatDirection="Horizontal">
                                                                                                   <asp:ListItem Value="E">Efectivo</asp:ListItem>
                                                                                                   <asp:ListItem Value="C">Cheque</asp:ListItem>
                                                                                                   <asp:ListItem Value="T">Transferencia</asp:ListItem>
                                                                                              </asp:RadioButtonList>
                                                                                          </td>
                                                     
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td colspan="2"></td>
                                                      
                                                                                      </tr>
                                                                                       <tr>
                                                                                          <td>
                                                                                              <asp:LinkButton ID="CMDMail_Instalacion"  OnClick="CMDMail_Instalacion_Click"  runat="server" CssClass="btn btn-default"  >
                                                                                                <span class="glyphicon glyphicon-envelope" style="color:#B40404;"></span>&nbsp;Enviar Mail Instalación
                                                                                           </asp:LinkButton>
                                                                                          </td>
                                                                                          <td>
                                                                                            

                                                                                              <asp:LinkButton ID="CMDAdjuntar" runat="server" Enabled="false"  CssClass="btn btn-default" visible="false" OnClientClick="return openadjuntos();" >
                                                                                                     <span class="glyphicon glyphicon-paperclip"></span>&nbsp;Adjuntos
                                                                                               </asp:LinkButton>
                                                                                          </td>
                                                                                      </tr>
                                                                                  </table>
                                                                               </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                       </div>
                                                                 </div>

                                                                 


                                                            </div>
                                                </div>
                                              
                                        </div>
                                     </div>

                                    <div class="rowsPanel panel panel-primary">
                                                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse9" aria-expanded="true" aria-controls="collapseExample">
                                                                 Logística
                                                                 <span class="icon-chevron-small-down rightBar"></span>
                                                             </div>
                                                             <div class="panel-body">
                                                                 <div class="shadowrow collapse in" id="collapse9">
                                                                       <div class="well">
                                                             <div class="row">    
                                        
                                                                    <div class="col-md-8">
                                                                   <asp:UpdatePanel ID="UpdatePanel41" runat="server" >
                                                                       <ContentTemplate>
                                                                             <table>
                                                                                <tr>
                                                                                    <td>Cantidad de KM:</td>
                                                                                    <td align="right">
                                                                                        <asp:TextBox ID="TXTCantKm" runat="server" MaxLength="99" Enabled="false" ></asp:TextBox> 
                                                                                    </td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Conductor:</td>
                                                                                    <td align="right"><asp:TextBox ID="TXTConductor" MaxLength="99" runat="server" Enabled="false" ></asp:TextBox>
                                                                                       </td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Encargado de Instalación:</td>
                                                                                    <td align="right">
                                                                                        <asp:TextBox ID="TXTEncargadoInstalacion" MaxLength="49" runat="server" Enabled="false" ></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                   
                                                                                    <td>Teléfono:</td>
                                                                                    <td align="right">
                                                                                        <asp:TextBox ID="TXTTelfInst" Enabled="false" MaxLength="49"  runat="server"  ></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Costo de Transporte:</td>
                                                                                    <td>$
                                                                                        <asp:TextBox ID="TXTCostoTransporte" Enabled="false" MaxLength="12" onkeypress="return soloNumerosCP(event)"  runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                    <td>Mano de Obra:</td>
                                                                                    <td>$
                                                                                        <asp:TextBox ID="TXTCostoManoObra" Enabled="false" MaxLength="12" onkeypress="return soloNumerosCP(event)"  runat="server"></asp:TextBox></td>
                                                                                </tr>
                                                                               <tr>
                                                                                   <td>Gastos Viáticos:</td>
                                                                                   <td >$
                                                                                      <asp:TextBox ID="TXTCostoViaticos" Enabled="false" MaxLength="12" onkeypress="return soloNumerosCP(event)"  runat="server"></asp:TextBox>
                                                                                   </td>
                                                                               </tr>
                                                                                <tr>
                                                                                    <td>Estado de la entrega</td>
                                                                                    <td>
                                                                                         <asp:RadioButtonList ID="RBTEntrega" runat="server" Enabled="false"   >
                                                                                                   <asp:ListItem Value="1">Completa</asp:ListItem>
                                                                                                   <asp:ListItem Value="0" Selected="True">Incompleta</asp:ListItem>        
                                                                                          </asp:RadioButtonList>
                                                                                    </td>
                                                                                </tr>

                                                                            </table>
                                                                            </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                       </div>
                                                                   
                                                               <div class="col-md-4">
                                           
                                                                   <asp:UpdatePanel ID="UpdatePanel43" runat="server" >
                                                                       <ContentTemplate>
                                                                            
                                                                                           <asp:LinkButton ID="CMDAddDocumentos" Enabled="false"  runat="server" visible="false" CssClass="btn btn-default"  >
                                                                                                <span class="glyphicon glyphicon-ok" style="color:#B40404;"></span>&nbsp;Adjuntar HTI Firmado
                                                                                           </asp:LinkButton> <br /><br />
                                                                                        
                                                                                             
                                                                                              <asp:LinkButton ID="CMDAddFotografias" runat="server" Enabled="false" visible="false" CssClass="btn btn-default"  >
                                                                                                     <span class="glyphicon glyphicon-picture" style="color:#05b724;"></span>&nbsp;Adjuntar Fotografías
                                                                                              </asp:LinkButton>
                                                                                        
                                                                               </ContentTemplate>
                                                                            </asp:UpdatePanel>
                                                                       </div>
                                                                 </div>


                                                            </div>
                                                </div>
                                              
                                        </div>
                                     </div>

                     
         
             </div>   <!-- fin del container tab-->
                   
             
                    
        
                   <table class="trans_table" >    
                              <tr>
                                  <td align="left">
                                      <asp:ImageButton ID="Btndeslizar" runat="server" ImageUrl="~/images/printer.png" OnClientClick="return abrirImpresion();" />&nbsp;&nbsp;
                                      
                                      <asp:ImageButton ID="CMDLiberar" runat="server" ImageUrl="~/images/select_32.png" ToolTip="Liberar Oferta" OnClick="CMDLiberar_Click" OnClientClick="return validarliberar();"/>
                                  </td>
                                  <td align="right">
                                      <asp:Button ID="CMDIncluir" runat="server" Text="Nuevo"  OnClientClick="ClearControls();" OnClick="CMDIncluir_Click"  CssClass="btnazul"/>
                                       <asp:Button ID="CMDActualizar" runat="server" Text="Actualizar"  Visible="false" OnClick="CMDActualizar_Click"  OnClientClick="return validacampos();"  CssClass="btnverde" />
                                       <asp:Button ID="CMDModificar" runat="server" Text="Modificar"  OnClick="CMDModificar_Click"   OnClientClick="" CssClass="btnverde" />

                                       <asp:Button ID="CMDsalir" runat="server" Text="Salir" OnClick="CMDsalir_Click"  CssClass="btngris" />

                                  </td>
                  
                              </tr>
                          </table>
      

     </div>
          </div>


    <asp:HiddenField ID="txtcambiodolares" runat="server"  Value=""/>
     <asp:HiddenField ID="txtcambiopedidodolares" runat="server"  Value=""/>
    <asp:HiddenField ID="txtcambiomonedapedido" runat="server"  Value=""/>
     <asp:HiddenField ID="txtvalidacambiobodega" runat="server"  Value=""/>
    <asp:HiddenField ID="txtcambioplan" runat="server"  Value=""/>
     <asp:HiddenField ID="cmbestado2" runat="server"  Value=""/>
     <asp:HiddenField ID="cambioestado2" runat="server"  Value=""/>
     
    
   

    
    
     <asp:HiddenField ID="Pedido_Generado" runat="server"  Value=""/>
     <asp:HiddenField ID="DTPFechaInstalacionh" runat="server"  Value=""/>
     <asp:HiddenField ID="Fecha_Bloqueo" runat="server"  Value="1900-01-01"/> 
     <asp:HiddenField ID="QuienBloqueo" runat="server"  Value=""/>

       <%--  <rsweb:ReportViewer ID="ReportInstalacion" Width="1100px" Height="900px" Visible="true" runat="server"></rsweb:ReportViewer>
         --%>

</asp:Content>
