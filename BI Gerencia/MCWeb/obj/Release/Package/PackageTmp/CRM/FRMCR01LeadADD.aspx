<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableSessionState="True" CodeBehind="FRMCR01LeadADD.aspx.cs"
    Inherits="MCWebHogar.CRMVertice.FRMCR01LeadADD" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #068a10;
            color: #f2f2f2;
            cursor: pointer;
            padding: 7px;
            font-size: 14px;
            border-radius: 5px;
            position: relative;
            box-sizing: border-box;
            transition: all 500ms ease;
            left: 0px;
            top: -20px;
        }
    </style>


    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <meta name="viewport" content="width=device-width" />


    <script type="text/javascript">

        //         $(document).ready(function(){
        //$('.launch-modal').click(function(){
        //    $('#FormBuscarElectrodomesticosV').modal({

        //        keyboard: true

        //    });
        //}); 
        //         });

        function KeyPressed(e) {
            //Get the Key Code
            //alert('test1');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                $("[id*='CMD_BuscarVentaDirecta']").click();


            }
        }

        $("#TXT_CodigoProducto2").on("keydown", function (e) {
            if (e.which == 13) {
                //Do something.
                alert('si');
            }
        });

        function doclick() {

            //__doPostBack('', '');

            //$('#FormBuscarElectrodomesticosV').dialog('open');
            //alert('test1');
            //$('#CMD_BuscarVentaDirecta').click();
        }

        function detour2(e) {
            alert('si');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                alert('listo2');
                $('#CMD_BuscarVentaDirecta').click();
                alert('listO3');
                document.getElementById("CMD_SearchProdPcgraf").click();
                alert('listo');
            }

            //var key = window.Event ? e.which : e.keyCode
            //if (key == 13) {
            //    document.getElementById("CMD_BuscarVentaDirecta").click();
            //    alert('listo');
            //}
        }



        function cerrarModalCitasVendedores() {
            $('#CMD_ModalEditarEvento').click();
            return false;
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
            document.getElementById('<%= LBLTituloMenu.ClientID %>').value = 'testtttttttt';

            return false;
        }
        function SetFechas() {
            var now = new Date();
            var day = ("0" + now.getDate()).slice(-2);
            var month = ("0" + (now.getMonth() + 1)).slice(-2);
            var today = now.getFullYear() + "-" + (month) + "-" + (day);
            var today2 = today;
            document.getElementById('<%= TXT_DE.ClientID %>').value = today2;
            document.getElementById('<%= TXT_A.ClientID %>').value = today;
        }
        function abrirmodalCitasVendedores() {

            //alert('aaaaa');
             <%-- document.getElementById('<%= TipoCalendario.ClientID %>').value = "Citas Diseñador"
            $('#<%=LBL_TipoCita.ClientID%>').html("Citas Diseñador");--%>

                
            <%--alert(document.getElementById('<%= LBL_TipoCita.ClientID %>').value);
            alert('bbbbb');--%>
             document.getElementById("btn_FormCitas").click();
             SetFechas();
             return false;
        }
        function abrirmodalConvertir() {
                 document.getElementById("btn_FormConvertir").click();
                 SetFechas();
                 return false;
             }
         function abrirmodalCitasRemedidas() {

             //alert('aaaaa');
             <%--  document.getElementById('<%= TipoCalendario.ClientID %>').value = "Citas Remedidas"
            $('#<%=LBL_TipoCita.ClientID%>').html("Citas Remedidas");--%>
            <%--alert(document.getElementById('<%= LBL_TipoCita.ClientID %>').value);
            alert('bbbbb');--%>
             document.getElementById("btn_FormCitas").click();
             SetFechas();
             return false;
         }
         function abrirmodalCitasMuebles() {

             //alert('aaaaa');
             <%--document.getElementById('<%= TipoCalendario.ClientID %>').value = "Citas Muebles"
            $('#<%=LBL_TipoCita.ClientID%>').html("Citas Muebles");--%>
            <%--alert(document.getElementById('<%= LBL_TipoCita.ClientID %>').value);
            alert('bbbbb');--%>
             document.getElementById("btn_FormCitas").click();
             SetFechas();
             return false;
         }
         function abrirmodalCitasSobres() {

             //alert('aaaaa');
               <%--  document.getElementById('<%= TipoCalendario.ClientID %>').value = "Citas Sobres"
            $('#<%=LBL_TipoCita.ClientID%>').html("Citas Sobres");--%>
            <%--alert(document.getElementById('<%= LBL_TipoCita.ClientID %>').value);
            alert('bbbbb');--%>
               document.getElementById("btn_FormCitas").click();
               SetFechas();
               return false;
           }

           $('#cerrarp').click(function () {
               $("#divCompleto").removeClass("bloqueo");
           });
           $('#cerrar2').click(function () {
               $("#divCompleto").removeClass("bloqueo");
           });

           $('#btn_newAdj').click(function () {

               //$('#popAdjunto').dialog('open');
               document.getElementById("btn_popAdjunto").click();

           });


           function openpoparchivo() {

               // alert('llego y pop' + s);
               document.getElementById("btnpopArchivo").click();

               return false;
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
               //document.getElementById('MenuVersiones').style.display = 'block';

               return false;
           }

           function salvarversion() {
               var conf = confirm('Está seguro que desea salvar esta versión y hacerla definitiva?');
               if (conf) {
                   activarloading();
                   document.getElementById('MenuAdjuntos').style.display = 'block';
                   document.getElementById('MenuNotas').style.display = 'block';
                   document.getElementById('MenuOfertaEconomica').style.display = 'block';
                   document.getElementById('MenuVersiones').style.display = 'block';

               } else {
                   document.getElementById('MenuAdjuntos').style.display = 'block';
                   document.getElementById('MenuNotas').style.display = 'block';
                   document.getElementById('MenuOfertaEconomica').style.display = 'block';
                   document.getElementById('MenuVersiones').style.display = 'block';
                   return false;
               }
           }

           function cambioplan() {
         <%--<%--   var _gv = document.getElementById('<%=DataGridPlan.ClientID %>');
            var len = _gv.rows.length;
            if (len > 1) {
                var conf = confirm('Este proyecto ya tiene un plan definido si desea modificar el plan a uno definido se eliminaran los datos actules, Esta seguro?');
                if (conf) {

                    document.getElementById('<%= txtcambioplan.ClientID %>').value = '1';
                    return true;
                } else {
                    document.getElementById('<%= txtcambioplan.ClientID %>').value = '2';
                    return false;
                }
            }--%>

        }

        function openpopsubirarchivo(area, subarea) {

            <%--document.getElementById('<%= TXT_SubArea.ClientID %>').value = subarea;
            document.getElementById('<%= TXT_Area.ClientID %>').value = area;--%>
            // alert('llego y pop' + s);
            document.getElementById("btnpopSubirArchivo").click();


            return false;
        }

        function validarInfoContacto() {


<%--            var TXT_NombreContactoCliente = document.getElementById('<%= TXT_NombreContactoCliente.ClientID %>').value.trim();
            TXT_NombreContactoCliente = TXT_NombreContactoCliente.trim();
            var TXT_Correo = document.getElementById('<%= TXT_Correo.ClientID %>').value.trim();
            TXT_Correo = TXT_Correo.trim();

            var TXT_Telefono = document.getElementById('<%= TXT_Telefono.ClientID %>').value.trim();
            TXT_Telefono = TXT_Telefono.trim();
            var TXT_Celular = document.getElementById('<%= TXT_Celular.ClientID %>').value.trim();
            TXT_Celular = TXT_Celular.trim();


            if (TXT_NombreContactoCliente.length == 0) {
                error('Debe Ingresar el nombre del contacto.');
                return false;
            }
            if (TXT_Correo.length == 0) {
                error('Debe Ingresar el E-mailñ del contacto.');
                return false;
            }
            if (TXT_Telefono.length == 0 && TXT_Celular.length == 0) {
                error('Debe Ingresar el teléfono o el celular del contacto.');
                return false;
            }--%>

        }

        function soloNumerosCP(e, t) {
            var value = t.value;
            if (e.keyCode == 46) {
                if (value.indexOf('.') != -1) {
                    //alert("Ya Existe un punto");
                    return false;
                }
            }
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 46)
        }

        function soloNumerosCPN(e, t) {   //acepta ell -
            var value = t.value;
            if (e.keyCode == 46) {
                if (value.indexOf('.') != -1) {
                    //alert("Ya Existe un punto");
                    return false;
                }
            }
            if (e.keyCode == 45) {
                if (value.indexOf('-') != -1) {
                    //alert("Ya Existe un punto");
                    return false;
                }
            }
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 46 || key == 45)
        }

        function ImprimirDesglose() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirDesglose', '');

            return false;
        }

        function ImprimirCotizacion(cotizacion) {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirCotizacion', cotizacion);

            return false;
        }

        function ImprimirEntrega(num) {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirEntrega', num);

            return false;
        }


        function ImprimirMachote() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirMachote', '');


            return false;
        }

        function ImprimirMachoteImagenes() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirMachoteImagenes', '');


            return false;
        }
        function ImprimirRequisitos() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirControlRequisitos', '');


            return false;
        }

        function ImprimirChkLContrato() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirChkLContrato', '');


            return false;
        }
        function ImprimirRepresentanteLegal() {
            activarloading();
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            __doPostBack('CMDImprimirContactosLegales', '');


            return false;
        }

        function ImprimirContrato() {

            activarloading();
            __doPostBack('CMDImprimirContrato', '');
            document.getElementById('MenuAdjuntos').style.display = 'block';
            document.getElementById('MenuNotas').style.display = 'block';
            document.getElementById('MenuOfertaEconomica').style.display = 'block';
            return false;
        }


        function validasignacion() {
            var DT_HoraInicio = document.getElementById('<%= DT_HoraInicio.ClientID %>').value;
            var DT_HoraFinal = document.getElementById('<%= DT_HoraFinal.ClientID %>').value;

            var DT_FechaSolicitud = document.getElementById('<%= DT_FechaSolicitud.ClientID %>').value;
            var DT_FechaCierre2 = document.getElementById('<%= DT_FechaCierre2.ClientID %>').value;

            if (DT_HoraInicio == DT_HoraFinal) {
                error('La fecha de inicio no puede ser igual a la fecha final.'); desactivarloading();
                return false;
            }

            if (DT_FechaSolicitud > DT_FechaCierre2) {
                error('La fecha de final no puede ser menor a la fecha de inicio.'); desactivarloading();
                return false;
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

        function openPopAdjunto() {

            <%-- var TXT_Lead = document.getElementById('<%= TXT_Lead.ClientID %>').value;
             
             if (TXT_Lead.length == 0) {
                 mostraralertifyerror('Debe guardar primero el Lead.');

              } else {
                 // document.getElementById('<%= TXTNombreDocumento.ClientID %>').selectedIndex = 0;
                  document.getElementById('<%= TXTObservaciones.ClientID %>').value = '';--%>
            //$('#popAdjunto').dialog('open');

            //}
            document.getElementById("btn_popAdjunto").click();

            return false;
        }

        function closePopAdjunto() {
            // $('#popAdjunto').dialog('close');

            return false;
        }

        function abrirmodalnotas() {

                <%--<%--document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';
             document.getElementById('<%= TXTTituloNota.ClientID %>').value = '';--%>
             //document.getElementById('FormNotas').style.display = 'block';
             //document.getElementById('fade').style.display = 'block';


             document.getElementById("btn_FormNotas").click();

             return false;
         }
         function abrirmodalnotasPresupuesto() {

                <%--<%--document.getElementById('<%= TXTContenidoNota.ClientID %>').value = '';
             document.getElementById('<%= TXTTituloNota.ClientID %>').value = '';--%>
             //document.getElementById('FormNotas').style.display = 'block';
             //document.getElementById('fade').style.display = 'block';

             //document.getElementById('<%= LBL_ERRORPRESUPUESTO.Text %>').value = '';
             document.getElementById("btn_FormNotasImprimir").click();

             return false;
         }

         function cerrarPopNotas() {

             document.getElementById("Content_BTNCerrar").click();
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

               $('#popCalendario').dialog({
                   autoOpen: false,
                   modal: true,
                   width: 800,
                   Height: 600,
                   title: 'Agendar Diseño de Oferta',
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


               //$('#FormEntrega').dialog({
               //    autoOpen: false,
               //    modal: true,
               //    width: 800,
               //    Height: 600,
               //    title: 'Información de Entrega',
               //    //buttons: {
               //    //    "Cerrar": function () {
               //    //        // document.getElementById('popCargarPedidoPCG').style.display = "none";
               //    //        $(this).dialog("close");
               //    //    }
               //    //},
               //    open: function (type, data) {
               //        $(this).parent().appendTo("form");
               //        // $("[id*='CMD_SearchProdPcgraf']").click();
               //        //$('#TXT_FiltroProducto').focus();
               //    }
               //});

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

               //$('#popAdjunto').dialog({
               //    autoOpen: false,
               //    modal: true,
               //    width: 450,
               //    height: 400,
               //    title: 'Adjuntar Archivo',

               //    open: function (type, data) {
               //        $(this).parent().appendTo("form");
               //    }
               //});

               //$('#FormNotas').dialog({
               //    autoOpen: false,
               //    modal: true,
               //    width: 350,
               //    Height: 300,
               //    title: '',
               //    //buttons: {
               //    //    "Cerrar": function () {
               //    //        // document.getElementById('popCargarPedidoPCG').style.display = "none";
               //    //        $(this).dialog("close");
               //    //    }
               //    //},
               //    open: function (type, data) {
               //        $(this).parent().appendTo("form");
               //        // $("[id*='CMD_SearchProdPcgraf']").click();
               //        //$('#TXT_FiltroProducto').focus();
               //    }
               //});






               $('#cerrarp').click(function () {
                   $("#divCompleto").removeClass("bloqueo");
               });
               $('#cerrar2').click(function () {
                   $("#divCompleto").removeClass("bloqueo");
               });




           });

        function openpopclientes() {

            document.getElementById('btn_popClientes').click();
        }

        function closepopclientes() {

            document.getElementById('btn_popClientes').click();

        }

        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 32)
        }

        function abrirformcontacto() {

            document.getElementById('btn_popContacto').click();

            // 
            //$('#popContacto').dialog({
            //    autoOpen: false,
            //    modal: true,
            //    width: 700,
            //    Height: 200,
            //    title: 'Buscar Clientes',
            //    buttons: {
            //        "Cerrar": function () {
            //            $(this).dialog("close");
            //        }
            //    },
            //    open: function (type, data) {
            //        $(this).parent().appendTo("form");
            //        // $("[id*='CMD_SearchProdPcgraf']").click();
            //        //$('#TXT_FiltroProducto').focus();
            //    }
            //});
            //$('#popContacto').dialog('open');
            //    return false;
        };
        function limpiarpopnuevocontacto() {
           <%-- document.getElementById('<%= TXT_NombreContacto.ClientID %>').value = '';

                     document.getElementById('<%= TXT_Departamento.ClientID %>').value = '';
                     document.getElementById('<%= TXT_Correo.ClientID %>').value = '';
                     document.getElementById('<%= TXT_Telefono.ClientID %>').value = '';
                     document.getElementById('<%= TXT_Celular.ClientID %>').value = '';
                     document.getElementById('<%= TXT_Observaciones.ClientID %>').value = '';

                     document.getElementById('<%= TXT_IDContacto.ClientID %>').value = '';


                     document.getElementById('<%= TXT_NombreClienteContacto.ClientID %>').value = document.getElementById('<%= TXT_NombreCliente.ClientID %>').value;
--%>


             openPopCrearContacto();
         }

         function abrirmodalEntrega() {
             // $('#FormEntrega').dialog('open');
             document.getElementById('btn_FormEntrega').click();

             return false;
         }
         function limpiarmodalEntrega() {
                 <%--    document.getElementById('<%= TXT_IDEntrega.ClientID %>').value = '';
                     document.getElementById('<%= TXT_IndicacionesEntrega.ClientID %>').value = '';
                     document.getElementById('<%= TXT_DireccionEntrega.ClientID %>').value = '';
                     document.getElementById('<%= DT_FechaInstalacion.ClientID %>').value = '';
                     document.getElementById('<%= TXT_EncargadoRecibir.ClientID %>').value = '';
                     document.getElementById('<%= TXT_TelefonoEncargado.ClientID %>').value = '';
                     document.getElementById('<%= TXT_CelularEncargado.ClientID %>').value = '';--%>

            return false;
        }

        function validarentrega() {
    <%--                 var direcc = document.getElementById('<%= TXT_DireccionEntrega.ClientID %>').value;
                    var encargado = document.getElementById('<%= TXT_EncargadoRecibir.ClientID %>').value;
                    var fecha = document.getElementById('<%= DT_FechaInstalacion.ClientID %>').value;

                    if (fecha.length == 0) {
                        mostraralertifyerror('Debe seleccionar la fecha');
                        return false;
                    }
                    if (encargado.length == 0) {
                        mostraralertifyerror('Debe completar el campo de la persona que recibe');
                        return false;
                    }

                    if (direcc.length == 0) {
                        mostraralertifyerror('Debe completar la dirección');
                        return false;
                    }--%>
        }


        function cerrarPopContacto() {
            document.getElementById('Content_Button3').click();

        }

        function openPopCrearContacto() {

            document.getElementById('btn_popContactos').click();
            cerrarPopContacto();
        }

        function cerrarPopCrearContacto() {
            document.getElementById('Content_Button1').click();

        }


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





        function CMD_BuscarProdPcgraf_onclick() { $('#TXT_FiltroProducto').focus(); }
        function CMD_BuscarElectrodomesticos_onclick() { $('#TXT_FiltroElectrodomesticos').focus(); }

        function CMD_BuscarProdPcgraf_onclick2() { $('#TXT_FiltroProductoImportado').focus(); }
        function FormBuscarProdutosPcgrafClose() { $('#FormBuscarProdutosPcgraf').dialog('close'); }
        function FormBuscarProdutosPcgrafCloseImportado() { $('#FormBuscarProdutosPcgrafImportado').dialog('close'); }
        function FormBuscarOfertasModulor() { $('#FormBuscarOfertasModulor').dialog('close'); }
        $(function () {


            $('#FormBuscarProdutosPcgrafImportado').dialog({
                autoOpen: false,
                modal: true,
                width: 980,
                heigth: 250,
                title: 'Buscar productos   ',
                buttons: {
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");

                    $("[id*='CMD_SearchProdPcgrafImportado']").click();

                    $('#TXT_FiltroProductoImportado').focus();

                }


            });

            $('#FormBuscarProdutosPcgraf').dialog({
                autoOpen: false,
                modal: true,
                width: 880,
                heigth: 250,
                title: 'Buscar productos',
                buttons: {
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");

                    $("[id*='CMD_SearchProdPcgraf']").click();

                    $('#TXT_FiltroProducto').focus();

                }


            });

            $('#FormBuscarElectrodomesticos').dialog({
                autoOpen: false,
                modal: true,
                width: 880,
                heigth: 250,
                title: 'Buscar Cotizaciones Electrodomesticos',
                buttons: {
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                    //alert('1');
                    //$("[id*='CMD_SearchElectrodomesticos']").click();
                    //alert('2');
                    //$('#TXT_FiltroElectrodomesticos').focus();
                    //alert('3');
                    desactivarloading();

                }


            });
            $('#FormBuscarElectrodomesticosV').dialog({
                autoOpen: false,
                modal: true,
                width: 1024,
                heigth: 500,
                title: 'Buscar Productos y Electrodomesticos',
                buttons: {
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                    $("[id*='CMD_BuscarVentaDirecta']").click();
                    //  $('#TXT_FiltroElectrodomesticos').focus();
                    desactivarloading();

                }


            });




            $('#CMD_BuscarProdPcgraf').click(function () {

                //document.getElementById('btn_FormBuscarProdutosPcgraf').click();
                $('#FormBuscarProdutosPcgraf').dialog('open');
                //  $("[id*='CMD_SearchProdPcgraf']").click();

            });
            //$('#CMD_BuscarElectrodomesticos').click(function () {

            //    //document.getElementById('btn_FormBuscarProdutosPcgraf').click();
            //    $('#FormBuscarElectrodomesticos').dialog('open');
            //    //  $("[id*='CMD_SearchProdPcgraf']").click();

            //});
            $('#CMD_BuscarElectrodomesticosV').click(function () {

                $('#FormBuscarElectrodomesticosV').dialog('open');
                $("[id*='CMD_BuscarVentaDirecta']").click();

                document.getElementById('CMD_BuscarVentaDirecta').click();

            });
            $('#CMD_BuscarProdPcgraf2').click(function () {
                $('#FormBuscarProdutosPcgrafImportado').dialog('open');
                //document.getElementById('btn_FormBuscarProdutosPcgrafImportado').click();
                //$("[id*='CMD_SearchProdPcgrafImportado']").click();

            });



        });
        $(function () {



            //$('#FormBuscarProdutosPcgrafImportado').dialog({
            //    autoOpen: false,
            //    modal: true,
            //    width: 980,
            //    heigth: 250,
            //    title: 'Buscar productos   ',
            //    buttons: {
            //        "Cancel": function () {
            //            $(this).dialog("close");
            //        }
            //    },
            //    open: function (type, data) {

            //        $(this).parent().appendTo("form");

            //        $("[id*='CMD_SearchProdPcgrafImportado']").click();

            //        $('#TXT_FiltroProductoImportado').focus();

            //    }


            //});

        });

        $(function () {


            $('#CMD_BuscarModulor').click(function () {


                $('#FormBuscarOfertasModulor').dialog('open');

            });
            $('#FormBuscarOfertasModulor').dialog({
                autoOpen: false,
                modal: true,
                width: 980,
                heigth: 250,
                title: 'Buscar Ofertas Teowin',
                buttons: {
                    "Cancel": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {

                    $(this).parent().appendTo("form");
                    $("[id*='CMD_BuscarModulorOferta']").click();

                    $('#TXT_FiltroProductoModulor').focus();

                }


            });

        });




    </script>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">



    <div id="modalloading" class="loading">
        <img src="../Images/cargando5.gif" width="100" height="100" />
    </div>
    <div id="fade2" class="overlayload"></div>

    <br />
    <br />
    <br />
    <div id="divCompleto2" class="main container"></div>

    <button type="button" id="btn_popAdjunto" data-toggle="modal" data-target="#popAdjunto" style="visibility: hidden;">open</button>


    <div class="modal fade" id="popAdjunto" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">
        <%-- Adjuntos --%>
        <asp:UpdatePanel ID="UPPAdjunto" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel23">Adjunto</h3>
                        </div>
                        <div class="modal-body">
                            <%-- Modulo:--%>
                            <asp:TextBox ID="TXT_Modulo" runat="server" Enabled="false" Visible="false"></asp:TextBox>
                            <asp:HiddenField ID="TXT_IDModulo" runat="server" Value="" />
                            <%-- <br />--%>
                          Tipo documento:
                            <asp:DropDownList ID="TXTNombreDocumento" class="form-control" runat="server">
                                <asp:ListItem Value="Contrato Firmado">Contrato Firmado</asp:ListItem>
                                <asp:ListItem Value="Hoja de control Interno">Hoja de control Interno</asp:ListItem>
                                <asp:ListItem Value="Cedula Cliente">Cedula Cliente</asp:ListItem>
                                <asp:ListItem Value="Hoja de Instalacion de producto">Hoja de Instalacion de producto</asp:ListItem>
                                <asp:ListItem Value="Hoja de detalle de cobro">Hoja de detalle de cobro</asp:ListItem>
                                <asp:ListItem Value="Otro Tipo Documento">Otro Tipo Documento</asp:ListItem>
                            </asp:DropDownList>
                            Observaciones:
                           <asp:TextBox ID="TXTObservaciones" class="form-control" runat="server" MaxLength="299"
                               TextMode="MultiLine" Rows="10"></asp:TextBox>
                            Archivo:<asp:FileUpload ID="btnExaminar" runat="server" accept="image/*" multiple="false" />
                        </div>
                        <%--  //guardar Achivo--%>
                        <div class="modal-footer">
                            <asp:LinkButton ID="btnguardarArchivo" runat="server" CssClass="btn btn-success" OnClick="btnguardarArchivo_Click" OnClientClick="return activarloading();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                            </asp:LinkButton>&nbsp;                                    
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


    <div id="FormBuscarElectrodomesticosV" style="display: none;">
        <%--tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true"--%>
        <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="row"></div>
                <p>
                    Seleccione Una Categoria: 
                                        <asp:DropDownList ID="DROP_CategoriasElectrodomesticos" runat="server" CssClass="ddlclass">
                                            <asp:ListItem Value="Cotizacion"></asp:ListItem>
                                            <asp:ListItem Selected="True" Value="Todas"></asp:ListItem>
                                        </asp:DropDownList>
                    <asp:Button ID="CMD_BuscarVentaDirecta" runat="server" Text="Buscar Productos"
                        CssClass="btn btn-success active" OnClick="CMD_BuscarVentaDirecta_Click" />
                </p>
                <p>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </p>
                <div style="overflow: auto; height: 550px;">

                    <asp:GridView ID="DTG_VentaDirecta" Width="100%" runat="server"
                        DataKeyNames="IDProducto" AutoGenerateColumns="False" Style="border-radius: 4px;"
                        CssClass="table" ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                        Font-Size="9" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None" OnPreRender="DTG_VentaDirecta_PreRender"
                        OnRowDataBound="DTG_VentaDirecta_RowDataBound"
                        BorderWidth="1px" CellPadding="2" OnSelectedIndexChanging="DTG_VentaDirecta_SelectedIndexChanging">
                        <%-- OnRowEditing="DTGLeads_RowEditing"  OnRowDataBound="DTG_VentaDirecta_RowDataBound"--%>
                        <Columns>

                            <asp:BoundField DataField="IDProducto" HeaderText="IDProducto" Visible="false" />
                            <asp:TemplateField HeaderText="Imagen de Producto">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px"
                                        ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("LogoPrincBajaReso")) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <%-- Vendedor --%>
                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                <HeaderTemplate>
                                    <asp:TextBox ID="TXT_CodigoProducto" runat="server" onkeypress="KeyPressed(event)" MaxLength="30" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Lbl_CodigoProducto1" runat="server" Text="Codigo Producto"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_CodigoProducto2" runat="server" Text='<%#Eval("CodigoProducto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%-- Nombre --%>
                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    <asp:TextBox ID="TXT_Descripcion1" runat="server" onkeypress="KeyPressed(event)" MaxLength="35" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Lbl_Descripcion11" runat="server" Text="Descripción 1"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_Descripcion12" runat="server" Text='<%#Eval("Descripcion1") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%-- Nombre --%>
                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                <HeaderTemplate>
                                    <asp:TextBox ID="TXT_Descripcion2" runat="server" onkeypress="KeyPressed(event)" MaxLength="35" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Lbl_Descripcion21" runat="server" Text="Descripción 1"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_Descripcion22" runat="server" Text='<%#Eval("Descripcion2") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%-- PrecioVenta--%>
                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                <HeaderTemplate>
                                    <asp:TextBox ID="TXT_PrecioVenta" runat="server" onkeypress="KeyPressed(event)" MaxLength="50" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Lbl_PrecioVenta" runat="server" Text="Precio de Venta"></asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_PrecioVenta2" runat="server" Text='<%#Eval("PrecioVenta") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>

                            <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select"
                                        runat="server" Text="Seleccionar" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <RowStyle ForeColor="#000000" />
                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />


                    </asp:GridView>
                </div>


            </ContentTemplate>


        </asp:UpdatePanel>


        <%--<div class="modal-footer">
                                     <asp:Button ID="Button5" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />
                                  </div>
                                </div>
                              </div>--%>
    </div>



    <div id="FormBuscarElectrodomesticos" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">


        <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
            <ContentTemplate>

                <p>
                    Buscar: 
                                        <asp:DropDownList ID="Drop_TipoBusqueda" runat="server" CssClass="ddlclass">

                                            <asp:ListItem Value="Cotizacion"></asp:ListItem>
                                            <asp:ListItem Selected="True" Value="Nombre del Cliente"></asp:ListItem>

                                        </asp:DropDownList>
                    <asp:TextBox ID="TXT_FiltroElectrodomesticos" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server"></asp:TextBox>
                    <asp:Button ID="CMD_SearchElectrodomesticos" runat="server" Text="Buscar Cotizaciones"
                        OnClientClick="return activarloading()" CssClass="btn btn-success active" OnClick="CMD_SearchElectrodomesticos_Click" />

                </p>
                <p>
                    Oferta:  
                    <asp:Label ID="LBL_NOfertaSeleccionada" runat="server" Text=""></asp:Label>
                </p>

                <div style="overflow: auto; height: 350px;">
                    <asp:GridView ID="DTG_ElectrodomesticosBuscar" DataKeyNames="Cotizacion" CssClass=" table table-bordered table-hover"
                        runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="DTG_ElectrodomesticosBuscar_SelectedIndexChanged"
                        OnSelectedIndexChanging="DTG_ElectrodomesticosBuscar_SelectedIndexChanging">

                        <Columns>
                            <asp:BoundField DataField="Cotizacion" HeaderText="Cotizacion" />
                            <asp:BoundField DataField="NombreCliente" HtmlEncode="false" HeaderText="Nombre del Cliente" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select"
                                        runat="server" Text="Seleccionar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>

    </div>


    <%--<br /><br /><br />  --%>
    <div id="divCompleto" class="main container">
        <table class="trans_table">
            <tr>
                <td colspan="5">
                    <h2>
                        <asp:Label ID="LBLTituloMenu" CssClass="colortitulo" runat="server" Text="Candidato Nuevo">
                        </asp:Label></h2>
                </td>
                <td align="right">
                    <asp:TextBox ID="TXT_UsuarioCreo" runat="server" Enabled="false" Visible="false"></asp:TextBox>
                    <asp:HiddenField ID="TXT_Lead" runat="server" Value="" OnValueChanged="TXT_Lead_ValueChanged" />
                </td>
            </tr>
        </table>


        <div class="rowsPanel panel panel-primary">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                Informaci&oacute;n de los Candidatos
                                 <span class="icon-chevron-small-down rightBar"></span>
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse1">
                    <div class="well">
                        <div class="row" style="text-align: right; color: red;">
                            (*) Requerido
                        </div>
                        <%-- propietario --%>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="CMB_Propietario"><span style="color: red; font-weight: bold;">* </span>Nombre del Vendedor:</label>
                                    <asp:DropDownList ID="CMB_Propietario" class="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <%-- Nombre Cliente --%>
                                <div class="form-group">
                                    <label for="TXT_NombreCliente"><span style="color: red; font-weight: bold;">* </span>Nombre del Cliente:</label>
                                    <asp:TextBox ID="TXT_NombreCliente" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                                <%-- Tipo Identificacion --%>
                                <div class="form-group">
                                    <label for="CMB_TipoIdentificacion">Tipo de Identificaci&oacute;n:</label>
                                    <asp:DropDownList ID="CMB_TipoIdentificacion" class="form-control" runat="server">
                                        <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                        <asp:ListItem Value="Cédula Juridica">Cédula Juridica</asp:ListItem>
                                        <asp:ListItem Value="Cédula Fisica">Cédula Física</asp:ListItem>
                                        <asp:ListItem Value="Cédula Extranjero">Cédula Extranjero</asp:ListItem>
                                        <asp:ListItem Value="Otro Documento">Otro Documento</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <%-- Identificacion --%>
                                <div class="form-group">
                                    <label for="TXT_Identificacion">No. Identificaci&oacute;n:</label>
                                    <asp:TextBox ID="TXT_Identificacion" class="form-control" runat="server" MaxLength="50" onkeydown="return (event.keyCode!=13);" onkeypress="return soloNumeros(event);"></asp:TextBox>
                                </div>
                                <%-- Origen de lead --%>
                                <div class="form-group">
                                    <label for="CMB_OrigenLead"><span style="color: red; font-weight: bold;">* </span>Origen del Candidato:</label>
                                    <asp:DropDownList ID="CMB_OrigenLead" class="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="LBL_MontoLead">Monto General:</label>
                                    <asp:TextBox ID="TXT_MontoLead" class="form-control" runat="server" MaxLength="50" onkeydown="return (event.keyCode!=13);" onkeypress="return soloNumeros(event);"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <%-- Celular --%>
                                <div class="form-group">
                                    <label for="TXT_Celular">Celular:</label>
                                    <asp:TextBox ID="TXT_Celular" runat="server" class="form-control" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                                <%--  Telefono--%>
                                <div class="form-group">
                                    <label for="TXT_Telefono"><span style="color: red; font-weight: bold;">* </span>Teléfono:</label>
                                    <asp:TextBox ID="TXT_Telefono" class="form-control" runat="server" MaxLength="50" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                                <%-- Correo --%>
                                <div class="form-group">
                                    <label for="TXT_Correo"><span style="color: red; font-weight: bold;">* </span>Correo electr&oacute;nico:</label>
                                    <asp:TextBox ID="TXT_Correo" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                                <%--Descripcion  --%>
                                <div class="form-group">
                                    <label for="TXT_Descripcion">Descripci&oacute;n General:</label>
                                    <asp:TextBox ID="TXT_Descripcion" runat="server" class="form-control" TextMode="MultiLine" Width="100%" MaxLength="700"></asp:TextBox>
                                </div>
                                <%-- Estado de lead --%>
                                <div class="form-group">
                                    <label for="CMB_EstadoLead">Estado:</label>
                                    <asp:DropDownList ID="CMB_EstadoLead" class="form-control" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="">Direcci&oacute;n:</label>
                                    <asp:TextBox ID="TXT_Direccion" class="form-control" runat="server" TextMode="MultiLine" Width="100%" Rows="2" MaxLength="499"></asp:TextBox>
                                    <asp:LinkButton ID="CMD_gps" runat="server" OnClientClick="return openMapa();">Ubicar en Mapa</asp:LinkButton>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </div>


        <div id="MenuOfertaEconomica" style="display: none;" class="rowsPanel panel panel-primary">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse40">
                Oferta Economica <span class="icon-chevron-small-down rightBar"></span>
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse40">
                    <div class="well">
                        <%--  <Triggers>--%>
                        <div class="row">
                            <%-- <asp:AsyncPostBackTrigger ControlID="CMD_CargarImportado" EventName="Click"   />--%>
                            <div class="form-group">



                                <%--                
                              <asp:AsyncPostBackTrigger ControlID="TXT_CodVendedor"  EventName="TextChanged" />
                        </Triggers>
                                --%>
                                <%--<p>Buscar: --%>

                                <%--  <div class="col-md-12">--%>


                                <div class="container">
                                </div>


                                <%--<div id="principal" style="margin-top: 70px;">--%>


                                <asp:Label ID="Label6" runat="server" Text="Tipo de Calculo: "></asp:Label>
                                <asp:DropDownList ID="DropTipoCalculo" Width="100" runat="server">

                                    <asp:ListItem Value="General"></asp:ListItem>
                                    <asp:ListItem Selected="True" Value="Parcial"></asp:ListItem>
                                    <asp:ListItem Value="Sin Descuento"></asp:ListItem>
                                    <asp:ListItem Value="Sin Impuesto"></asp:ListItem>

                                </asp:DropDownList>
                                <asp:Label ID="LBL_Moneda" runat="server" Text="Moneda de la Oferta: "></asp:Label>
                                <asp:DropDownList ID="CMB_Moneda" Width="100" runat="server">
                                    <asp:ListItem Selected="True" Value="Dolares"></asp:ListItem>
                                    <asp:ListItem Value="Colones"></asp:ListItem>

                                </asp:DropDownList>


                                <asp:Button ID="CMD_ActualizarCalculo" runat="server" Text="Actualizar Calculo" Font-Names="Century Gothic" Font-Bold="true" Font-Size="9" OnClick="CMD_ActualizarCalculo_Click" OnClientClick="activarloading();" />


                                <asp:TextBox ID="TXT_Incremento" Width="100" runat="server"></asp:TextBox>




                                <asp:Button ID="CMD_IncrementoPrecio" runat="server" Text="Sobre Precio" Font-Names="Century Gothic" Font-Bold="true" Font-Size="9" OnClick="CMD_IncrementoPrecio_Click" OnClientClick="activarloading();" />

                                <%--<asp:Button ID="CMD_ImprimirMachote" runat="server" Text="Imprimir Machote" Style="float:right;" Font-Names="Century Gothic" Font-Bold="true" 
                                    Font-Size="9" OnClientClick="return ImprimirMachote();"  />--%>

                                <%--<asp:Button ID="CMD_ImprimirContrato" runat="server" Text="Imprimir Contrato" Style="float:right;" 
                                     Font-Names="Century Gothic" Font-Bold="true" Font-Size="9" OnClientClick="return ImprimirContrato();"  />--%>

                                <asp:Button ID="CMD_Salvar" runat="server" Text="Guardar Preliminar" Style="float: right;" Font-Names="Century Gothic" OnClick="CMD_Salvar_Click" Font-Bold="true" Font-Size="9" />

                                <br />

                                <%--<div id="divCompleto" class="panel panel-default " style="max-width: 1200px; margin-left: auto; margin-right: auto; padding-left: 15px; padding-right: 20px; padding-top: 20px;">--%>
                                <%--OnClientClick="return salvarversion();"--%>
                                <%--    <div id="Panel1" style="padding: 0.01em 16px; box-shadow: 0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;">--%>
                                <br />




                                <div id="DataOferta" style="background-color: white;">


                                    <div class="panel panel-default " style="padding: 0.01em 0px; padding-top: 20px; box-shadow: 0 0px 0px 0 rgba(0,0,0,0.16),0 0px 0px 0 rgba(0,0,0,0.12)!important;" <%--style="width: 100%; padding: 10px; margin-left:10px; margin-right:10px; "--%>>
                                        <div id="Tabs" role="tabpanel" style="background: white;">
                                            <%--<div class="container">--%>
                                            <!-- Nav tabs -->
                                            <nav style="background: white;">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <%-- </div>--%><%--  </div>--%>
                                                    <%--<li ><a href="#OfertaEconomica" aria-controls="OfertaEconomica" role="tab" data-toggle="tab">Oferta Economica</a></li>--%>


                                                    <%-- <li><a href="#ProductoImportado" aria-controls="ProductoImportado" role="tab" data-toggle="tab">Producto Importado</a></li>--%>
                                                    <li class="active"><a href="#ProductoEspecial" aria-controls="ProductoEspecial" role="tab" data-toggle="tab">Oferta Economica</a></li>
                                                    <li><a href="#personal" aria-controls="personal" role="tab" data-toggle="tab">Modulo Venta Directa</a></li>
                                                    <li><a href="#ModulorCotizaciones" aria-controls="ModulorCotizaciones" role="tab" data-toggle="tab">Teowin Cotizacion </a></li>

                                                </ul>
                                            </nav>


                                            <!-- Tab panes -->
                                            <div class="tab-content" style="padding-top: 10px; margin-left: 5px; margin-right: 10px;">
                                                <div role="tabpanel" class="tab-pane" id="personal">

                                                    <div class="row">

                                                        <div class="row">
                                                            <br />
                                                        </div>

                                                        <%--                                                                      <div class="form-group">
                                                                          <div class="form-group">
                                                                              <input type="button" id="CMD_BuscarProdPcgraf" value="Incluir Producto Stock Pcgraf" class="btn btn-primary" onclick="return CMD_BuscarProdPcgraf_onclick()" />
                                                                          </div>
                                                                      </div>--%>
                                                        <div class="form-group" style="display: block;">
                                                            <div class="form-group">

                                                                <%--  <input type="button" id="CMD_BuscarElectrodomesticosV" value="Incluir Electrodomesticos" class="btn btn-primary"  data-toggle="modal" data-target="#FormBuscarElectrodomesticosV" style="visibility:visible;"/>
                                                                --%>
                                                                <input type="button" id="CMD_BuscarElectrodomesticosV" value="Incluir Electrodomesticos" class="btn btn-primary" onclick="return CMD_Electrodomesticos_onclick()" />

                                                                <%-- <button type="button" id="FormBuscarElectrodomesticosV2" data-toggle="modal" data-target="#FormBuscarElectrodomesticosV" style="visibility:visible;">open22</button>--%>
                                                                <%--nav nav-tabs--%>
                                                            </div>

                                                        </div>

                                                        <div class="form-group">
                                                            <br />
                                                        </div>

                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                            <ContentTemplate>
                                                                <%-- CssClass="table table-responsive " AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None"  ShowHeaderWhenEmpty="True" --%>
                                                                <asp:GridView
                                                                    ID="DTG_ProductPcGraf" runat="server"
                                                                    AutoGenerateColumns="False"
                                                                    CssClass="mGrid"
                                                                    PagerStyle-CssClass="pgr"
                                                                    AlternatingRowStyle-CssClass="alt"
                                                                    ShowHeaderWhenEmpty="True"
                                                                    HeaderStyle-BackColor="LightGray"
                                                                    HeaderStyle-ForeColor="Black"
                                                                    Width="100%"
                                                                    Font-Size="9"
                                                                    CellPadding="4"
                                                                    DataKeyNames="IdLinea"
                                                                    OnRowCancelingEdit="DTG_ProductPcGraf_RowCancelingEdit"
                                                                    OnRowEditing="DTG_ProductPcGraf_RowEditing"
                                                                    OnRowUpdating="DTG_ProductPcGraf_RowUpdating" OnRowDeleting="DTG_ProductPcGraf_RowDeleting"
                                                                    OnRowDataBound="DTG_ProductPcGraf_RowDataBound" OnPreRender="DTG_ProductPcGraf_PreRender">

                                                                    <AlternatingRowStyle CssClass="alt" />
                                                                    <Columns>


                                                                        <asp:BoundField DataField="IdLinea" HeaderText="IdLinea" Visible="false" />
                                                                        <asp:TemplateField HeaderText="Imagen de Producto">
                                                                            <ItemTemplate>
                                                                                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px"
                                                                                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("LogoPrincBajaReso")) %>' />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Codigo Producto" ControlStyle-Width="90">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_CodigoProducto" runat="server" Text='<%#Eval("CodigoProducto") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_CodigoProducto" runat="server" Text='<%#Eval("CodigoProducto") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="90px" />
                                                                        </asp:TemplateField>

                                                                        <asp:BoundField DataField="CodigoProducto" HeaderText="CodigoProducto" ControlStyle-Width="40" Visible="false">
                                                                            <ControlStyle Width="40px" />
                                                                        </asp:BoundField>
                                                                        <asp:TemplateField HeaderText="Cantidad" ControlStyle-Width="60" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Descripción del Producto" ControlStyle-Width="250" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_DescripcionProducto" runat="server" Text='<%#Eval("DescripcionProducto") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_DescripcionProducto" MaxLength="100" runat="server" Text='<%#Eval("DescripcionProducto") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="250px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Precio Lista" ControlStyle-Width="70" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioLista" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioLista2" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="70px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Precio Venta" ControlStyle-Width="70" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioVenta" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioVenta") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_PrecioVenta" runat="server" Text='<%#Eval("PrecioVenta") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="70px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Desc %" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Impuesto" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <EditItemTemplate>
                                                                                <asp:DropDownList ID="DropImpuesto" runat="server">
                                                                                    <asp:ListItem>13.00</asp:ListItem>
                                                                                    <asp:ListItem>0.00</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </EditItemTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Impuesto" runat="server" Text='<%# Bind("Impuesto") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <%--
                                                                        <asp:TemplateField HeaderText="Precio Total" ControlStyle-Width="70">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioNetoTotal" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioNetoTotal") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioNetoTotal2" runat="server" Text='<%#Eval("PrecioNetoTotal") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="70px" />
                                                                        </asp:TemplateField>--%>

                                                                        <asp:TemplateField ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" OnClientClick="activarloading();" />
                                                                                <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" OnClientClick="desactivarloading();" />
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="25px" />
                                                                        </asp:TemplateField>

                                                                        <%--                                                                        <asp:BoundField DataField="TipoProducto" HeaderText="TipoProducto" Visible="False" />--%>
                                                                        <asp:TemplateField HeaderText="" ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/deletered_32.png"
                                                                                    OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                    Text="Delete"></asp:ImageButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                    </Columns>

                                                                    <FooterStyle />
                                                                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" />

                                                                </asp:GridView>

                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                        <%--  <asp:Button ID="CMD_BuscarProdPcgraf" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Pcgraf" />--%>&nbsp;<br />

                                                    </div>


                                                </div>

                                                <div role="tabpanel" class="tab-pane" id="ProductoImportado">
                                                    <div class="row">

                                                        <div class="row">
                                                            <br />
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="form-group">

                                                                <input type="button" id="CMD_BuscarProdPcgraf2" value="Incluir Producto Importado" class="btn btn-primary" onclick="return CMD_BuscarProdPcgraf_onclick()" />


                                                                <%--  <asp:Button ID="CMD_BuscarProdPcgraf" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Pcgraf" />--%>
                                                            </div>

                                                        </div>
                                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                            <ContentTemplate>


                                                                <div class="form-group">
                                                                    <br />
                                                                </div>

                                                                <div class="form-group" style="width: 100%; float: left;">
                                                                    <div style="width: 430px; float: left;">
                                                                        <asp:Button ID="CMD_ImportadoManual" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Manual" OnClick="CMD_ImportadoManual_Click" />
                                                                    </div>
                                                                    <div style="width: 150px; float: left;">
                                                                        <asp:Label ID="TipoFile" Text="Seleccione el Formato: " runat="server"> </asp:Label>
                                                                        <asp:DropDownList ID="DropTipoFile" Width="100" runat="server">

                                                                            <asp:ListItem Value="DVO"></asp:ListItem>
                                                                            <asp:ListItem Selected="True" Value="KNOL"></asp:ListItem>

                                                                        </asp:DropDownList>

                                                                    </div>
                                                                    <div style="width: 350px; float: left;">
                                                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                                                    </div>
                                                                    <div style="width: 100px; float: left;">
                                                                        <asp:Button ID="CMD_CargarImportado" CssClass="btn btn-success" runat="server" Text="Cargar Archivo" OnClick="CMD_CargarImportado_Click" />
                                                                    </div>



                                                                </div>


                                                                <%-- CssClass="table table-responsive " AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None"  ShowHeaderWhenEmpty="True" --%>
                                                                <div>
                                                                    <asp:GridView
                                                                        ID="DTG_ProductPcGrafImportado" runat="server"
                                                                        AutoGenerateColumns="False"
                                                                        CssClass=" mGrid"
                                                                        Font-Size="8"
                                                                        PagerStyle-CssClass="pgr"
                                                                        AlternatingRowStyle-CssClass="alt"
                                                                        ShowHeaderWhenEmpty="True"
                                                                        HeaderStyle-BackColor="LightGray"
                                                                        HeaderStyle-ForeColor="Black"
                                                                        Width="100%"
                                                                        CellPadding="4"
                                                                        DataKeyNames="IDProducto"
                                                                        OnRowCancelingEdit="DTG_ProductPcGrafImportado_RowCancelingEdit"
                                                                        OnRowEditing="DTG_ProductPcGrafImportado_RowEditing"
                                                                        OnRowUpdating="DTG_ProductPcGrafImportado_RowUpdating" OnSelectedIndexChanged="DTG_ProductPcGrafImportado_SelectedIndexChanged"
                                                                        OnRowDeleting="DTG_ProductPcGrafImportado_RowDeleting" OnRowDataBound="DTG_ProductPcGrafImportado_RowDataBound">

                                                                        <AlternatingRowStyle CssClass="alt" />
                                                                        <Columns>

                                                                            <asp:TemplateField HeaderText="Descripción del Producto" ControlStyle-Width="210">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_DescripcionProducto" runat="server" Text='<%#Eval("DescripcionProducto") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_DescripcionProducto" MaxLength="100" runat="server" Text='<%#Eval("DescripcionProducto") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="220px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Cantidad" ControlStyle-Width="60" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="60px" />
                                                                            </asp:TemplateField>


                                                                            <asp:TemplateField HeaderText="Precio Venta" ControlStyle-Width="60" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_PrecioVenta" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioVenta") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_PrecioVenta" runat="server" Text='<%#Eval("PrecioVenta") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="60px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Precio Lista" ControlStyle-Width="60" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_PrecioLista" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:Label ID="LBL_PrecioLista2" runat="server" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="60px" />
                                                                            </asp:TemplateField>

                                                                            <asp:BoundField DataField="IDProducto" HeaderText="IDProducto" ControlStyle-Width="30" Visible="false">
                                                                                <ControlStyle Width="30px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="IDSaleForce" HeaderText="IDSaleForce" Visible="false" />
                                                                            <asp:TemplateField HeaderText="Codigo Producto" ControlStyle-Width="90" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_CodigoProducto" runat="server" Text='<%#Eval("CodigoProducto") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_CodigoProducto" runat="server" Text='<%#Eval("CodigoProducto") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="90px" />
                                                                            </asp:TemplateField>

                                                                            <%-- <asp:BoundField DataField="CodigoProducto" HeaderText="CodigoProducto" ControlStyle-Width="40" Visible="false" >
                            <ControlStyle Width="40px" />
                            </asp:BoundField>--%>


                                                                            <asp:TemplateField HeaderText="Area" ControlStyle-Width="100" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Area" runat="server" Text='<%#Eval("Area") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Area" runat="server" MaxLength="120" Text='<%#Eval("Area") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="100px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Linea" ControlStyle-Width="85" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Linea" runat="server" Text='<%#Eval("Linea") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Linea" runat="server" MaxLength="85" Text='<%#Eval("Linea") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="85px" />
                                                                            </asp:TemplateField>




                                                                            <asp:TemplateField HeaderText="Desc %" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="60px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Impuesto" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="DropImpuesto" runat="server">
                                                                                        <asp:ListItem>13</asp:ListItem>
                                                                                        <asp:ListItem>0.00</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Impuesto" runat="server" Text='<%# Bind("Impuesto") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>


                                                                            <asp:TemplateField HeaderText="Precio Total" ControlStyle-Width="70">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_PrecioNetoTotal" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioNetoTotal") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:Label ID="LBL_PrecioNetoTotal2" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioNetoTotal") %>'></asp:Label>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="70px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Proveedor" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Proveedor" runat="server" Text='<%#Eval("Proveedor") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Proveedor" runat="server" Text='<%#Eval("Proveedor") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="60px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" OnClientClick="activarloading();" />
                                                                                    <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" OnClientClick="desactivarloading();" />
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="25px" />
                                                                            </asp:TemplateField>

                                                                            <asp:BoundField DataField="TipoProducto" HeaderText="TipoProducto" Visible="False" />
                                                                            <asp:TemplateField HeaderText="" ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/deletered_32.png"
                                                                                        OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                        Text="Delete"></asp:ImageButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                        </Columns>
                                                                        <FooterStyle />
                                                                        <PagerStyle ForeColor="Black" HorizontalAlign="Center" />

                                                                    </asp:GridView>

                                                                </div>

                                                            </ContentTemplate>

                                                            <Triggers>
                                                                <%-- <asp:AsyncPostBackTrigger ControlID="CMD_CargarImportado" EventName="Click"   />--%>

                                                                <asp:PostBackTrigger ControlID="CMD_CargarImportado" />

                                                            </Triggers>

                                                        </asp:UpdatePanel>
                                                        &nbsp;<br />

                                                    </div>
                                                </div>
                                                <div role="tabpanel" class="tab-pane active" id="ProductoEspecial">

                                                    <div class="row">
                                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                                <div class="row">
                                                                    <br />
                                                                </div>

                                                                <div class="form-group">
                                                                    <div class="form-group">

                                                                        <asp:Button ID="CMD_IncluirProductoEspecial" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Especial" OnClick="CMD_IncluirProductoEspecial_Click" />
                                                                        <div style="width: 350px; float: left;">
                                                                        </div>

                                                                    </div>
                                                                    <div class="row">
                                                                        <br />
                                                                        <asp:FileUpload ID="FileUpload2" runat="server" />

                                                                        <div style="width: 100px; float: left;">
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <br />
                                                                        <asp:Button ID="CMD_CargarImportado2" Width="200px" Height="25px" CssClass="btn-success" runat="server" Text="Cargar Archivo Winner" OnClientClick="return activarloading()" OnClick="CMD_CargarImportado2_Click" />

                                                                    </div>

                                                                </div>

                                                                <div class="form-group">
                                                                    <br />
                                                                </div>


                                                                <asp:GridView ID="DTG_ProductosEspeciales" runat="server"
                                                                    AutoGenerateColumns="False"
                                                                    CssClass="mGrid"
                                                                    PagerStyle-CssClass="pgr"
                                                                    AlternatingRowStyle-CssClass="alt"
                                                                    ShowHeaderWhenEmpty="True"
                                                                    HeaderStyle-BackColor="LightGray"
                                                                    HeaderStyle-ForeColor="Black"
                                                                    Width="100%"
                                                                    CellPadding="4"
                                                                    Font-Size="9"
                                                                    ShowFooter="True"
                                                                    DataKeyNames="idLinea"
                                                                    OnRowCancelingEdit="DTG_ProductosEspeciales_RowCancelingEdit"
                                                                    OnRowEditing="DTG_ProductosEspeciales_RowEditing"
                                                                    OnRowUpdating="DTG_ProductosEspeciales_RowUpdating"
                                                                    OnSelectedIndexChanged="DTG_ProductosEspeciales_SelectedIndexChanged"
                                                                    OnRowDeleting="DTG_ProductosEspeciales_RowDeleting" OnRowDataBound="DDTG_ProductosEspeciales_RowDataBound">

                                                                    <AlternatingRowStyle CssClass="alt" />

                                                                    <Columns>

                                                                        <asp:TemplateField HeaderText="Descripción del Producto" ControlStyle-Width="210">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_DescripcionProducto" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_DescripcionProducto" MaxLength="100" runat="server" Text='<%#Eval("Descripcion") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="250px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Cantidad" ControlStyle-Width="60" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Precio Venta" ControlStyle-Width="70" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioVenta" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioUnitario") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_PrecioVenta" runat="server" Text='<%#Eval("PrecioUnitario") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="70px" />
                                                                        </asp:TemplateField>


                                                                        <asp:TemplateField HeaderText="Precio Lista" ControlStyle-Width="70" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioLista" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioLista2" runat="server" DataFormatString="{0:n}" Text='<%#Eval("PrecioLista") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="70px" />
                                                                        </asp:TemplateField>



                                                                        <asp:BoundField DataField="idLinea" HeaderText="idLinea" ControlStyle-Width="30" Visible="false">
                                                                            <ControlStyle Width="30px" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="OfertaMadre" HeaderText="OfertaMadre" Visible="false" />

                                                                        <asp:TemplateField HeaderText="Desc %" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_Descuento" runat="server" Text='<%#Eval("Descuento") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Impuesto" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <EditItemTemplate>
                                                                                <asp:DropDownList ID="DropImpuesto" runat="server">
                                                                                    <asp:ListItem>13.00</asp:ListItem>
                                                                                    <asp:ListItem>0.00</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </EditItemTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Impuesto" runat="server" Text='<%# Bind("Impuesto") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <FooterTemplate>
                                                                                <div style="text-align: right;">
                                                                                    <div style="padding: 0 0 5px 0;">
                                                                                        <asp:Label Text="SubTotal:" DataFormatString="{0:n}" runat="server" />
                                                                                    </div>
                                                                                    <div style="padding: 0 0 5px 0">
                                                                                        <asp:Label Text="Descuento:" DataFormatString="{0:n}" runat="server" />
                                                                                    </div>
                                                                                    <div style="padding: 0 0 5px 0">
                                                                                        <asp:Label Text="Impuesto:" DataFormatString="{0:n}" runat="server" />
                                                                                    </div>
                                                                                    <div style="padding: 0 0 5px 0">
                                                                                        <asp:Label Text="Total Oferta:" DataFormatString="{0:n}" runat="server" />
                                                                                    </div>
                                                                                </div>
                                                                            </FooterTemplate>
                                                                        </asp:TemplateField>


                                                                        <asp:TemplateField HeaderText="Precio Total" ControlStyle-Width="70">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioNetoTotal" runat="server" DataFormatString="{0:n}" Text='<%#Eval("MontoTotal") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioNetoTotal2" runat="server" DataFormatString="{0:n}" Text='<%#Eval("MontoTotal") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <FooterTemplate>
                                                                                <div style="text-align: right;">
                                                                                    <%--<asp:Label ID="LBL_PrecioEspecialTotal" runat="server" />--%>
                                                                                    <%--  <div style="padding:0 0 5px 0"><asp:Label ID="LBL_PrecioEspecialTotal" runat="server" /></div>--%>
                                                                                    <div style="padding: 0 0 5px 0">
                                                                                        <asp:Label ID="LBLOF_SubTotal" Text="0" runat="server" />
                                                                                    </div>
                                                                                    <div style="padding: 0 0 5px 0">
                                                                                        <asp:Label ID="LBLOF_Descuento" DataFormatString="{0:n}" Text="0" runat="server" /></di>
                                     <div style="padding: 0 0 5px 0">
                                         <asp:Label ID="LBLOF_Impuesto" DataFormatString="{0:n}" Text="0" runat="server" />
                                     </div>
                                                                                        <div style="padding: 0 0 5px 0">
                                                                                            <asp:Label ID="LBLOF_TotalGeneral" DataFormatString="{0:n}" Text="0" runat="server" />
                                                                                        </div>

                                                                                    </div>
                                                                            </FooterTemplate>

                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" OnClientClick="activarloading();" />
                                                                                <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" OnClientClick="desactivarloading();" />
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="25px" />
                                                                        </asp:TemplateField>

                                                                        <asp:BoundField DataField="TipoProducto" HeaderText="TipoProducto" Visible="False" />
                                                                        <asp:TemplateField HeaderText="" ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/deletered_32.png"
                                                                                    OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                    Text="Delete"></asp:ImageButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="Monto Total" Visible="false" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_MontoTotal" runat="server" Text='<%#Eval("MontoTotal") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Monto Total" Visible="false" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_PrecioImpuesto" runat="server" Text='<%#Eval("PrecioEspecialImpues") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <ControlStyle Width="60px" />
                                                                        </asp:TemplateField>


                                                                    </Columns>


                                                                    <%--   <FooterStyle />
                                                                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" />--%>
                                                                    <FooterStyle BackColor="#cccccc" Font-Bold="True" ForeColor="Black" HorizontalAlign="Left" />
                                                                    <HeaderStyle BackColor="LightGray" ForeColor="Black" />
                                                                </asp:GridView>

                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:PostBackTrigger ControlID="CMD_CargarImportado2" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                        &nbsp;<br />

                                                    </div>

                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="ModulorCotizaciones">
                                                    <div class="row">

                                                        <div class="row">
                                                            <br />
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="form-group">
                                                                <input type="button" id="CMD_BuscarModulor" value="Incluir Oferta Teowin" class="btn btn-primary" onclick="return CMD_BuscarProdPcgraf_onclick()" />


                                                                <%--  <asp:Button ID="CMD_BuscarProdPcgraf" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Pcgraf" />--%>
                                                            </div>

                                                        </div>
                                                        <div class="form-group" style="display: none;">
                                                            <div class="form-group">

                                                                <input type="button" id="CMD_BuscarElectrodomesticos" value="Incluir Electrodomesticos" class="btn btn-primary" onclick="return CMD_Electrodomesticos_onclick()" />

                                                                <%--nav nav-tabs--%>
                                                            </div>

                                                        </div>

                                                        <div class="form-group">
                                                        </div>

                                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                                <%-- OnSelectedIndexChanging="DTG_ModulorStudioResumen_SelectedIndexChanging" --%>
                                                                <asp:GridView
                                                                    ID="DTG_ModulorStudioResumen" runat="server"
                                                                    AutoGenerateColumns="False"
                                                                    CssClass="mGrid"
                                                                    HeaderStyle-BackColor="LightGray"
                                                                    HeaderStyle-ForeColor="Black"
                                                                    PagerStyle-CssClass="pgr"
                                                                    AlternatingRowStyle-CssClass="alt"
                                                                    ShowHeaderWhenEmpty="True"
                                                                    Font-Size="10"
                                                                    CellPadding="4"
                                                                    DataKeyNames="NOferta"
                                                                    OnRowCommand="DTG_ModulorStudioResumen_RowCommand"
                                                                    OnRowDeleting="DTG_ModulorStudioResumen_RowDeleting" Width="100%" OnRowCancelingEdit="DTG_ModulorStudioResumen_RowCancelingEdit" OnRowDataBound="DTG_ModulorStudioResumen_RowDataBound" OnRowEditing="DTG_ModulorStudioResumen_RowEditing" OnRowUpdating="DTG_ModulorStudioResumen_RowUpdating" OnSelectedIndexChanged="DTG_ModulorStudioResumen_SelectedIndexChanged" OnSelectedIndexChanging="DTG_ModulorStudioResumen_SelectedIndexChanging1">

                                                                    <AlternatingRowStyle CssClass="alt" />
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="N# de Oferta" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_NOferta" runat="server" Text='<%#Eval("NOferta") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_NOferta2" runat="server" Text='<%#Eval("NOferta") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <%--<asp:BoundField DataField="Area" HeaderText="SubTotal" DataFormatString="{0:n}" Visible="True" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg" />--%>
                                                                        <asp:TemplateField HeaderText="Area Instalar" ControlStyle-Width="90" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_AreaInstalar" runat="server" DataFormatString="{0:n}" Text='<%#Eval("AreaInstalar") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_AreaInstalar" runat="server" Text='<%#Eval("AreaInstalar") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="90px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Tipo Producto" ControlStyle-Width="90" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_TipoProducto" runat="server" DataFormatString="{0:n}" Text='<%#Eval("TipoProducto") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:DropDownList ID="Drop_TipoProducto" CssClass="ddlclass" runat="server" AutoPostBack="true">
                                                                                    <asp:ListItem Value="Cocina Importada"></asp:ListItem>
                                                                                    <asp:ListItem Selected="true" Value="Cocina"></asp:ListItem>
                                                                                    <asp:ListItem Value="Baño"></asp:ListItem>
                                                                                    <asp:ListItem Value="Closet"></asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="90px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Observaciones" ControlStyle-Width="90" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Observaciones" runat="server" DataFormatString="{0:n}" Text='<%#Eval("Observaciones") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:TextBox ID="TXT_Observaciones" runat="server" Text='<%#Eval("Observaciones") %>'></asp:TextBox>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="90px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="N# de Teowin" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Cornisa" runat="server" Text='<%#Eval("Cornisa") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_Cornisa2" runat="server" Text='<%#Eval("Cornisa") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="40px" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Oferta" ControlStyle-Width="40" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:Label ID="LBL_Total" runat="server" Text='<%#Eval("Total") %>'></asp:Label>
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:Label ID="LBL_Total2" runat="server" Text='<%#Eval("Total") %>'></asp:Label>
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="40px" />
                                                                        </asp:TemplateField>


                                                                        <%--  <asp:CommandField ButtonType="Button" SelectText="Ver Detalle de Productos"   ControlStyle-CssClass="btn btn-sm btn-primary" ShowSelectButton="True" />--%>
                                                                        <%-- <asp:TemplateField ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                        <ItemTemplate>
                                                                            <asp:Button ID="verButton" runat="server"  CommandName="verdetalleproducto" OnClientClick=" activarloading();"  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" Text="Ver Detalle de Productos" CssClass="btn btn-sm btn-primary" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>--%>

                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <a id="ImprimirCotizacion" href="javascript:void(0)" class="btn btn-sm btn-default" onclick="return ImprimirCotizacion('<%#Eval("NOferta") %>');">Hoja de Caracteristicas</a>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <input type="button" id="CMD_BuscarModulor" style="width: 1px; height: 1px;" value="Incluir Oferta Teowin" onclick="return CMD_BuscarProdPcgraf_onclick()" />
                                                                                <asp:Button ID="CMD_Electrodomesticos" runat="server" class="btn btn-primary" Text="Incluir Electrodomesticos" CommandName="Print_Eti" SkinID="imgBtn_Imprimir" CommandArgument='<%# Eval("NOferta") %>' />

                                                                            </ItemTemplate>

                                                                        </asp:TemplateField>

                                                                        <asp:TemplateField HeaderText="" ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                    ImageUrl="~/images/deletered_32.png"
                                                                                    OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                    Text="Delete"></asp:ImageButton>
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField ControlStyle-Width="25" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                                            <ItemTemplate>
                                                                                <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                            </ItemTemplate>
                                                                            <EditItemTemplate>
                                                                                <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" OnClientClick="activarloading();" />
                                                                                <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" OnClientClick="desactivarloading();" />
                                                                            </EditItemTemplate>
                                                                            <ControlStyle Width="25px" />
                                                                        </asp:TemplateField>

                                                                    </Columns>

                                                                    <FooterStyle />
                                                                    <PagerStyle ForeColor="Black" HorizontalAlign="Center" />

                                                                </asp:GridView>
                                                                <br />
                                                                <div class="row">
                                                                </div>

                                                                <div class="row">
                                                                    <asp:Label ID="LBL_ModulorStudioCotizacionTexto" runat="server" Text="Oferta Modulor Seleccionado: " Visible="false">  </asp:Label>
                                                                    <asp:Label ID="LBL_ModulorStudioCotizacion" runat="server" Text="" Visible="false">  </asp:Label>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="form-group">
                                                                        <div class="row">
                                                                            <div class="col-md-4">
                                                                                <asp:Button ID="CMD_IncluirModulorStudio" CssClass="btn btn-primary" runat="server" Text="Incluir Producto Manual" OnClick="CMD_IncluirModulorStudio_Click" />

                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <asp:Label ID="LBL_ModulorSeleccionOferta" runat="server" Text=""></asp:Label>
                                                                                <asp:Label ID="Label9" runat="server" Text="Filtrar por Area: "></asp:Label>
                                                                                <asp:DropDownList ID="DropOferta" CssClass="ddlclass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropOferta_SelectedIndexChanged">
                                                                                    <asp:ListItem Value="General"></asp:ListItem>
                                                                                    <asp:ListItem Selected="True" Value="Parcial"></asp:ListItem>
                                                                                    <asp:ListItem Value="Sin Descuento"></asp:ListItem>

                                                                                </asp:DropDownList>

                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <asp:Label ID="Label10" runat="server" Text="Linea"></asp:Label>
                                                                                <asp:DropDownList ID="DropLinea" CssClass="ddlclass" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropLinea_SelectedIndexChanged">
                                                                                    <asp:ListItem Value="General"></asp:ListItem>
                                                                                    <asp:ListItem Selected="True" Value="Parcial"></asp:ListItem>
                                                                                    <asp:ListItem Value="Sin Descuento"></asp:ListItem>

                                                                                </asp:DropDownList>
                                                                            </div>
                                                                        </div>


                                                                    </div>

                                                                </div>


                                                                <br />
                                                                <div class="row ">

                                                                    <asp:GridView
                                                                        ID="DTG_ModulorStudioDetalle" runat="server"
                                                                        AutoGenerateColumns="False" CssClass="mGrid"
                                                                        PagerStyle-CssClass="pgr"
                                                                        AlternatingRowStyle-CssClass="alt"
                                                                        ShowHeaderWhenEmpty="True"
                                                                        HeaderStyle-BackColor="LightGray"
                                                                        HeaderStyle-ForeColor="Black"
                                                                        Width="100%"
                                                                        CellPadding="4"
                                                                        DataKeyNames="idProd"
                                                                        Font-Size="9"
                                                                        OnRowCancelingEdit="DTG_ModulorStudioDetalle_RowCancelingEdit"
                                                                        OnRowEditing="DTG_ModulorStudioDetalle_RowEditing"
                                                                        OnRowUpdating="DTG_ModulorStudioDetalle_RowUpdating" OnSelectedIndexChanged="DTG_ModulorStudioDetalle_SelectedIndexChanged" OnRowDeleting="DTG_ModulorStudioDetalle_RowDeleting" OnRowDataBound="DTG_ModulorStudioDetalle_RowDataBound">

                                                                        <AlternatingRowStyle CssClass="alt" />

                                                                        <Columns>


                                                                            <asp:BoundField DataField="idProd" HeaderText="idProd" ControlStyle-Width="30" Visible="false">
                                                                                <ControlStyle Width="30px" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="N# de Oferta" ControlStyle-Width="80">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_NOferta" runat="server" Text='<%#Eval("NOferta") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:Label ID="LBL_NOferta2" runat="server" Text='<%#Eval("NOferta") %>'></asp:Label>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="80px" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="N# de Cotización" ControlStyle-Width="80">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_NSale" runat="server" Text='<%#Eval("NSale") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:Label ID="LBL_NSale2" runat="server" Text='<%#Eval("NSale") %>'></asp:Label>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="80px" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Tipo Electrodomestico" ControlStyle-Width="150">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_TipoElectro" runat="server" Text='<%#Eval("TipoElectro") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_TipoElectro" runat="server" Text='<%#Eval("TipoElectro") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="150px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Marca" ControlStyle-Width="120">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Marca" runat="server" Text='<%#Eval("Marca") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Marca" runat="server" Text='<%#Eval("Marca") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="120px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Codigo Producto" ControlStyle-Width="120">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Codigo" runat="server" Text='<%#Eval("Codigo") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Codigo" MaxLength="50" runat="server" Text='<%#Eval("Codigo") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="120px" />
                                                                            </asp:TemplateField>

                                                                            <asp:TemplateField HeaderText="Por" ControlStyle-Width="120">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="LBL_Por" runat="server" Text='<%#Eval("Por") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:TextBox ID="TXT_Por" runat="server" MaxLength="100" Text='<%#Eval("Por") %>'></asp:TextBox>
                                                                                </EditItemTemplate>
                                                                                <ControlStyle Width="120px" />
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

                                                                            <asp:BoundField DataField="TipoProducto" HeaderText="TipoProducto" Visible="False" />
                                                                            <asp:TemplateField HeaderText="" ControlStyle-Width="25">
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/deletered_32.png"
                                                                                        OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                                        Text="Delete"></asp:ImageButton>
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>

                                                                        </Columns>


                                                                        <FooterStyle />
                                                                        <PagerStyle ForeColor="Black" HorizontalAlign="Center" />

                                                                    </asp:GridView>


                                                                </div>


                                                            </ContentTemplate>

                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="DropOferta"
                                                                    EventName="SelectedIndexChanged" />
                                                                <asp:AsyncPostBackTrigger ControlID="DropLinea"
                                                                    EventName="SelectedIndexChanged" />
                                                            </Triggers>

                                                        </asp:UpdatePanel>
                                                        &nbsp;<br />

                                                    </div>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <%-- <asp:BoundField DataField="CodigoProducto" HeaderText="CodigoProducto" ControlStyle-Width="40" Visible="false" >
                            <ControlStyle Width="40px" />
                            </asp:BoundField>--%>




                                <div id="popCalendario" style="display: none;">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group" style="text-align: right;">
                                                <label for="">Hora Inicio:</label>

                                            </div>
                                            <div class="form-group" style="text-align: right;">
                                                <label for="">Hora de Finalización:</label>

                                            </div>
                                            <div class="form-group" style="text-align: right;">
                                                <label for="">Estado de la solicitud:</label>

                                            </div>
                                            <div class="form-group" style="text-align: right;">
                                                <label for="">Nombre Diseñador:</label>

                                            </div>
                                            <div class="form-group" style="text-align: right;">
                                                <label for="">Notas del asesor:</label>

                                            </div>

                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for="DT_FechaSolicitud"></label>
                                                <asp:TextBox ID="DT_FechaSolicitud" Enabled="true" runat="server" Width="120px" placeholder="dd/MM/yyyy"></asp:TextBox>
                                                <asp:ImageButton ID="ImageButton1" Enabled="true" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                <ajax:CalendarExtender ID="CalendarExtender2" PopupButtonID="ImageButton1" TargetControlID="DT_FechaSolicitud" runat="server" Format="dd/MM/yyyy" />

                                                <asp:DropDownList ID="DT_HoraInicio" runat="server">
                                                    <asp:ListItem>12:00 AM</asp:ListItem>
                                                    <asp:ListItem>12:30 AM</asp:ListItem>
                                                    <asp:ListItem>1:00 AM</asp:ListItem>
                                                    <asp:ListItem>1:30 AM</asp:ListItem>
                                                    <asp:ListItem>2:00 AM</asp:ListItem>
                                                    <asp:ListItem>2:30 AM</asp:ListItem>
                                                    <asp:ListItem>3:00 AM</asp:ListItem>
                                                    <asp:ListItem>3:30 AM</asp:ListItem>
                                                    <asp:ListItem>4:00 AM</asp:ListItem>
                                                    <asp:ListItem>4:30 AM</asp:ListItem>
                                                    <asp:ListItem>5:00 AM</asp:ListItem>
                                                    <asp:ListItem>5:30 AM</asp:ListItem>
                                                    <asp:ListItem>6:00 AM</asp:ListItem>
                                                    <asp:ListItem>6:30 AM</asp:ListItem>
                                                    <asp:ListItem>7:00 AM</asp:ListItem>
                                                    <asp:ListItem>7:30 AM</asp:ListItem>
                                                    <asp:ListItem>8:00 AM</asp:ListItem>
                                                    <asp:ListItem>8:30 AM</asp:ListItem>
                                                    <asp:ListItem>9:00 AM</asp:ListItem>
                                                    <asp:ListItem>9:30 AM</asp:ListItem>
                                                    <asp:ListItem>10:00 AM</asp:ListItem>
                                                    <asp:ListItem>10:30 AM</asp:ListItem>
                                                    <asp:ListItem>11:00 AM</asp:ListItem>
                                                    <asp:ListItem>11:30 AM</asp:ListItem>
                                                    <asp:ListItem>12:00 PM</asp:ListItem>
                                                    <asp:ListItem>12:30 PM</asp:ListItem>
                                                    <asp:ListItem>1:00 PM</asp:ListItem>
                                                    <asp:ListItem>1:30 PM</asp:ListItem>
                                                    <asp:ListItem>2:00 PM</asp:ListItem>
                                                    <asp:ListItem>2:30 PM</asp:ListItem>
                                                    <asp:ListItem>3:00 PM</asp:ListItem>
                                                    <asp:ListItem>3:30 PM</asp:ListItem>
                                                    <asp:ListItem>4:00 PM</asp:ListItem>
                                                    <asp:ListItem>4:30 PM</asp:ListItem>
                                                    <asp:ListItem>5:00 PM</asp:ListItem>
                                                    <asp:ListItem>5:30 PM</asp:ListItem>
                                                    <asp:ListItem>6:00 PM</asp:ListItem>
                                                    <asp:ListItem>6:30 PM</asp:ListItem>
                                                    <asp:ListItem>7:00 PM</asp:ListItem>
                                                    <asp:ListItem>7:30 PM</asp:ListItem>
                                                    <asp:ListItem>8:00 PM</asp:ListItem>
                                                    <asp:ListItem>8:30 PM</asp:ListItem>
                                                    <asp:ListItem>9:00 PM</asp:ListItem>
                                                    <asp:ListItem>9:30 PM</asp:ListItem>
                                                    <asp:ListItem>10:00 PM</asp:ListItem>
                                                    <asp:ListItem>10:30 PM</asp:ListItem>
                                                    <asp:ListItem>11:00 PM</asp:ListItem>
                                                    <asp:ListItem>11:30 PM</asp:ListItem>

                                                </asp:DropDownList>

                                            </div>
                                            <div class="form-group">
                                                <label for="DT_FechaCierre2"></label>
                                                <asp:TextBox ID="DT_FechaCierre2" Enabled="true" runat="server" Width="120px" placeholder="dd/MM/yyyy"></asp:TextBox>
                                                <asp:ImageButton ID="ImageButton2" Enabled="true" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                <ajax:CalendarExtender ID="CalendarExtender3" PopupButtonID="ImageButton2" TargetControlID="DT_FechaCierre2" runat="server" Format="dd/MM/yyyy" />
                                                <asp:DropDownList ID="DT_HoraFinal" runat="server">
                                                    <asp:ListItem>12:00 AM</asp:ListItem>
                                                    <asp:ListItem>12:30 AM</asp:ListItem>
                                                    <asp:ListItem>1:00 AM</asp:ListItem>
                                                    <asp:ListItem>1:30 AM</asp:ListItem>
                                                    <asp:ListItem>2:00 AM</asp:ListItem>
                                                    <asp:ListItem>2:30 AM</asp:ListItem>
                                                    <asp:ListItem>3:00 AM</asp:ListItem>
                                                    <asp:ListItem>3:30 AM</asp:ListItem>
                                                    <asp:ListItem>4:00 AM</asp:ListItem>
                                                    <asp:ListItem>4:30 AM</asp:ListItem>
                                                    <asp:ListItem>5:00 AM</asp:ListItem>
                                                    <asp:ListItem>5:30 AM</asp:ListItem>
                                                    <asp:ListItem>6:00 AM</asp:ListItem>
                                                    <asp:ListItem>6:30 AM</asp:ListItem>
                                                    <asp:ListItem>7:00 AM</asp:ListItem>
                                                    <asp:ListItem>7:30 AM</asp:ListItem>
                                                    <asp:ListItem>8:00 AM</asp:ListItem>
                                                    <asp:ListItem>8:30 AM</asp:ListItem>
                                                    <asp:ListItem>9:00 AM</asp:ListItem>
                                                    <asp:ListItem>9:30 AM</asp:ListItem>
                                                    <asp:ListItem>10:00 AM</asp:ListItem>
                                                    <asp:ListItem>10:30 AM</asp:ListItem>
                                                    <asp:ListItem>11:00 AM</asp:ListItem>
                                                    <asp:ListItem>11:30 AM</asp:ListItem>
                                                    <asp:ListItem>12:00 PM</asp:ListItem>
                                                    <asp:ListItem>12:30 PM</asp:ListItem>
                                                    <asp:ListItem>1:00 PM</asp:ListItem>
                                                    <asp:ListItem>1:30 PM</asp:ListItem>
                                                    <asp:ListItem>2:00 PM</asp:ListItem>
                                                    <asp:ListItem>2:30 PM</asp:ListItem>
                                                    <asp:ListItem>3:00 PM</asp:ListItem>
                                                    <asp:ListItem>3:30 PM</asp:ListItem>
                                                    <asp:ListItem>4:00 PM</asp:ListItem>
                                                    <asp:ListItem>4:30 PM</asp:ListItem>
                                                    <asp:ListItem>5:00 PM</asp:ListItem>
                                                    <asp:ListItem>5:30 PM</asp:ListItem>
                                                    <asp:ListItem>6:00 PM</asp:ListItem>
                                                    <asp:ListItem>6:30 PM</asp:ListItem>
                                                    <asp:ListItem>7:00 PM</asp:ListItem>
                                                    <asp:ListItem>7:30 PM</asp:ListItem>
                                                    <asp:ListItem>8:00 PM</asp:ListItem>
                                                    <asp:ListItem>8:30 PM</asp:ListItem>
                                                    <asp:ListItem>9:00 PM</asp:ListItem>
                                                    <asp:ListItem>9:30 PM</asp:ListItem>
                                                    <asp:ListItem>10:00 PM</asp:ListItem>
                                                    <asp:ListItem>10:30 PM</asp:ListItem>
                                                    <asp:ListItem>11:00 PM</asp:ListItem>
                                                    <asp:ListItem>11:30 PM</asp:ListItem>

                                                </asp:DropDownList>

                                            </div>
                                            <div class="form-group">
                                                <label for="CMB_EstadoSolicitud"></label>
                                                <asp:DropDownList ID="CMB_EstadoSolicitud" runat="server">
                                                    <asp:ListItem Value="Solicitada">Solicitada</asp:ListItem>
                                                    <asp:ListItem Value="Agendado">Agendado</asp:ListItem>
                                                    <asp:ListItem Value="Realizada">Realizada</asp:ListItem>
                                                    <asp:ListItem Value="Vacaciones">Vacaciones</asp:ListItem>
                                                    <asp:ListItem Value="Anulado">Anulado</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                            <div class="form-group">
                                                <label for="CMB_Disenador"></label>
                                                <asp:DropDownList ID="CMB_Disenador" runat="server"></asp:DropDownList>
                                            </div>
                                            <div class="form-group">
                                                <label for="TXT_NotasAsesor"></label>
                                                <asp:TextBox ID="TXT_NotasAsesor" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Columns="40"></asp:TextBox>
                                            </div>


                                        </div>
                                    </div>




                                    <table class="table">

                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <asp:Button ID="CMD_Confirmar" runat="server" Text="Guardar" CssClass="btnverde" OnClick="CMD_Confirmar_Click" OnClientClick="return validasignacion();" /></td>
                                            <td>
                                                <asp:Button ID="cmdcancelar23" runat="server" Text="Cancelar" CssClass="btngris" OnClientClick="return closeCalendario();" /></td>
                                        </tr>
                                    </table>


                                </div>







                                <button type="button" id="btn_FormBuscarProdutosPcgraf" data-toggle="modal" data-target="#FormBuscarProdutosPcgraf" style="visibility: hidden;">open</button>


                                <div id="FormBuscarProdutosPcgraf" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true" style="display: none;">

                                    <%-- <div class="modal-dialog modal-sm" >
                 <div class="modal-content">
                  <div class="modal-header">
                          <h3>Buscar productos</h3> 
                   </div>
                  <div class="modal-body">--%>

                                    <asp:UpdatePanel ID="upSuppliers" runat="server" UpdateMode=" Conditional">

                                        <ContentTemplate>

                                            <p>
                                                Buscar: 
                                        <asp:DropDownList ID="Drop_SelectFiltroProducto" runat="server" CssClass="ddlclass">

                                            <asp:ListItem Value="Codigo"></asp:ListItem>
                                            <asp:ListItem Selected="True" Value="Descripcion"></asp:ListItem>

                                        </asp:DropDownList>
                                                <%--       <input class="text-box single-line" id="TXT_FiltroProducto" name="TXT_FiltroProducto" type="text" />--%>
                                                <asp:TextBox ID="TXT_FiltroProducto" CssClass="textboxpeqSearch" placeholder="Escriba..." runat="server"></asp:TextBox>
                                                <asp:Button ID="CMD_SearchProdPcgraf" runat="server" Text="Buscar Productos" OnClick="CMD_SearchProdPcgraf_Click"
                                                    OnClientClick="return activarloading()" CssClass="btn btn-success active" />

                                            </p>

                                            <div style="overflow: auto; height: 350px;">
                                                <asp:GridView ID="DTG_SearchProdPcgraf" DataKeyNames="sCodigo_Producto" CssClass=" table table-bordered table-hover"
                                                    runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                                                    OnSelectedIndexChanging="DTG_SearchProdPcgraf_SelectedIndexChanging">

                                                    <Columns>
                                                        <asp:BoundField DataField="sCodigo_Producto" HeaderText="Codigo de Producto" />
                                                        <asp:BoundField DataField="sDescripcion_Inventario" HtmlEncode="false" HeaderText="Descripción Inventario" />
                                                        <asp:BoundField DataField="PrecioVenta" HtmlEncode="false" HeaderText="Precio Unitario" />
                                                        <asp:BoundField DataField="Moneda" HtmlEncode="false" HeaderText="Moneda" />
                                                        <asp:BoundField DataField="Saldo" HtmlEncode="false" HeaderText="Saldo Inventario" />


                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select"
                                                                    runat="server" Text="Seleccionar" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <%--<div class="modal-footer">
                                     <asp:Button ID="Button5" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />
                                  </div>
                                </div>
                              </div>--%>
                                </div>






                                <button type="button" id="btn_FormBuscarProdutosPcgrafImportado" data-toggle="modal" data-target="#FormBuscarProdutosPcgrafImportado" style="visibility: hidden;">open</button>


                                <div id="FormBuscarProdutosPcgrafImportado" tabindex="-1" role="dialog" aria-labelledby="popAdjunto3" aria-hidden="true" style="display: none;">

                                    <%-- <div class="modal-dialog modal-sm" >
                                 <div class="modal-content">
                                  <div class="modal-header">
                                       <h3>Buscar productos</h3> 
                                   </div>
                                  <div class="modal-body">--%>


                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Conditional">

                                        <ContentTemplate>

                                            <p>
                                                Buscar: 
                                        <asp:DropDownList ID="Drop_SelectFiltroProductoImportado" runat="server" CssClass="ddlclass">

                                            <asp:ListItem Value="Codigo"></asp:ListItem>
                                            <asp:ListItem Selected="True" Value="Descripcion"></asp:ListItem>

                                        </asp:DropDownList>
                                                <input class="textboxpeqSearch" placeholder="Escriba..." id="TXT_FiltroProductoImportado" name="TXT_FiltroProductoImportado"
                                                    type="text" value="" />

                                                <asp:Button ID="CMD_SearchProdPcgrafImportado" runat="server" Text="Buscar Productos"
                                                    CssClass="btn btn-success active" OnClientClick="return activarloading()"
                                                    OnClick="CMD_SearchProdPcgrafImportado_Click" />

                                            </p>

                                            <div style="overflow: auto; height: 350px;">
                                                <asp:GridView ID="DTG_SearchProdPcgrafImportado" DataKeyNames="sCodigo_Producto"
                                                    CssClass=" table table-bordered table-hover" runat="server" AutoGenerateColumns="False"
                                                    ShowHeaderWhenEmpty="True" OnSelectedIndexChanging="DTG_SearchProdPcgrafImportado_SelectedIndexChanging">

                                                    <Columns>
                                                        <asp:BoundField DataField="sCodigo_Producto" HeaderText="Codigo de Producto" />
                                                        <asp:BoundField DataField="sDescripcion_Inventario" HtmlEncode="false" HeaderText="Descripción Inventario" />
                                                        <asp:BoundField DataField="PrecioVenta" HtmlEncode="false" HeaderText="Precio Unitario" />
                                                        <asp:BoundField DataField="Moneda" HtmlEncode="false" HeaderText="Moneda" />
                                                        <asp:BoundField DataField="Saldo" HtmlEncode="false" HeaderText="Saldo Inventario" />

                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select"
                                                                    runat="server" Text="Seleccionar" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <%-- <div class="modal-footer">
                                      <asp:Button ID="Button6" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />
                                    </div>
                                    </div>
                                  </div>
                                           
                               </div>--%>
                                </div>
                                <!--incio del modal-->




                                <!--fin del modal-->


                                <div id="FormBuscarOfertasModulor" style="display: none;">
                                    <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                            </div>
                                            <p>
                                                Buscar: 
                                            <asp:DropDownList ID="DropTipoBusquedaModulor" runat="server" CssClass="ddlclass">
                                                <asp:ListItem Value="Cotizacion"></asp:ListItem>
                                                <asp:ListItem Selected="True" Value="Nombre Cliente"></asp:ListItem>
                                                <asp:ListItem Value="Detalle"></asp:ListItem>
                                            </asp:DropDownList>
                                                <input class="textboxpeqSearch" placeholder="Escriba..." id="TXT_FiltroProductoModulor" name="TXT_FiltroProductoModulor" type="text" value="" />
                                                <asp:Button ID="CMD_BuscarModulorOferta" runat="server" Text="Buscar Oferta Teowin" CssClass="btn btn-success active"
                                                    OnClick="CMD_BuscarModulorOferta_Click" />
                                                Tipo de Producto: 
                                            <asp:DropDownList ID="DropTipoProducto" runat="server" CssClass="ddlclass">

                                                <asp:ListItem Value="Cocinas Importadas"></asp:ListItem>
                                                <asp:ListItem Value="Baño"></asp:ListItem>
                                                <asp:ListItem Selected="True" Value="Cocina"></asp:ListItem>
                                                <asp:ListItem Value="Closet"></asp:ListItem>
                                            </asp:DropDownList>
                                            </p>
                                            <div style="overflow: auto; height: 350px;">
                                                <asp:GridView ID="DTG_BuscarModulor" DataKeyNames="Cotizacion" CssClass=" table table-bordered table-hover"
                                                    runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True"
                                                    OnSelectedIndexChanging="DTG_BuscarModulor_SelectedIndexChanging">

                                                    <Columns>
                                                        <asp:BoundField DataField="Cotizacion" HeaderText="Cotizacion" />
                                                        <asp:BoundField DataField="NombreCliente" HtmlEncode="false" HeaderText="NombreCliente" />
                                                        <asp:BoundField DataField="Detalle" HtmlEncode="false" HeaderText="Detalle" />
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:Button CssClass="btn btn-sm " ID="imgSelection" CommandName="Select" OnClientClick="return activarloading();"
                                                                    runat="server" Text="Seleccionar" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </div>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                </div>

                                <%--   <div id="popmsj" class="popupnotificacion">
                                    <a title="Cerrar" class="close" id="cerrarp" href="javascript:void(0)" onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
                                    <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
                                    <div style="text-align: center;">
                                        <label id="lblmsj" style="font-weight: 200;"></label>
                                        <br />
                                        <a title="Cerrar" class="closeok" id="cerrar2" href="javascript:void(0)"
                                            onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">Aceptar</a>
                                        <asp:Button ID="CloseButton" runat="server" Text="Close" OnClientClick="javaScript:window.close(); return false;" />
                                    </div>
                                </div>

                                <!-- base semi-transparente -->
                                <div id="fade" class="overlay"></div>--%>




                                <%-- CssClass="table table-responsive " AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None"  ShowHeaderWhenEmpty="True" --%>
                            </div>
                            <%-- <asp:BoundField DataField="CodigoProducto" HeaderText="CodigoProducto" ControlStyle-Width="40" Visible="false" >
                            <ControlStyle Width="40px" />
                            </asp:BoundField>--%>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <div class="rowsPanel panel panel-primary">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse4">
                Archivos Adjuntos<span class="icon-chevron-small-down rightBar"></span>
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse4">
                    <div class="well">



                        <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Button ID="btn_newAdj" runat="server" Text="Nuevo" CssClass="btn btn-default" OnClientClick="openPopAdjunto();return false;" />


                                <asp:LinkButton ID="btn_descargar" runat="server" Visible="false" CssClass="btn btn-default" OnClick="btn_descargar_Click">
                                                       <span class="glyphicon glyphicon-download-alt"></span>&nbsp;Descargar
                                </asp:LinkButton>

                                <asp:LinkButton ID="btn_visualizar" runat="server" Visible="false" OnClick="btn_visualizar_Click" CssClass="btn btn-default" OnClientClick="return activarloadingarchivo();">
                                                   <span class="glyphicon glyphicon-eye-open"></span>&nbsp;Visualizar
                                </asp:LinkButton>

                                <asp:LinkButton ID="CMDCancelar" runat="server" Visible="false" OnClick="CMDCancelar_Click" CssClass="btn btn-default">
                                                   <span class="glyphicon glyphicon-pushpin"></span>&nbsp;Desmarcar
                                </asp:LinkButton>


                            </ContentTemplate>
                            <Triggers>
                                <asp:PostBackTrigger ControlID="btn_descargar" />
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

                                        <asp:TemplateField HeaderText="Nombre Documento" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
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
                                                <asp:TextBox ID="TXT_Observaciones" runat="server" MaxLength="199" Text='<%#Eval("Observaciones") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Extension" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
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

                                        <asp:TemplateField>
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




        <div class="rowsPanel panel panel-primary">
            <div class="panel-heading" data-toggle="collapse" data-target="#collapse6">
                Seguimiento<span class="icon-chevron-small-down rightBar"></span>
            </div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse6">
                    <div class="well">
                        <asp:UpdatePanel ID="UpdatePanelseguimiento" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                <asp:Button ID="btn_nuevanota" runat="server" Text="Nueva Nota" CssClass="btn btn-default" OnClientClick="limpiarmodal();abrirmodalnotas();return false;" /><br />
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

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <%--<asp:LinkButton ID="Responder" runat="server"  >Responder</asp:LinkButton>--%>
                                                <a id="Responder" href="javascript:void(0)" onclick="return abrirmodalnotas();">Responder</a>

                                                <%--<input type="button" style="width: 50px;" id="Responder" 
                                                                     onclick="abrirmodalnotas();" value='<%# Eval("ID_Nota") %>' />--%>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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


        <div id="popmsj33" class="alert alert-info alert-dismissable" style="display: none;">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <label id="lblmsj33"></label>
        </div>

        
         <div class="footerControles">
                      <div class="main container" style="background-color:rgba(0,0,0,.6);background-color:white;border:0;padding: 0px;text-align: center;  ">
       <%-- <div class="panel panel-default">--%>
            <div class="panel-body" style="margin:5px; ">


                <asp:HiddenField ID="IDCliente" runat="server" Value="" />
                <asp:Button ID="CMD_Convertir" runat="server" Text="Convertir a Contrato"  CssClass="btn btn-warning" OnClick="CMD_Convertir_Click" />&nbsp; <%--OnClientClick="return abrirmodalConvertir();" --%>
                            <%-- <asp:Button ID="CMD_AgendarCitaVendedor" runat="server" Text="Convertir"  CssClass="btn btn-warning" />&nbsp;--%>

                <asp:Button ID="CMD_EnviarCorreo" runat="server" Text="Agendar Cita Vendedor" CssClass="btn btn-warning"  OnClick="CMD_EnviarCorreo_Click1" /> <%--OnClientClick="limpiarmodal();abrirmodalCitasVendedores();return false;"--%>
                <asp:Button ID="CMD_ImprimirPresupuesto" runat="server" Text="Imprimir Presupuesto" CssClass="btn btn-warning" OnClientClick="limpiarmodal();abrirmodalnotasPresupuesto();return false;" />

                <asp:CheckBox ID="CHK_CreaProyecto" runat="server" Text="Crear un proyecto" Checked="true" />
                <asp:Button ID="CMD_CalendarioEventos" runat="server" Text="Calendario de seguimiento" OnClick="CMD_CalendarioEventos_Click" Visible="false" />&nbsp;
                             &nbsp;
                             <label style="width: 300px"></label>
                <asp:Button ID="CMD_Nuevo" runat="server" Text="Nuevo" OnClientClick="return limpiar();" OnClick="CMD_Nuevo_Click" CssClass="btn btn-primary" />&nbsp;
                             <asp:Button ID="CMD_Guardar" runat="server" Text="Guardar" OnClick="CMD_Guardar_Click" OnClientClick="return validar();" CssClass="btn btn-success" />&nbsp;
                        
                             <%--<asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado" OnClick="CMD_Salir_Click" CssClass="btn btn-default active" />--%>

            </div>
       <%-- </div>--%>
        

    </div>
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



    <button type="button" id="btn_PopZonas" data-toggle="modal" data-target="#PopZonas" style="visibility: hidden;">open</button>


    <div class="modal fade" id="PopZonas" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" style="display: none;" aria-hidden="true">

        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 class="modal-title" id="exampleModalLabel24">Adjunto</h3>

                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UPProductos" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>

                            <asp:TextBox ID="TXT_Search" CssClass="textboxpeqSearch" Width="80%" placeholder="Buscar Provincia, Canton, Distrito..." runat="server" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                            <asp:LinkButton ID="CMD_buscarZona" runat="server" CssClass="btn btn-default" OnClick="CMD_buscarZona_Click" OnClientClick="return onloadingZona();">
                               <span class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>

                            <img id="imgLPr" src="../images/cargando4.gif" width="30" height="30" style="display: none; float: right;">


                            <div style="height: 300px; overflow: auto">
                                <div class="table-responsive">
                                    <asp:GridView ID="DGVZonas" Width="100%"
                                        runat="server" DataKeyNames="sZonaVentas,sDescripcion" CssClass="table"
                                        AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                        Font-Size="9" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="2" OnRowCommand="DGVZonas_RowCommand">
                                        <Columns>

                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <asp:Button ID="AddButton" runat="server"
                                                        CommandName="seleccionar"
                                                        CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                                        Text="Elegir" CssClass="btn btn-default" />

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>

                                                    <asp:Label ID="Lbl_sCodigo" runat="server" Text="Codigo"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_sCodigo2" runat="server" Text='<%#Eval("sZonaVentas") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                                <HeaderTemplate>

                                                    <asp:Label ID="Lbl_sDescripcion" runat="server" Text="Descripción"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_sDescripcion2" runat="server" Text='<%#Eval("sDescripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>

                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                    </asp:GridView>
                                </div>
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

    <div id="popMapa" style="display: none;">
        <div class="google-maps">
            <gmaps:GMap ID="GMap1" runat="server" enableServerEvents="true" enableHookMouseWheelToZoom="True"
                Height="480px" Width="100%" />
        </div>

    </div>

    <div id="popTarea" style="display: none;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="CMBPropietario">Asignado a:</label>
                            <asp:DropDownList ID="CMBPropietario" CssClass="form-control" runat="server"></asp:DropDownList>


                        </div>
                        <div class="form-group">
                            <label for="CMBAsunto">Asunto:</label>
                            <asp:DropDownList ID="CMB_Asunto" CssClass="form-control" runat="server"></asp:DropDownList>


                        </div>
                        <div class="form-group">

                            <asp:CheckBox ID="CK_TodoelDia" runat="server" />
                            <label for="CK_TodoelDia">Evento de todo el día</label>
                        </div>

                        <div class="form-group">
                            <label for="CMB_MostrarComo">Mostrar evento como:</label>
                            <asp:DropDownList ID="CMB_MostrarComo" CssClass="form-control" runat="server"></asp:DropDownList>

                        </div>

                        <div class="form-group">
                            <label for="DT_FechaInicio">Fecha Inicio:</label>
                            <asp:TextBox ID="DT_FechaInicio" CssClass="form-control" runat="server"></asp:TextBox>
                            <ajax:CalendarExtender ID="calendario1" TargetControlID="DT_FechaInicio" runat="server" Format="MM/dd/yyyy HH:mm:ss tt" />
                        </div>
                        <div class="form-group">
                            <label for="DT_FechaFin">Fecha Fin:</label>
                            <asp:TextBox ID="DT_FechaFin" runat="server" CssClass="form-control"></asp:TextBox>
                            <ajax:CalendarExtender ID="CalendarExtender1" TargetControlID="DT_FechaFin" runat="server" Format="MM/dd/yyyy HH:mm:ss tt" />
                        </div>
                        <div class="form-group">
                            <label for="CK_Recordatorio">Recordar:</label>
                            <asp:DropDownList ID="CK_Recordatorio" runat="server" CssClass="form-control"></asp:DropDownList>

                        </div>
                        <div class="form-group">
                            <label for="TXT_Telefono2">Teléfono:</label>
                            <asp:TextBox ID="TXT_Telefono2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TXT_Correo2">Correo:</label>
                            <asp:TextBox ID="TXT_Correo2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TXT_Ubicacion">Ubicación:</label>
                            <asp:TextBox ID="TXT_Ubicacion" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="TXT_Comentario">Comentarios:</label>
                            <asp:TextBox ID="TXT_Comentario" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>

                        <div style="margin: auto;">
                            <asp:LinkButton ID="CMD_Guardar2" runat="server" CssClass="btn btn-success" OnClick="CMD_Guardar2_Click" OnClientClick="return validartarea();">
                                                     Guardar
                            </asp:LinkButton>
                        </div>


                    </div>

                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

    <button type="button" id="btn_FormNotas" data-toggle="modal" data-target="#FormNotas" style="visibility: hidden;">open</button>
    <button type="button" id="btn_FormCitas" data-toggle="modal" data-target="#FormCitas" style="visibility: hidden;">open</button>


    <div class="modal fade" id="FormNotas" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">

        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 class="modal-title" id="exampleModalLabel913">
                        <label id="titulomodalnotas"></label>
                    </h3>

                </div>
                <div class="modal-body">

                    <asp:UpdatePanel ID="upNotas" runat="server">
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
                                        <asp:TextBox ID="TXTContenidoNota" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="400"></asp:TextBox>
                                    </div>

                                </div>

                            </div>
                            <table class="trans_table">
                                <tr>
                                    <td colspan="3" align="center">
                                        <asp:Button ID="CMDActualizarNota" runat="server" CssClass="btn btn-success" Text="Incluir Respuesta" />&nbsp;
                                                                        <%--OnClick="CMDActualizarNota_Click" OnClientClick="return validarmodalnotas();"--%>
                                        <asp:Button ID="CMDIncluirNota" runat="server" CssClass="btn btn-success" Text="Incluir Nota" />&nbsp;
                                                                        <%--OnClick="CMDIncluirNota_Click" OnClientClick="return validarmodalnotas();"--%>
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




    <button type="button" id="btn_FormNotasImprimir" data-toggle="modal" data-target="#FormNotasImprimir" style="visibility: hidden;">open</button>
    <div class="modal fade" id="FormNotasImprimir" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">

        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 class="modal-title" id="exampleModalLabel913">
                        <label id="titulomodalnotas2">Impresión de Presupuesto</label>
                    </h3>

                </div>
                <div class="modal-body">

                    <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>


                            <asp:HiddenField ID="HiddenField1" runat="server" Value="" />
                            <asp:HiddenField ID="HiddenField2" runat="server" Value="" />

                            <div class="row">
                                <div class="col-md-12">
                                    <%--     <div class="form-group">
                                                                            <label for="TXTTituloNota2">Cotización #:</label> 
                                                                            <asp:TextBox ID="TXT_Cotizacion" runat="server" MaxLength="99"></asp:TextBox>
                                                                      </div>--%>
                                    <%--  <div class="form-group">
                                                                          <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                            <label for="CHKEstado">Incluir como pendiente</label>
                                                                           
                                                                      </div>--%>
                                    <div class="form-group">
                                        <label for="TXTContenidoNota2">Indique una observación si el Presupuesto a sufrido un cambio:</label>
                                        <asp:TextBox ID="TXT_NotaPresupuesto" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="400"></asp:TextBox>
                                    </div>
                                     <div class="form-group text-center">
                                             <asp:Label ID="LBL_ERRORPRESUPUESTO" CssClass="colortitulo" Text="" Font-Size="14" ForeColor="Red" Font-Bold="true" runat="server"></asp:Label>
                                </div>
                                </div>


                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <%-- <table class="trans_table" >
                                                                <tr >
                                                                    <td colspan="3" align="center" >--%>
                                        <asp:Button ID="CMD_ImprimirContratoNota" runat="server" CssClass="btn btn-success" Text="Generar Presupuesto" OnClick="CMD_ImprimirContratoNota_Click"  />&nbsp;<%-- OnClientClick="cerrarPopNotasPresupuesto();"--%><%--OnClick="CMDActualizarNota_Click" OnClientClick="return validarmodalnotas();"--%><%--<asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Incluir Nota"  />--%>&nbsp;
                                                                        <%--OnClick="CMDIncluirNota_Click" OnClientClick="return validarmodalnotas();"--%>
                                        <%--     </td>
                                                                </tr>
                                                             </table> --%>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="CMD_ImprimirContratoNota" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="BTNCerrarPresupuesto" EventName="Click" />

                        </Triggers>
                    </asp:UpdatePanel>

                </div>
                <div class="modal-footer">

                    <asp:Button ID="BTNCerrarPresupuesto" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                </div>
            </div>
        </div>

    </div>


        <button type="button" id="btn_FormConvertir" data-toggle="modal" data-target="#FormConvertir" style="visibility: hidden;">open</button>
    <div class="modal fade" id="FormConvertir" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">

        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 class="modal-title" id="exampleModalLabel913">
                        <label id="titulomodalnotas2">Convertir Lead a Contrato</label>
                    </h3>

                </div>
                <div class="modal-body">

                    <asp:UpdatePanel ID="UP_Convertir" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>


                            <asp:HiddenField ID="HiddenField3" runat="server" Value="" />
                            <asp:HiddenField ID="HiddenField4" runat="server" Value="" />

                            <div class="row">
                                <div class="col-md-12">
                                    <%--     <div class="form-group">
                                                                            <label for="TXTTituloNota2">Cotización #:</label> 
                                                                            <asp:TextBox ID="TXT_Cotizacion" runat="server" MaxLength="99"></asp:TextBox>
                                                                      </div>--%>
                                    <%--  <div class="form-group">
                                                                          <asp:CheckBox ID="CheckBox1" runat="server" />
                                                                            <label for="CHKEstado">Incluir como pendiente</label>
                                                                           
                                                                      </div>--%>
                                    <div class="form-group">
                                        <label for="TXTContenidoNota2">Seleccione una Cotización o puede crear una nueva despues de Convertir a Contrato </label>
                                       <%-- <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="400"></asp:TextBox>--%>
                                             <asp:DropDownList ID="DROP_TipoCotizacion" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True" Value="Seleccione">Seleccione</asp:ListItem>
                                        <asp:ListItem Value="Sitio">Sitio</asp:ListItem>
                                        <asp:ListItem Value="Sala">Sala</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group text-center">
                                        <%-- <table class="trans_table" >
                                                                <tr >
                                                                    <td colspan="3" align="center" >--%>
                                        <asp:Button ID="CMD_ConvertiraContrato" runat="server" CssClass="btn btn-success" Text="Convertir Contrato" OnClick="CMD_ConvertiraContrato_Click"  />&nbsp; <%--OnClientClick="cerrarPopNotasPresupuesto();"--%>
                                                                        <%--OnClick="CMDActualizarNota_Click" OnClientClick="return validarmodalnotas();"--%>
                                        <%--<asp:Button ID="Button4" runat="server" CssClass="btn btn-success" Text="Incluir Nota"  />--%>&nbsp;
                                                                        <%--OnClick="CMDIncluirNota_Click" OnClientClick="return validarmodalnotas();"--%>
                                        <%--     </td>
                                                                </tr>
                                                             </table> --%>


                                    </div>
                                        <div class="form-group text-center">
                                             <asp:Label ID="LBL_ERRORCONVERTIR" CssClass="colortitulo" Text="" Font-Size="14" ForeColor="Red" Font-Bold="true" runat="server"></asp:Label>
                                </div>
                                        </div>
                            </div>
                                        
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="CMD_ConvertiraContrato" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="BTNCerrarPresupuesto3" EventName="Click" />

                        </Triggers>
                    </asp:UpdatePanel>

                </div>
                <div class="modal-footer">

                    <asp:Button ID="BTNCerrarPresupuesto3" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                </div>
            </div>
        </div>

    </div>


    <!-- Trigger the modal with a button -->
    <button type="button" style="display: none" class="btn btn-info btn-lg" id="CMD_ModalEditarEvento" data-toggle="modal" data-target="#FormCitas">Abrir Modal</button>

    <button type="button" style="display: none" class="btn btn-info btn-lg" id="CMD_ModalMostrarEvento" data-toggle="modal" data-target="#MDL_MostrarEvento">Abrir Modal</button>


    <div class="modal fade" id="FormCitas" role="dialog">


        <!--Modal para ver el evento -->
        <div class="modal-dialog" id="DLG_Editar">

            <div class="modal-content" style="box-shadow: 0 5px 15px rgba(206, 206, 214, 0.84);">
                <div style="background-color: black" class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" style="color: white; text-shadow: 0 0 5px #d8c3c3;">Agendar Citas Vendedor</h4>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="UP_EditarEvento" runat="server" UpdateMode="Conditional">
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
                                            <asp:DropDownList ID="CMB_DE" CssClass="form-control" runat="server" OnTextChanged="CMB_DE_TextChanged">
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
                                    <%-- <asp:Label runat="server">Nombre del Diseñador:</asp:Label>--%>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="CMB_Diseñador" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True" Value="Seleccione">Seleccione</asp:ListItem>
                                        <asp:ListItem Value="Sitio">Sitio</asp:ListItem>
                                        <asp:ListItem Value="Sala">Sala</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <%--  </div>
                                </div>--%>
                                <%-- <div class="form-group">--%>
                                <%--   <div class="form-inline">
                                    <div class="form-group">--%>
                                <%-- <asp:Label runat="server">Estado de la Solicitud:</asp:Label>
                                    </div>--%>
                                <%-- <div class="form-group">
                                        <asp:DropDownList ID="CMD_Solicitud" CssClass="form-control" runat="server">
                                            <asp:ListItem ></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>--%>
                                <%-- </div>
                                </div>--%>



                                <div class="form-group">
                                    <label for="TXT_Descripcion">Notas Asesor:</label>
                                    <asp:TextBox runat="server" Height="100" TextMode="MultiLine" ID="TXT_NotasCita" CssClass="form-control" MaxLength="200" placeholder="Descripcion del Evento"></asp:TextBox>
                                </div>

                                <div class="modal-footer">
                                    <div class="col-lg-12 col-xs-12 col-lg-12">
                                        <div class="form-inline" style="text-align: center">
                                            <div class="form-group">
                                                <asp:LinkButton runat="server" ID="CMD_Aceptar" CssClass="form-control" OnClick="CMD_Aceptar_Click"><span class="glyphicon glyphicon-check" style="color:green"> </span>Aceptar</asp:LinkButton>
                                                <%--OnClick="CMD_Aceptar_Click" --%>
                                            </div>
                                            <div class="form-group">
                                                <asp:LinkButton runat="server" OnClientClick="return cerrarModalCitasVendedores();" CssClass="form-control"><span class="glyphicon glyphicon-check" style="color:red"> </span>Cancelar</asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <label for="TXT_Listado"></label>
                                <asp:GridView ID="DTG_Listado" CssClass="table" runat="server"
                                    DataKeyNames="sCodigo" AutoGenerateColumns="False"
                                    Font-Size="9" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                    BorderWidth="1px" CellPadding="2"
                                    ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros.">
                                    <Columns>

                                        <asp:BoundField DataField="sCodigo" HeaderText="sCodigo" Visible="false" />

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_FechaInicio" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="15" ForeColor="Black" placeholder="dd/mm/aaaa"></asp:TextBox>

                                                <br />
                                                <asp:Label ID="Lbl_FechaInicio" runat="server" Text="Fecha  Inicio"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_FechaInicio2" runat="server" Text='<%#Eval("FechaInicio" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_HoraInicio" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="15" ForeColor="Black" placeholder="00:00"></asp:TextBox>

                                                <br />
                                                <asp:Label ID="Lbl_HoraInicio" runat="server" Text="Hora  Inicio"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_HoraInicio2" runat="server" Text='<%#Eval("HoraInicio" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_FechaFinal" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="15" ForeColor="Black" placeholder="dd/mm/aaaa"></asp:TextBox>

                                                <br />
                                                <asp:Label ID="Lbl_FechaFinal" runat="server" Text="Fecha  Final"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_FechaFinal2" runat="server" Text='<%#Eval("FechaFinal" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_HoraFinal" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="15" ForeColor="Black" placeholder="00:00"></asp:TextBox>

                                                <br />
                                                <asp:Label ID="Lbl_HoraFinal" runat="server" Text="Hora Final"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_HoraFinal" runat="server" Text='<%#Eval("HoraFinal" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_Estado" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Lbl_Estado" runat="server" Text="Estado"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_Estado" runat="server" Text='<%#Eval("Estado") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_Diseñador" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Lbl_Diseñador" runat="server" Text="Vendedor"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_Diseñador" runat="server" Text='<%#Eval("Diseñador") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                            <HeaderTemplate>
                                                <asp:TextBox ID="TXT_Notas" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="20" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                <br />
                                                <asp:Label ID="Lbl_Notas" runat="server" Text="Revisión"></asp:Label>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Lbl_Notas" runat="server" Text='<%#Eval("Notas") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>


                                    </Columns>

                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <RowStyle ForeColor="#000000" />
                                    <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                </asp:GridView>

                            </div>


                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
