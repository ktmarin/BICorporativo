<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMCC01MenuAdd.aspx.cs" enableEventValidation="false" Inherits="MCWebHogar.CRMVertice.FRMCC01MenuAdd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <script type="text/javascript">
        $(function () {



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

            document.getElementById("btn_popContacto").click();
            return false;
        }

        function cerrarPopContacto() {
            document.getElementById("Content_Button2").click();
            return false;
        }

        function openmodalmodificarcliente() {
            document.getElementById('fade').style.display = 'block';
            document.getElementById('FormModificarCliente').style.display = 'block';
            return false;
        }

        function limpiar() {
            
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
            
     

            if (CMB_bTipoCedula.selectedIndex == 0) {
                mostraralertifyerror('Debe seleccionar el tipo de identificación.');
                return false;
            }

              if(  TXT_sNombre.length == 0){
                   mostraralertifyerror('Debe completar el nombre.');
                   return false;
                }
               
               if( TXT_sCedula_Juridica.length == 0 ){
                      mostraralertifyerror('Debe completar la identificación.');
                      return false;
                }
               if(TXT_sTelefono.length == 0 ){
                   mostraralertifyerror('Debe completar el teléfono.');
                   return false;
                }
               if(TXT_sDireccion_E_Mail.length == 0){
                   mostraralertifyerror('Debe completar el email.');
                   return false;
               }

               if (/^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i.test(TXT_sDireccion_E_Mail)) {

               } else {
                   mostraralertifyerror("La dirección de email es invalida!.");
                   return false;
               }

               if(TXT_sDireccion.length == 0){
                   mostraralertifyerror('Debe completar la dirección.');
                    return false;
                }
               if(TXT_sDireccionEntrega.length == 0){
                   mostraralertifyerror('Debe completar la dirección de entrega.');
                    return false;
                }
               
              
               if(CMB_OrigenLead.selectedIndex == 0){
                   mostraralertifyerror('Debe seleccionar el origen.');
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
             

             if (CMB_Puesto.selectedIndex == 0) {
                 mostraralertifyerror('Debe seleccionar el puesto!');
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

        function abrirPopClientes() {

            document.getElementById("openPopClientes").click();
            return false;
        }

        function cerrarPopClientes() {

            document.getElementById("Content_CMDCerrar").click();
            return false;
        }

        function activarbusquedasic(e) {
            if (e.keyCode == 13) {
                __doPostBack('ctl00$Content$CMD_BuscarSIC', '');
                //document.getElementById("Content_Button1").click();
                return false;
            }
        }

        function activarloading() {
           
            document.getElementById('modalloading').style.display = 'block';
            document.getElementById('fade2').style.display = 'block';
        }

        function desactivarloading() {
            document.getElementById('fade2').style.display = 'none';
            document.getElementById('modalloading').style.display = 'none';
            return false;
        }


    </script>

       
   <div id="modalloading" class="loading">
		    <img src="../Images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>

      <br /><br /><br />  
       <div id="divCompleto" class="main container">

     <h3><asp:Label ID="lbltitulo" CssClass="colortitulo" runat="server" Text="Modificación clientes"></asp:Label>
         <asp:HiddenField ID="TXT_Contacto" runat="server"  /> 
       <%--  OnValueChanged="TXT_Contacto_ValueChanged"--%>
           </h3>
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
                                                                                 <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-default" OnClientClick="return abrirPopClientes();" >
                                                                                   <span style="color: red;font-weight: bold;">* </span> <span class="glyphicon glyphicon-search"></span>&nbsp;Nombre del Cliente:
                                                                                </asp:LinkButton>
                                                         
                                                                              <asp:UpdatePanel ID="UpdatePanel10" runat="server" >
                                                                                 <ContentTemplate>
                                                                                      <asp:TextBox ID="TXT_sNombre" class="form-control" runat="server" MaxLength="99" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                  </ContentTemplate>
                                                                              </asp:UpdatePanel> 
                                                                            </div>
                                                                          
                                                                                                  
                                                                             <div class="form-group">
                                                                                  <label for="TXT_sAlias">Alias:</label> 
                                                                                  <asp:TextBox ID="TXT_sAlias" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                             </div> 
                                                                                  
                                                                             <div class="form-group">
                                                                                  <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                                                                                 <ContentTemplate>
                                                                                 <span style="color: red;font-weight: bold;">* </span> <label for="CMB_bTipoCedula">Tipo de Identificaci&oacute;n:</label> 
                                                                                 <asp:DropDownList ID="CMB_bTipoCedula" class="form-control" runat="server">
                                                                                     <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Juridica">Cédula Juridica</asp:ListItem>
                                                                                     <asp:ListItem Value="Cédula Fisica">Cédula Física</asp:ListItem>
                                                                                     <asp:ListItem Value="Otro Documento" >Otro Documento</asp:ListItem>
                                                                                 </asp:DropDownList>
                                                                                      </ContentTemplate>
                                                                              </asp:UpdatePanel> 
                                                                             </div> 
                                                                                   
                                                                                 
                                                                              <div class="form-group">
                                                                                   <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                                                                                 <ContentTemplate>
                                                                              <span style="color: red;font-weight: bold;">* </span> <label for="TXT_sCedula_Juridica">N&uacute;mero Identificaci&oacute;n:</label> 
                                                                                   <asp:TextBox ID="TXT_sCedula_Juridica" class="form-control" runat="server" MaxLength="29" onkeydown = "return (event.keyCode!=13);" onkeypress="return soloNumeros(event);"></asp:TextBox></td>
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
                                                                                      <label for="TXT_sTelefono"><span style="color: red;font-weight: bold;">* </span>Tel&eacute;fono:</label> 
                                                                                      <asp:TextBox ID="TXT_sTelefono" class="form-control" runat="server" MaxLength="30" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                                
                                                                                </div>
                                                                               
                                                                                <div class="form-group">
                                                                                      <label for="TXT_sDireccion_E_Mail"><span style="color: red;font-weight: bold;">* </span>Correo electr&oacute;nico:</label> 
                                                                                      <asp:TextBox ID="TXT_sDireccion_E_Mail" class="form-control" runat="server" MaxLength="50" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                                                                </div>
                                                                               
                                     

                                                                                  <div class="form-group">
                                                                                      <label for="CMB_OrigenLead"><span style="color: red;font-weight: bold;">* </span>Origen del Candidato:</label> 
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
                                                                   

                                                                             <div class="form-group">
                                                                                    <label for="TXT_sDireccion"><span style="color: red;font-weight: bold;">* </span>Direccion Fisica del cliente:</label> 
                                                                                    <asp:TextBox ID="TXT_sDireccion" class="form-control" runat="server" TextMode="MultiLine" Columns="100" Rows="1" MaxLength="299"></asp:TextBox>
                                                                            </div>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_NombreTransportista">Nombre Transportista:</label> 
                                                                                    <asp:TextBox ID="TXT_NombreTransportista" class="form-control"  runat="server" MaxLength="100" onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                                                            </div>

                                                                             <div class="form-group">
                                                                                    <label for="TXT_sDireccionEntrega"><span style="color: red;font-weight: bold;">* </span>Direccion de entrega:</label> 
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
            <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse6" >
                                 Seguimiento<span class="icon-chevron-small-down rightBar"></span></div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse6">
                                    <div class="well">
                                            <asp:UpdatePanel ID="UpdatePanelseguimiento" runat="server" UpdateMode="Conditional"  >
                                              <ContentTemplate>

                                                <asp:Button ID="btn_nuevanota" runat="server" Text="Nueva Nota" CssClass="btn btn-default"  OnClientClick="limpiarmodal();abrirmodalnotas();return false;" /><br /><br />

                                                   <asp:GridView ID="DGVNota" runat="server"  Width="100%" DataKeyNames="ID_Nota"
                                                       Font-Size="9pt"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None"
                                                        BorderWidth="1px" CellPadding="4"
                                                        AutoGenerateColumns="False" ForeColor="Black" GridLines="Horizontal">
                                                    <Columns>

                                                            <asp:BoundField DataField="ID_Nota" HeaderText="" ItemStyle-Width="60" 
                                                                  ItemStyle-CssClass="ID_Nota" >
                                                                <ItemStyle CssClass="ID_Nota" ForeColor="White" />
                                                            </asp:BoundField>

                                                        <asp:BoundField DataField="dFechaIngreso" HeaderText="Fecha" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg"/>
                                                        <asp:BoundField DataField="sQuienIngreso" HeaderText="Usuario" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg"/>

                                                        <asp:BoundField DataField="Titulo" HeaderText="Titulo"  ItemStyle-CssClass="Titulo" >
                                                                <ItemStyle CssClass="Titulo" />
                                                         </asp:BoundField>

                                                        <asp:BoundField DataField="Nota" HeaderText="Nota"  ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                                               
                                                         </asp:BoundField>
                                                        <asp:BoundField DataField="Estado" HeaderText="Estado" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg" />
                                                        <asp:BoundField DataField="Tipo" HeaderText="" 
                                                            ItemStyle-CssClass="Tipo" >
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

                                                          <div class="panel panel-default">
                                   <div class="panel-body">
                           
                                 <table  class="trans_table">
                                           <tr>
                                            <td align="center">
                                              <asp:Button ID="CMD_Nuevo" runat="server" Text="Nuevo" OnClick="CMD_Nuevo_Click" OnClientClick="limpiar();" CssClass="btn btn-primary" />
                                                                 
                                              <asp:Button ID="CMD_Guardar" runat="server" Text="Guardar" OnClick="CMD_Guardar_Click" OnClientClick="return validarmodifica();"  CssClass="btn btn-success"/>

                                              <asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado" OnClick="CMD_Salir_Click"  CssClass="btn btn-default active"/>

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

     <button type="button" id="openPopClientes" data-toggle="modal" data-target="#PopClientes" style="visibility:hidden;">open</button>


    <div class="modal fade" id="PopClientes" tabindex="-1" role="dialog" aria-labelledby="popPopClientes" aria-hidden="true">
                   <asp:UpdatePanel ID="UpdatePanel7" runat="server" >
                <ContentTemplate> 
         <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel">Buscar Cliente SIC</h3>
                       
                      </div>
                      <div class="modal-body">
    
                             <asp:DropDownList ID="ddl_filtrocliente" runat="server" CssClass="form-control"  Style="display:inline-block;" Width="100">
                                        <asp:ListItem Value="1">Cédula</asp:ListItem>
                                         <asp:ListItem Value="2">Nombre</asp:ListItem>
                                    </asp:DropDownList> 
                         
                              <asp:TextBox ID="TXT_SearchCliente" CssClass="form-control" Style="display:inline-block;" Width="60%"  placeholder="Buscar..." runat="server" onkeydown = "return activarbusquedasic(event);"></asp:TextBox>

                            <asp:LinkButton ID="CMD_BuscarSIC" runat="server" CssClass="btn btn-default" OnClick="CMD_BuscarSIC_Click" OnClientClick="activarloading();"  >
                               <span class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>

                             <img id="imgLPr2" src="../images/cargando4.gif" width="30" height="30" style="display:none;float:right;" >
                       
                          
                            <div style="height:300px; overflow:auto">
                             <div class="table-responsive">  
                            <asp:GridView ID="DGV_Clientes"  Width="100%" 
                                 runat="server" DataKeyNames="sCedula_Juridica,sNombre,TipoCedula"  CssClass ="table" 
                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnRowCommand="DGV_Clientes_RowCommand"   >   <%--OnPreRender="" OnRowEditing=""--%>
                                <Columns>

                                    <asp:TemplateField  HeaderText="">
                                      <ItemTemplate>
                                        
                                           <asp:LinkButton ID="AddButton" runat="server" 
                                                  CommandName = "seleccionar" 
                                                   CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"
                                                    CssClass="btn btn-success"  >
                                              <span class=" icon-plus"></span>
                                            </asp:LinkButton>
                                         
                                        
                                      </ItemTemplate> 
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           
                                            <asp:Label ID="Lbl_sCedula_Juridica" runat="server" Text="Cédula"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sCedula_Juridica2" runat="server" Text='<%#Eval("sCedula_Juridica") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            
                                            <asp:Label ID="Lbl_sNombre" runat="server" Text="Nombre"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sNombre2" runat="server" Text='<%#Eval("sNombre") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                 
                                </Columns>

                                 <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                          </div>
                          </div><br />
                            
      </div>
                      <div class="modal-footer">
                          
                           <asp:Button ID="CMDCerrar" runat="server" Text="Cancelar" data-dismiss="modal" CssClass="btn btn-secondary" />

                        <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>--%>
                      </div>
                    </div>
                  </div>
           </ContentTemplate>
             </asp:UpdatePanel>
                </div>


      <button type="button" id="btn_popContacto" data-toggle="modal" data-target="#popContacto" style="visibility:hidden;">open</button>


    <div class="modal fade" id="popContacto" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">
                 <asp:UpdatePanel ID="UpdatePanel16" runat="server" UpdateMode="Conditional">
              <ContentTemplate>
                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel24">Datos del Contacto</h3>
                       
                      </div>
                      <div class="modal-body">
                          
                   <asp:HiddenField ID="TXT_IDContacto" runat="server" Value="" />
                   <asp:HiddenField ID="TXT_NombreClientehd" runat="server"  Value="" />

                 

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
                                                        <label for="TXT_Cedula">Cedula:</label> 
                                                        <asp:TextBox ID="TXT_Cedula" class="form-control"  runat="server" MaxLength="50"
                                                             onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                              </div>
                                    <div class="form-group">
                                                        <label for="TXT_FechaNac">Fecha Nacimiento:</label> 
                                                        <asp:TextBox ID="TXT_FechaNac" class="form-control"  runat="server" MaxLength="50"
                                                             onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
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
                                                        <label for="TXT_Provincia">Provincia:</label> 
                                                        <asp:TextBox ID="TXT_Provincia" class="form-control"  runat="server" MaxLength="50"
                                                             onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                              </div>
                                              <div class="form-group">
                                                        <label for="TXT_Canton">Canton:</label> 
                                                        <asp:TextBox ID="TXT_Canton" class="form-control"  runat="server" MaxLength="50"
                                                            onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                              </div>

                                              <div class="form-group">
                                                        <label for="TXT_Distrito">Distrito:</label> 
                                                        <asp:TextBox ID="TXT_Distrito" class="form-control"  runat="server" MaxLength="50"
                                                             onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                              </div>

                                        <div class="form-group">
                                                        <label for="TXT_Domicilio">Dirección:</label> 
                                                        <asp:TextBox ID="TXT_Domicilio" class="form-control"  runat="server" TextMode="MultiLine"  MaxLength="299"
                                                             onkeydown = "return (event.keyCode!=13);"></asp:TextBox>
                                              </div>
                             
                               <div class="form-group">
                                   <label for="TXT_Observaciones">Observaciones:</label> 
                                    <asp:TextBox ID="TXT_Observaciones" runat="server" class="form-control" MaxLength="299" onpaste="return false"></asp:TextBox>
                                </div>
                               
                 </div>

                      </div>
                      <div class="modal-footer">
                           <asp:LinkButton ID="btnguardar" runat="server"   CssClass="btn btn-default" OnClick="btnguardar_Click"  OnClientClick="return validarInfoContacto();">
                                               <span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;Guardar
                           </asp:LinkButton>&nbsp;
                           <asp:Button ID="Button2" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                      </div>
                    </div>
                  </div>
                      </ContentTemplate>
                 </asp:UpdatePanel>  
           </div>


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
                                            

    
    



</asp:Content>
