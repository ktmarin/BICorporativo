<%@ Page Title="" Language="C#" MasterPageFile="~/SiteGestVehicular.Master" AutoEventWireup="true" CodeBehind="FRMMenuGV00Add.aspx.cs" Inherits="MCWebHogar.Vehiculos.FRMMenuGV00Add" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <script type="text/javascript">
        $(function () {


            $('#popContacto').dialog({
                autoOpen: false,
                modal: true,
                width: 300,
                Height: 300,
                title: 'Información del Contacto',
                //buttons: {CMB_SectorLead_SelectedIndexChanged

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




            $('#cerrarp').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });
            $('#cerrar2').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });

        });

        function doclick() {
            __doPostBack('Btn_Buscar', '');
        }

        function soloNumeros(e) {
            var key = window.Event ? e.which : e.keyCode
            return ((key >= 48 && key <= 57) || key == 32)
        }

        function detour(e) {
            var key = window.Event ? e.which : e.keyCode
            if (key == 13) {
                doclick();
            }
        }

        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';
            $("#divCompleto").addClass("bloqueo");

            //$("#Content_CMD_Guardar").click(function () {
            //    $("#divCompleto").addClass("bloqueo container body-content");
            //});

            return false;
        }


        function abrirPopContacto() {
            document.getElementById('<%= TXT_NombreContacto.ClientID %>').value = '';

            document.getElementById('<%= TXT_Departamento.ClientID %>').value = '';
            document.getElementById('<%= TXT_Correo.ClientID %>').value = '';
            document.getElementById('<%= TXT_Telefono.ClientID %>').value = '';
            document.getElementById('<%= TXT_Celular.ClientID %>').value = '';
            document.getElementById('<%= TXT_Observaciones.ClientID %>').value = '';

            document.getElementById('<%= TXT_IDContacto.ClientID %>').value = '';

            $('#popContacto').dialog('open');
            return false;
        }

        function cerrarPopContacto() {
            $('#popContacto').dialog('close');
            return false;
        }



        function openmodalmodificarcliente() {
            document.getElementById('fade').style.display = 'block';
            document.getElementById('FormModificarCliente').style.display = 'block';
            return false;
        }

        function limpiar() {
            <%--document.getElementById('<%= TXT_sNombre.ClientID %>').value = '';
            document.getElementById('<%= TXT_sAlias.ClientID %>').value = '';
            document.getElementById('<%= TXT_sCedula_Juridica.ClientID %>').value = '';
            document.getElementById('<%= TXT_sTelefono.ClientID %>').value = '';
            document.getElementById('<%= TXT_sDireccion_E_Mail.ClientID %>').value = '';
            document.getElementById('<%= TXT_sDireccion.ClientID %>').value = ''; 
            document.getElementById('<%= TXT_sDireccionEntrega.ClientID %>').value = '';
            document.getElementById('<%= TXT_NombreTransportista.ClientID %>').value = '';
            document.getElementById('<%= TXT_Notas.ClientID %>').value = '';

            document.getElementById('<%= TXT_sCodigo.ClientID %>').value = '';--%>

            
            
           <%-- document.getElementById('<%= CMB_bTipoCedula.ClientID %>').selectedIndex = 0;
            document.getElementById('<%= CMB_OrigenLead.ClientID %>').selectedIndex = 0;
            document.getElementById('<%= CMB_SectorLead.ClientID %>').selectedIndex = 0;--%>

        }

        function ClientSelected(source, eventArgs) {
            var idx = source._selectIndex;
            var value = source.get_completionList().childNodes[idx]._value;

            var array = value.split('-');
            var Id = array[0];
            Id = Id.trim();
            var Descripcion = array[1];
            Descripcion = Descripcion.trim();
            var TXT_sNombre = "<%= TXT_sNombre.ClientID %>";
            document.getElementById(TXT_sNombre).value = Descripcion;
            var TXT_sCedula_Juridica = "<%= TXT_sCedula_Juridica.ClientID %>";
            document.getElementById(TXT_sCedula_Juridica).value = Id;
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

        function validarmodifica() {
            var TXT_sNombre = document.getElementById('<%= TXT_sNombre.ClientID %>').value.trim();
            TXT_sNombre = TXT_sNombre.trim();

            var TXT_sAlias = document.getElementById('<%= TXT_sAlias.ClientID %>').value.trim();
            TXT_sAlias = TXT_sAlias.trim();

            var TXT_sCedula_Juridica = document.getElementById('<%= TXT_sCedula_Juridica.ClientID %>').value;
            TXT_sCedula_Juridica = TXT_sCedula_Juridica.trim();

            var TXT_sTelefono = document.getElementById('<%= TXT_sTelefono.ClientID %>').value.trim();
            TXT_sTelefono = TXT_sTelefono.trim();

            var TXT_sDireccion_E_Mail = document.getElementById('<%= TXT_sDireccion_E_Mail.ClientID %>').value.trim();
            TXT_sDireccion_E_Mail = TXT_sDireccion_E_Mail.trim();

            var TXT_sDireccion = document.getElementById('<%= TXT_sDireccion.ClientID %>').value.trim();
            TXT_sDireccion = TXT_sDireccion.trim();

            var TXT_sDireccionEntrega = document.getElementById('<%= TXT_sDireccionEntrega.ClientID %>').value.trim();
            TXT_sDireccionEntrega = TXT_sDireccionEntrega.trim();

            var TXT_NombreTransportista = document.getElementById('<%= TXT_NombreTransportista.ClientID %>').value.trim();
            TXT_NombreTransportista = TXT_NombreTransportista.trim();

            var TXT_Notas = document.getElementById('<%= TXT_Notas.ClientID %>').value.trim();
            TXT_Notas = TXT_Notas.trim();


            var CMB_bTipoCedula = document.getElementById('<%= CMB_bTipoCedula.ClientID %>');
            var CMB_OrigenLead = document.getElementById('<%= CMB_OrigenLead.ClientID %>');
            var CMB_SectorLead = document.getElementById('<%= CMB_SectorLead.ClientID %>');

         <%--   var CMB_sClaseCliente = document.getElementById('<%= CMB_sClaseCliente.ClientID %>');
            var CMB_sComodin30 = document.getElementById('<%= CMB_sComodin30.ClientID %>');
            var CMB_Propietario = document.getElementById('<%= CMB_Propietario.ClientID %>');--%>


            if (CMB_bTipoCedula.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el tipo de identificación.');
                return false;
            }

            if (TXT_sNombre.length == 0) {
                mostraralertifyerror('Debe completar el nombre.');
                return false;
            }

            if (TXT_sCedula_Juridica.length == 0) {
                mostraralertifyerror('Debe completar la identificación.');
                return false;
            }
            if (TXT_sTelefono.length == 0) {
                mostraralertifyerror('Debe completar el teléfono.');
                return false;
            }
            if (TXT_sDireccion_E_Mail.length == 0) {
                mostraralertifyerror('Debe completar el email.');
                return false;
            }

            if (/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(TXT_sDireccion_E_Mail)) {

            } else {
                mostraralertifyerror("La dirección de email es invalida!.");
                return false;
            }

            if (TXT_sDireccion.length == 0) {
                mostraralertifyerror('Debe completar la dirección.');
                return false;
            }
            if (TXT_sDireccionEntrega.length == 0) {
                mostraralertifyerror('Debe completar la dirección de entrega.');
                return false;
            }


            if (CMB_OrigenLead.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el origen.');
                return false;
            }
            if (CMB_SectorLead.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el sector.');
                return false;
            }


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

       
 

      <br /><br /><br />  
       <div id="divCompleto" class="main container">

     <h3><asp:Label ID="lbltitulo" CssClass="colortitulo" runat="server" Text="Nueva Solicitud de Mantenimiento"></asp:Label></h3>
                                                          <a  title="Cerrar" class="close" href = "javascript:void(0)" 
                                                               onclick = "document.getElementById('FormModificarCliente').style.display='none';document.getElementById('fade').style.display='none';">X</a>


                                                          <div class="rowsPanel panel panel-primary">
                                                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                                                                     Informaci&oacute;n del Cliente
                                                                    <span class="icon-chevron-small-down rightBar"></span>
                                                                 </div>
                                                                 <div class="panel-body">
                                                                     <div class="shadowrow collapse in" id="collapse1">
                                                                        <div class="well">
    
  
                                                                   <div class="table-responsive">  
                                                                    <%-- <table  class="trans_table">
                                                                         <tr>
                                                                             <td align="right">Nombre del vendedor:</td>
                                                                             <td>
                                                                                  <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                                <ContentTemplate>
                                                                                                     <asp:DropDownList ID="CMB_Propietario" class="ddlclass" runat="server">
                                                
                                                                                                     </asp:DropDownList>
                                                                                               </ContentTemplate>
                                                                                 </asp:UpdatePanel>
                                                                                 
                                                                                 <asp:TextBox ID="TXT_sCodigo" class="textboxpeq"  width="100" runat="server" MaxLength="30" Enabled="false" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                             </td>
                                                                             <td align="right">Estado:</td>
                                                                             <td>
                                                                                <asp:DropDownList ID="CMB_bEstadoCliente" class="form-control" runat="server">
                                                                                     <asp:ListItem Value="Nuevo">Nuevo</asp:ListItem>
                                                                                     <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                                                                     <asp:ListItem Value="Bloqueado">Bloqueado</asp:ListItem>
                                                                                     <asp:ListItem Value="Cobro Judicial">Cobro Judicial</asp:ListItem>
                                                                                     <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem> 
                                                                                </asp:DropDownList></td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td align="right">Nombre del Cliente:</td>
                                                                             <td>
                                                                                 <asp:TextBox ID="TXT_sNombre" class="form-control"  runat="server" MaxLength="30"  Width="100%" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                  <ajax:AutoCompleteExtender  
                                                                                         ServiceMethod="GetList"
                                                                                        CompletionListCssClass ="autocomplete_completionListElement"                               
                                                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                                                        CompletionListItemCssClass="autocomplete_listItem" 
                                                                                         MinimumPrefixLength="1" 
                                                                                        CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXT_sNombre"  
                                                                                        ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false" OnClientItemSelected ="ClientSelected" >  
                                                                                     </ajax:AutoCompleteExtender> 
                                                                             </td>
                                                                             <td align="right">Clase de Cliente:</td>
                                                                             <td>
                                                                                 <asp:DropDownList ID="CMB_sClaseCliente" class="form-control" runat="server">
                                                
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td align="right">Alias:</td>
                                                                             <td>
                                                                                  <asp:TextBox ID="TXT_sAlias" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                             </td>
                                                                             <td align="right">Tel&eacute;fono:</td>
                                                                             <td>
                                                                                 <asp:TextBox ID="TXT_sTelefono" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                                                         </tr>
                                                                          <tr>
                                                                             <td align="right">Tipo de Identificaci&oacute;n:</td>
                                                                             <td>
                                                                                 <asp:DropDownList ID="CMB_bTipoCedula" class="form-control" runat="server">
                                                                                     <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Juridica">Cédula Juridica</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Fisica">Cédula Física</asp:ListItem>
                                                                                     
                                                                                     <asp:ListItem Value="Otro Documento" >Otro Documento</asp:ListItem>

                                                                                 </asp:DropDownList></td>
                                                                             <td align="right">Correo electr&oacute;nico:</td>
                                                                             <td> <asp:TextBox ID="TXT_sDireccion_E_Mail" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                </td>
                                                                         </tr>

                                                                         <tr>
                                                                             <td align="right">N&uacute;mero Identificaci&oacute;n:</td>
                                                                             <td>
                                                                                 <asp:TextBox ID="TXT_sCedula_Juridica" class="form-control" runat="server" MaxLength="29" onkeydown = "return (event.keyCode!=13);" onkeypress="return soloNumeros(event);"></asp:TextBox></td>
                                                                             <td align="right">Clasificaci&oacute;n:</td>
                                                                             <td>
                                                                                 <asp:DropDownList ID="CMB_TipoClasificacion" class="form-control" runat="server">
                                                
                                                                                 </asp:DropDownList>
                                                                             </td>
                                                                         </tr>
                                                                          <tr>
                                                                              <td align="right">Sector:</td>
                                                                             <td>
                                                                                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                                     <ContentTemplate>
                                                                                        <asp:DropDownList ID="CMB_SectorLead" class="form-control" runat="server" OnSelectedIndexChanged="CMB_SectorLead_SelectedIndexChanged" AutoPostBack="True">
                                                
                                                                                        </asp:DropDownList>
                                                                                      </ContentTemplate>
                                                                                    <Triggers>
                                                                                          <asp:AsyncPostBackTrigger ControlID="CMB_SectorLead" EventName="selectedindexchanged" />
                                                                                    </Triggers>
                                                                                  </asp:UpdatePanel> </td>
                                                                            
                                                                             <td align="right">Revision de Cliente:</td>
                                                                             <td>
                                                                                 <asp:DropDownList ID="CMB_sComodin30" class="form-control" runat="server">
                                                
                                                                                 </asp:DropDownList></td>
                                                                         </tr>
                                                                         <tr>
                                                                              <td align="right">Nicho de Mercado:</td>
                                                                             <td>
                                                                                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                     <ContentTemplate>
                                                                                       <asp:DropDownList ID="CMB_TipoMercado" class="form-control" runat="server" >
                                                
                                                                                       </asp:DropDownList>  
                                                                                     </ContentTemplate>
           
                                                                                  </asp:UpdatePanel>

                                                                             </td>
                                                                             <td align="right">Origen del Candidato:</td>
                                                                             <td>
                                                                                 <asp:DropDownList ID="CMB_OrigenLead" class="form-control" runat="server">
                                                
                                                                                 </asp:DropDownList></td>
                                                                             
                                                                         </tr>
                                                                         <tr>
                                                                             <td align="right"><!--Otro medio Lead:--></td>
                                                                             <td>
                                                                                 <asp:TextBox ID="TXT_OtroMedioLead" class="form-control" runat="server" Visible="false" MaxLength="99"></asp:TextBox></td>
                                                                             <td></td>
                                                                             <td></td>
                                                                         </tr>

                                                                     </table>--%>
                                                                       <div class="row">
                                                                              <div class="col-md-6">
                                                                                     <div class="form-group">
                                                                                    <label for="CMB_Propietario">Nombre del vendedor:</label>
                                                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                                                <ContentTemplate>
                                                                                                     <asp:DropDownList ID="CMB_Propietario" class="form-control" runat="server">
                                                
                                                                                                     </asp:DropDownList>
                                                                                                </ContentTemplate>
                                                                                            </asp:UpdatePanel>
                                                                             <asp:TextBox ID="TXT_sCodigo" class="form-control"   runat="server" MaxLength="30" style="display:none;" Enabled="false" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                          
                                                                  </div> 
                                                                                        
                                                                              <div class="form-group">
                                                                                  <label for="TXT_sNombre">Nombre del Cliente:</label> 
                                                                                   <asp:TextBox ID="TXT_sNombre" class="form-control"  runat="server" MaxLength="30"  Width="100%" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                  <ajax:AutoCompleteExtender  
                                                                                         ServiceMethod="GetList"
                                                                                        CompletionListCssClass ="autocomplete_completionListElement"                               
                                                                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                                                                        CompletionListItemCssClass="autocomplete_listItem" 
                                                                                         MinimumPrefixLength="1" 
                                                                                        CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="TXT_sNombre"  
                                                                                        ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false" OnClientItemSelected ="ClientSelected" >  
                                                                                     </ajax:AutoCompleteExtender> 
                                                                              </div> 
                                                                                                  
                                                                             <div class="form-group">
                                                                                  <label for="TXT_sAlias">Alias:</label> 
                                                                                  <asp:TextBox ID="TXT_sAlias" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                             </div> 
                                                                                  
                                                                             <div class="form-group">
                                                                                  <label for="CMB_bTipoCedula">Tipo de Identificaci&oacute;n:</label> 
                                                                                 <asp:DropDownList ID="CMB_bTipoCedula" class="form-control" runat="server">
                                                                                     <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Juridica">Cédula Juridica</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Fisica">Cédula Física</asp:ListItem>
                                                                                     <asp:ListItem Value="Otro Documento" >Otro Documento</asp:ListItem>
                                                                                 </asp:DropDownList>
                                                                             </div> 
                                                                                   
                                                                                 
                                                                              <div class="form-group">
                                                                                  <label for="TXT_sCedula_Juridica">N&uacute;mero Identificaci&oacute;n:</label> 
                                                                                   <asp:TextBox ID="TXT_sCedula_Juridica" class="form-control" runat="server" MaxLength="29" onkeydown = "return (event.keyCode!=13);" onkeypress="return soloNumeros(event);"></asp:TextBox></td>
                                                                            
                                                                              </div> 

                                                                              <div class="form-group">
                                                                                  <label for="CMB_SectorLead">Sector:</label> 
                                                                                  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                                     <ContentTemplate>
                                                                                         <%--OnSelectedIndexChanged="CMB_SectorLead_SelectedIndexChanged"--%>
                                                                                        <asp:DropDownList ID="CMB_SectorLead" class="form-control" runat="server"  AutoPostBack="True">
                                                
                                                                                        </asp:DropDownList>
                                                                                      </ContentTemplate>
                                                                                    <Triggers>
                                                                                          <asp:AsyncPostBackTrigger ControlID="CMB_SectorLead" EventName="selectedindexchanged" />
                                                                                    </Triggers>
                                                                                  </asp:UpdatePanel>
                                                                              </div> 
                                                                             
                                                                                   <div class="form-group">
                                                                                      <label for="CMB_TipoMercado">Nicho de Mercado:</label> 
                                                                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                                           <ContentTemplate>
                                                                                            <asp:DropDownList ID="CMB_TipoMercado" class="form-control" runat="server" >
                                                
                                                                                            </asp:DropDownList>  
                                                                                          </ContentTemplate>
           
                                                                                        </asp:UpdatePanel>
                                                                                   </div>
                                                                               
                                                                                  

                                                                               </div>
                                                                             <div class="col-md-6">
                                                                                 
                                                                                 <div class="form-group">
                                                                                      <label for="CMB_sClaseCliente">Clase de Cliente:</label> 
                                                                                       <asp:DropDownList ID="CMB_sClaseCliente" class="form-control" runat="server">
                                                
                                                                                       </asp:DropDownList>
                                                                                </div>

                                                                                 <div class="form-group">
                                                                                      <label for="TXT_sTelefono">Tel&eacute;fono:</label> 
                                                                                      <asp:TextBox ID="TXT_sTelefono" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                
                                                                                </div>
                                                                               
                                                                                <div class="form-group">
                                                                                      <label for="TXT_sDireccion_E_Mail">Correo electr&oacute;nico:</label> 
                                                                                      <asp:TextBox ID="TXT_sDireccion_E_Mail" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                                                                </div>
                                                                               
                                                                                <div class="form-group">
                                                                                      <label for="CMB_TipoClasificacion">Clasificaci&oacute;n:</label> 
                                                                                     <asp:DropDownList ID="CMB_TipoClasificacion" class="form-control" runat="server">
                                                
                                                                                     </asp:DropDownList>
                                                                                </div>

                                                                                  <div class="form-group">
                                                                                      <label for="CMB_sComodin30">Revision de Cliente:</label> 
                                                                                      <asp:DropDownList ID="CMB_sComodin30" class="form-control" runat="server">
                                                
                                                                                    </asp:DropDownList>
                                                                                </div>

                                                                                  <div class="form-group">
                                                                                      <label for="CMB_OrigenLead">Origen del Candidato:</label> 
                                                                                       <asp:DropDownList ID="CMB_OrigenLead" class="form-control" runat="server">
                                                
                                                                                      </asp:DropDownList>
                                                                                </div>

                                                                                 <div class="form-group">
                                                                                      <label for="CMB_bEstadoCliente">Estado:</label> <br />
                                                                                      <asp:DropDownList ID="CMB_bEstadoCliente" class="form-control" runat="server">
                                                                                             <asp:ListItem Value="Nuevo">Nuevo</asp:ListItem>
                                                                                             <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                                                                             <asp:ListItem Value="Bloqueado">Bloqueado</asp:ListItem>
                                                                                             <asp:ListItem Value="Cobro Judicial">Cobro Judicial</asp:ListItem>
                                                                                             <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem> 
                                                                                      </asp:DropDownList>
                                                                                  </div>
                                                                                
              
                                                                        <asp:TextBox ID="TXT_OtroMedioLead" class="form-control" runat="server" Visible="false" MaxLength="99"></asp:TextBox>
                                                                             
                                                                   </div>
                                                             </div>
                                                                      </div>
                                                                    </div>
                                                                    </div>
                                                                 </div>
                                                          </div>
                                                          <div class="rowsPanel panel panel-primary">
                                                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse2"  >
                                                                     Detalles Adicionales<span class="icon-chevron-small-down rightBar"></span></div>
                                                                 <div class="panel-body">
                                                                     <div class="shadowrow collapse in" id="collapse2">
                                                                        <div class="well">
                                                                    <%-- <table class="trans_table" >
                                                                         <tr>
                                                                             <td  align="right">Direccion Fisica del cliente:</td>
                                                                             <td colspan="3">
                                                                                  <asp:TextBox ID="TXT_sDireccion" class="form-control" runat="server" TextMode="MultiLine" Columns="100" Rows="1" MaxLength="299"></asp:TextBox>
                                                                             </td>
                                                                            
                                                                         </tr>
                                                                         <tr>
                                                                             <td  align="right" >Nombre Transportista</td>
                                                                             <td  >
                                                                                 <asp:TextBox ID="TXT_NombreTransportista" class="textboxpeq"  runat="server" MaxLength="100" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                             </td>
                                                                             <td class="auto-style1"></td><td class="auto-style1"></td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td  align="right">Direccion de entrega</td>
                                                                             <td >
                                                                                 <asp:TextBox ID="TXT_sDireccionEntrega"  runat="server"  class="form-control" TextMode="MultiLine" Columns="100" Rows="1" MaxLength="299" ></asp:TextBox>
                                                                             </td>
                                                                             <td></td><td></td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td  align="right">Notas</td>
                                                                             <td >
                                                                                 <asp:TextBox ID="TXT_Notas" runat="server"  class="form-control" TextMode="MultiLine" Columns="100" Rows="2"></asp:TextBox>
                                                                             </td>
                                                                             <td></td><td></td>
                                                                         </tr>
                                   
                                                                     </table>--%>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_sDireccion">Direccion Fisica del cliente:</label> 
                                                                                    <asp:TextBox ID="TXT_sDireccion" class="form-control" runat="server" TextMode="MultiLine" Columns="100" Rows="1" MaxLength="299"></asp:TextBox>
                                                                            </div>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_NombreTransportista">Nombre Transportista:</label> 
                                                                                    <asp:TextBox ID="TXT_NombreTransportista" class="form-control"  runat="server" MaxLength="100" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                            </div>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_sDireccionEntrega">Direccion de entrega:</label> 
                                                                                     <asp:TextBox ID="TXT_sDireccionEntrega"  runat="server"  class="form-control" TextMode="MultiLine" Columns="100" Rows="1" MaxLength="299" ></asp:TextBox>
                                                                            </div>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_Notas">Notas:</label> 
                                                                                     <asp:TextBox ID="TXT_Notas" runat="server"  class="form-control" TextMode="MultiLine" Columns="100" Rows="2"></asp:TextBox>
                                                                            </div>
                                                                       </div>
                                                                    </div>
                                                                 </div>
                                                          </div>

                       

                                                          <div class="rowsPanel panel panel-primary">
                                                                 <div class="panel-heading" data-toggle="collapse" data-target="#collapse3" >
                                                                     Detalle de los Contactos<span class="icon-chevron-small-down rightBar"></span></div>
                                                                 <div class="panel-body">
                                                                     <div class="shadowrow collapse in" id="collapse3">
                                                                        <div class="well">
                                                                           
                                                                             <asp:LinkButton ID="btnnuevo" runat="server"   CssClass="btn btn-default" OnClientClick="return abrirPopContacto();" >
                                                                                     <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                                                                             </asp:LinkButton><br /><br />

                                                                             <asp:UpdatePanel ID="UPContactos" runat="server" UpdateMode="Conditional"  >
                                                                               <ContentTemplate>
                                                                                    <div class="col-lg-12 ">  
                                                                                  <div class="tableresponsive"> 
                                                                                        <asp:GridView ID="DTG_Contacto" runat="server" width="100%" Font-Size="10pt" 
                                                                                            
                                                                                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                                                                            BorderWidth="1px" CellPadding="4" ShowHeaderWhenEmpty="True"
                                                                                            AutoGenerateColumns="False" ForeColor="Black" GridLines="Horizontal"
                                                                                           >
                                                                                            <Columns>
                                                                                                <asp:BoundField DataField="NombreContacto" HeaderText="Nombre de Contacto"   />
                                                                                                <asp:BoundField DataField="Telefono" HeaderText="Telefono"   />
                                                                                                <asp:BoundField DataField="Correo" HeaderText="Correo electrónico"    ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs"/>
                                                                                                <asp:BoundField DataField="Departamento" HeaderText="Departamento"     ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs"/>
                                                                                                <asp:BoundField DataField="NombreCliente" HeaderText="Nombre de Empresa"    ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" />
                                                                           
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
                                                                                       </div>
                                                                                    </div>

                                                                                 </ContentTemplate>
                                                                             </asp:UpdatePanel>
                                                                             
                                                                        </div>
                                                                   </div>
                                                                 </div>
                                                          
                                                       </div>


                               <div class="panel panel-default">
                                             <div class="panel-body">
                           
                                                   <table  class="trans_table">
                                                              <tr>
                                                                 <td align="center">
                                                                     <asp:Button ID="CMD_Nuevo" runat="server" Text="Nuevo"  OnClientClick="limpiar();" CssClass="btnazul" />
                                                                 
                                                                     <asp:Button ID="CMD_Guardar" runat="server" Text="Guardar"  OnClientClick="return validarmodifica();"  CssClass="btnverde"/>

                                                                     <asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado"  CssClass="btngris"/>

                                                                 </td>
                                                             </tr>
                                                       </table>
                               </div>
                         </div>
                      <br />

          </div>


      <!-- base semi-transparente -->
        <div id="fade" class="overlay" onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none'"></div>
	    <!-- fin base semi-transparente -->
       

     <div id="popmsj" class="popupnotificacion">
	   <a  title="Cerrar" class="close" id="cerrarp" href = "javascript:void(0)" onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
		        <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
              <div style="text-align:center;">
                    <label id="lblmsj" style="font-weight:200;"></label><br />
                   <a  title="Cerrar" class="closeok" id="cerrar2" href = "javascript:void(0)"
                        onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">Aceptar</a>
              </div>

		</div> 
    
     <div id="popContacto"  style="display:none;"  >
          <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                   <asp:HiddenField ID="TXT_IDContacto" runat="server" Value="" />
                   <asp:HiddenField ID="TXT_NombreClientehd" runat="server"  Value="" />

                  <%-- <table  class="trans_table">
                                     <tr>
                                         <td align="right">Vendedor:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_Propietario2" class="form-control" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         <td align="right">Estado Contacto:</td>
                                         <td>
                                            <asp:DropDownList ID="CMB_Estado" class="form-control" runat="server">
                                                <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                                 <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                                            </asp:DropDownList></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Nombre del Cliente:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_NombreCliente" class="form-control"  runat="server" Enabled="false" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                            
                                         </td>
                                         <td align="right">Telefono:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_Telefono" runat="server" class="form-control"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Nombre Contacto:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_NombreContacto" class="form-control" runat="server"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                         </td>
                                         <td align="right">Celular:</td>
                                         <td>
                                             <asp:TextBox ID="TXT_Celular" class="form-control" runat="server"  MaxLength="74" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
                                     </tr>
                                     <tr>
                                         <td align="right">Puesto:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_Puesto" class="form-control" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         <td align="right">Sector:</td>
                                         <td>
                                             <asp:DropDownList ID="CMB_SectorLead2" class="form-control" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                     </tr>
                                      <tr>
                                          <td align="right">Departamento:</td>
                                         <td>
                      
                                              <asp:TextBox ID="TXT_Departamento" class="form-control"  runat="server" MaxLength="50" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                         </td>
                                         <td align="right">Clasificaci&oacute;n:</td>
                                         <td>
                                              <asp:DropDownList ID="CMB_TipoClasificacion2" class="form-control" runat="server">
                                                
                                             </asp:DropDownList>
                                         </td>
                                         
                                     </tr>
                                     <tr>
                                         <td align="right">Correo electr&oacute;nico:</td>
                                         <td><asp:TextBox ID="TXT_Correo" class="form-control"  runat="server" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox></td>
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
                                            <asp:LinkButton ID="btnguardar" runat="server"   CssClass="btn btn-default" OnClick="btnguardar_Click"  OnClientClick="return validarInfoContacto();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                                            </asp:LinkButton>
                                        </td>
                                       
                                        <td colspan="2" align="center"> 
                                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default"  OnClientClick="return  $('#popContacto').dialog('close');return false;"  >
                                               Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                                            </asp:LinkButton>

                                        </td>
                                       
                                    </tr>
                                     
                                 </table>
                 --%>

                   <div style="height:300px;overflow:auto;">
                         <%-- <div class="col-md-6">--%>
                               <div class="form-group">
                                   <label for="CMB_Propietario2">Vendedor:</label> 
                                   <asp:DropDownList ID="CMB_Propietario2" class="form-control" runat="server">
                                                
                                  </asp:DropDownList>
                      
                               </div>
                              <div class="form-group">
                                   <label for="TXT_NombreCliente">Nombre Cliente:</label> 
                                   <asp:TextBox ID="TXT_NombreCliente" class="form-control"  runat="server" Enabled="false" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>            
                               </div>
                              <div class="form-group">
                                   <label for="TXT_NombreContacto">Nombre Contacto:</label> 
                                  <asp:TextBox ID="TXT_NombreContacto" class="form-control" runat="server"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                               </div>
                              <div class="form-group">
                                   <label for="CMB_Puesto">Puesto:</label> 
                                   <asp:DropDownList ID="CMB_Puesto" class="form-control" runat="server">
                                                
                                    </asp:DropDownList>
                               </div>
                              <div class="form-group">
                                   <label for="TXT_Departamento">Departamento:</label> 
                               <asp:TextBox ID="TXT_Departamento" class="form-control"  runat="server" MaxLength="50" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                               </div>
                              <div class="form-group">
                                   <label for="TXT_Correo">Correo electr&oacute;nico:</label> 
                                   <asp:TextBox ID="TXT_Correo" class="form-control"  runat="server" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                               </div>
                              
                         <%-- </div>--%>
                          <%-- <div class="col-md-6">--%>
                                <div class="form-group">
                                   <label for="CMB_Estado">Estado contacto:</label> 
                                    <asp:DropDownList ID="CMB_Estado" class="form-control" runat="server">
                                                <asp:ListItem Value="Activo">Activo</asp:ListItem>
                                                 <asp:ListItem Value="Inactivo">Inactivo</asp:ListItem>
                                            </asp:DropDownList>
                                </div>
                               <div class="form-group">
                                   <label for="TXT_Telefono">Teléfono:</label> 
                                    <asp:TextBox ID="TXT_Telefono" runat="server" class="form-control"  MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                </div>
                               <div class="form-group">
                                   <label for="TXT_Celular">Celular:</label> 
                                   <asp:TextBox ID="TXT_Celular" class="form-control" runat="server"  MaxLength="74" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                               <div class="form-group">
                                   <label for="CMB_SectorLead2">Sector:</label> 
                                   <asp:DropDownList ID="CMB_SectorLead2" class="form-control" runat="server">
                                                
                                    </asp:DropDownList>
                                </div>
                               <div class="form-group">
                                   <label for="CMB_TipoClasificacion2">Clasificación:</label> 
                                    <asp:DropDownList ID="CMB_TipoClasificacion2" class="form-control" runat="server">
                                                
                                    </asp:DropDownList>
                                </div>
                               <div class="form-group">
                                   <label for="TXT_Observaciones">Observaciones:</label> 
                                    <asp:TextBox ID="TXT_Observaciones" runat="server" class="form-control" MaxLength="299" onpaste="return false"></asp:TextBox>
                                </div>
                               
                          <%--</div>--%>

                 </div>

                  <div class="row">
                           <asp:LinkButton ID="btnguardar" runat="server"   CssClass="btn btn-default"   OnClientClick="return validarInfoContacto();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                           </asp:LinkButton>&nbsp;
                           <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default"  OnClientClick="return  $('#popContacto').dialog('close');return false;"  >
                                               Cerrar &nbsp; <span class="glyphicon glyphicon-log-out"></span>
                            </asp:LinkButton>
                  </div>

               
               </ContentTemplate>
          </asp:UpdatePanel>         
     </div>



</asp:Content>
