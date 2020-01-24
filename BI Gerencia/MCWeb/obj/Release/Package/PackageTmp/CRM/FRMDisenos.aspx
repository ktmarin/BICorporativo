<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMDisenos.aspx.cs" Inherits="MCWebHogar.CRMVertice.FRMDisenos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">



     <script type="text/javascript">
         $(function () {
           
             $('#popBitacora').dialog({
                 autoOpen: false,
                 modal: true,
                 width: 900,
                 height: 600,
                 title: 'Bitacora de cambios en Dibujos y Diseños',
                 buttons: {
                     "Cerrar": function () {
                        
                         $(this).dialog("close");
                     }
                 },
                 open: function (type, data) {
                     $(this).parent().appendTo("form");
                    
                 }
             });

             $('#popAgregarProducto').dialog({
                 autoOpen: false,
                 modal: true,
                 width: 600,
                 height: 300,
                 title: 'Agregar Detalle',
                 buttons: {
                     "Cerrar": function () {

                         $(this).dialog("close");
                     }
                 },
                 open: function (type, data) {
                     $(this).parent().appendTo("form");

                 }
             });


             

             $('#popNewAdjunto').dialog({
                 autoOpen: false,
                 modal: true,
                 width: 400,
                 height: 300,
                 title: 'Adjuntar Dibujo',
                 buttons: {
                     "Cerrar": function () {

                         $(this).dialog("close");
                     }
                 },
                 open: function (type, data) {
                     $(this).parent().appendTo("form");

                 }
             });
         
             
         });

        <%-- function openbitacora() {
             var oferta = document.getElementById('<%= TXTOfertamadre.ClientID %>').value;
             if (oferta.length == 0 || oferta == "#") {
                 mostraralertifyerror('No existe una oferta seleccionada en este momento');
                 return false;
             } else {
                 $('#popBitacora').dialog('open');
             }
         }--%>

         function openbitacora() {
             $('#popBitacora').dialog('open');
         }

         function closebitacora() {
             $('#popBitacora').dialog('close');
         }


         function openadjuntos() {
             $('#popNewAdjunto').dialog('open');
         }

         function openNewDetalle() {
             $('#popAgregarProducto').dialog('open');
         }

         function closeNewDetalle() {
             $('#popAgregarProducto').dialog('close');
         }

         function validaAdjunto() {
             var btn = document.getElementById('<%= btnExaminar.ClientID %>').value;
             if (btn.length == 0) {
                 mostraralertifyerror('Debe adjuntar un archivo.');
                 return false;
             }
             activarloadmail();
         }

         function validaAgregar() {
             var oferta = document.getElementById('<%= TXTDescripcion.ClientID %>').value;
             oferta = oferta.trim();
             if (oferta.length == 0) {
                 mostraralertifyerror('Debe completar la descripción.');
                 return false;
             }
         }

         function validasolicitudsolo() {
             var btn = document.getElementById('<%= TXTOfertamadre.ClientID %>').value;
             // alert(':'+btn.length+':');
             if (btn == "#" || btn.length == 0) {
                 mostraralertifyerror('No hay una oferta madre cargada. Favor verificar.');
                 return false;
             }
            
         }

         function validasolicitud() {
             var btn = document.getElementById('<%= TXTOfertamadre.ClientID %>').value;
           // alert(':'+btn.length+':');
             if (btn == "#" || btn.length == 0) {
                 mostraralertifyerror('No hay una oferta madre cargada. Favor verificar.');
                 return false;
             }
             activarloadmail();
         }


         function activarloadmail() {
             document.getElementById('fade2').style.display = 'block';
             document.getElementById('modalloading').style.display = 'block';

         }

         function desactivarloadmail() {

             document.getElementById('fade2').style.display = 'none';
             document.getElementById('modalloading').style.display = 'none';
             return false;
         }

         function mostraralertifysuccess(msj) {
             alertify.notify(msj, 'success', 5, null);
         }

         function mostraralertifyerror(msj) {
             alertify.notify(msj, 'error', 5, null);
         }

         function redireccionar() {
             mostraralertifyerror('No tiene Permisos para utilizar este módulo.');
             setTimeout("window.location.href='FRMCR01LeadMenu.aspx'", 3000);
         }
         
        <%-- function validavacio() {
             var search = document.getElementById('<%= txtsearch_oferta.ClientID %>').value;
             if (search.length == 0) {
                 mostraralertifyerror('Ingrese el número de oferta para buscar por favor');
                 return false;
             }
         }--%>

        <%-- function validasearchoferta(e) {
            
             if (e.keyCode == 13) {

                 var search = document.getElementById('<%= txtsearch_oferta.ClientID %>').value;
                 if (search.length == 0) {
                     mostraralertifyerror('Ingrese el número de oferta para buscar por favor');
                     return false;
                 } else {
                     __doPostBack('ctl00$Content$CMD_SearchOferta', '');
                 }
                 
             }

             var key = window.Event ? e.which : e.keyCode
             return ((key >= 48 && key <= 57 ) || key == 13)
         }--%>

         
       </script>

    <div id="modalloading" class="loading">
		    <img src="../Images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>


     <div id="popBitacora"  style="display:none;"    >
          <asp:UpdatePanel ID="upAdjunt" runat="server" UpdateMode="Conditional">
              <ContentTemplate>

                    <asp:GridView ID="DGVBitacora_Disenos"  width="900px" runat="server"  DataKeyNames="IDLinea"
                                                AutoGenerateColumns="False" ShowHeaderWhenEmpty="true"
                                               Font-Size="8pt"  BackColor="White" BorderColor="#BDBDBD" BorderStyle="None" 
                                               BorderWidth="1px" CellPadding="3">
                                             <Columns>
                                             
                                                <asp:BoundField DataField="Instruccion" HeaderText="Instruccion"  />
                                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                                                <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                                                <asp:BoundField DataField="NOferta" HeaderText="NOferta" />
                                                <asp:BoundField DataField="NombreDocumento" HeaderText="NombreDocumento" />
                                                <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                                 <asp:BoundField DataField="Extension" HeaderText="Extension" />
                                                 <%--<asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                                 <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                                 <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                                 <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />
                                                 <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" />--%>

                                              </Columns>

                                              <selectedrowstyle backcolor="White"  forecolor="DarkBlue" font-bold="true"/> 

                                </asp:GridView>
                      
              </ContentTemplate>
                
      </asp:UpdatePanel>
              
     </div> 

    
     <div id="popAgregarProducto"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel5" runat="server" >
              <ContentTemplate>
                    <table class="trans_table" >
                            
                            <tr>
                                <td>Producto:</td>
                                <td >
                                    <asp:DropDownList ID="CMBProductos" runat="server" CssClass="form-control">

                                    </asp:DropDownList>
                                </td>
                            </tr>
                        <tr>
                            <td>Descripción:</td>
                            <td>
                                <asp:TextBox ID="TXTDescripcion" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Otra Descripción:</td>
                            <td>
                                <asp:TextBox ID="TXTOtraDescripcion" CssClass="form-control" MaxLength="200" runat="server"></asp:TextBox></td>
                        </tr>
                           <tr>
                                <td colspan="2" align="center">
                                    <br />
                                  
                                    <asp:Button ID="CMDAgregar" runat="server" Text="Guardar" OnClick="CMDAgregar_Click" OnClientClick="return validaAgregar();" CssClass="btn btn-default"/>
                                   
                                </td>
                               <td colspan="2"></td>
                            </tr>
                      </table>
               </ContentTemplate>
               
      </asp:UpdatePanel>    
     </div> 


    <div id="popNewAdjunto"  style="display:none;"    >
          <asp:UpdatePanel ID="UpdatePanel36" runat="server" >
              <ContentTemplate>
                    <table class="trans_table" >
                            
                            <tr>
                                <td>Archivo:</td>
                                <td >
                                    <asp:FileUpload ID="btnExaminar" runat="server" multiple="false" />
                                </td>
                            </tr>
                           <tr>
                                <td colspan="2" align="center">
                                    <br />
                                  
                                    <asp:Button ID="CMD_Incluir" runat="server" Text="Guardar Diseño" OnClick="CMD_Incluir_Click" OnClientClick="return validaAdjunto();" CssClass="btn btn-default"/>
                                   
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

        <asp:UpdatePanel ID="UpdatePanel3" runat="server" >
              <ContentTemplate>
                    <asp:HiddenField ID="TipoDiseno" runat="server" Value="" />
                    <asp:HiddenField ID="TXTOferta" runat="server" Value="" />
                    <asp:HiddenField ID="TXTCliente" runat="server" Value="" />
                    <asp:HiddenField ID="TXTAsesorh" runat="server" Value="" />
                   <asp:HiddenField ID="TXTOfertamadre" runat="server" Value="#" />
              </ContentTemplate>
          </asp:UpdatePanel>
    

     <br /><br /><br />
             <div class="main container">
              <h2 class="colortitulo">Diseños</h2>

                 <table class="trans_table" >
                     <tr>
                         <%--<td align="right"><h4>Buscar Oferta:</h4></td>
                         <td><asp:TextBox ID="txtsearch_oferta" runat="server" CssClass="form-control" onKeyPress="return validasearchoferta(event);" MaxLength="10"  placeholder="Escriba el número de la oferta" ></asp:TextBox></td>
                         <td><asp:LinkButton ID="CMD_SearchOferta" runat="server"  CssClass="btn btn-default" OnClick="CMD_SearchOferta_Click" OnClientClick="return validavacio();" >
                                <span class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton></td>--%>
                        
                         <td align="right">
                             <div style="background-color:#006699;border-radius:3px;padding:3px;width:20%;">
                                 <label class="lblofertas">N° Oferta Maestra: </label>
                                
                                 <asp:Label ID="LBLNumContrato" runat="server" Text="#" CssClass="lblnumcontrato"></asp:Label>
                              </div>
                         </td>
                     </tr>
                 </table>
                
                 <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse4" >
                                Información de Diseños<span class="icon-chevron-small-down rightBar"></span></div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse3">
                                    <div class="well">
                                        <div class="row">
                                              <div class="col-md-4">
                                                    <table class="trans_table" style="border-color: #c8c3c3;border-style:solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;" >
                                                       <tr>
                                                           <td>Solicitud diseño:</td>
                                                           <td>
                                                               <asp:TextBox ID="DTPSolicitudDiseno" Enabled="false" runat="server" Width="120px" placeholder="MM/dd/yyyy"></asp:TextBox>
                                                                <asp:ImageButton ID="imgDTPSolicitudDiseno" Enabled="false"  ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                               <ajax:CalendarExtender ID="calendario1"  PopupButtonID="imgDTPSolicitudDiseno" TargetControlID="DTPSolicitudDiseno"  runat="server" Format="MM/dd/yyyy" />
                                                           </td>
                                                      </tr>
                                                      <tr>
                                                         <td>Fecha Requerido:</td>
                                                         <td> <asp:TextBox ID="DTPFechaRequerido"  Enabled="false" runat="server" Width="120px" placeholder="MM/dd/yyyy"></asp:TextBox>
                                                              <asp:ImageButton ID="ImageButton1" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                             <ajax:CalendarExtender ID="CalendarExtender1"  PopupButtonID="ImageButton1" TargetControlID="DTPFechaRequerido"  runat="server" Format="MM/dd/yyyy" />
                                                           
                                                         </td>  
                                                      </tr>
                                                        <tr>
                                                            <td colspan="2"><b>Tipo de dibujo</b></td>
                                                           
                                                        </tr>
                                                        <tr>
                                                            <td >
                                                                 <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                                  <ContentTemplate>
                                                                   <asp:CheckBoxList ID="CKListTipoDibujo" runat="server" CellPadding="0" CellSpacing="0" AutoPostBack="true" OnSelectedIndexChanged="CKListTipoDibujo_SelectedIndexChanged">
                                                                        <asp:ListItem Value="2D">2D</asp:ListItem>
                                                                        <asp:ListItem Value="3D" >3D</asp:ListItem>
                                                                        <asp:ListItem Value="Render">Render</asp:ListItem>
                                                                        <asp:ListItem Value="Animación">Animación</asp:ListItem>
                                                                        <asp:ListItem Value="Otro">Otro</asp:ListItem>
                                                                   </asp:CheckBoxList>
                                                                 </ContentTemplate>
                                                                </asp:UpdatePanel>

                                                            </td>
                                                            <td >
                                                                <br /><br />
                                                               <br /><br /><br />
                                                                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                   <ContentTemplate>
                                                                     <asp:TextBox ID="TXTOtroTipoDibujo" runat="server" Visible="false" ></asp:TextBox>
                                                                   </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td >Status de dibujos:</td>
                                                            <td >
                                                                <asp:DropDownList ID="CMBStatusDibujo" runat="server">
                                                                     <asp:ListItem>Pendiente</asp:ListItem>
                                                                     <asp:ListItem>Modificaciones</asp:ListItem>
                                                                     <asp:ListItem>Finalizado</asp:ListItem>
                                                                </asp:DropDownList></td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="center">
                                                                 <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                                   <ContentTemplate>
                                                                        <asp:LinkButton ID="CMDAdjuntarDisenoInicial" runat="server"  CssClass="btnazulll plus" tooltip="Adjuntar Diseño" OnClick="CMDAdjuntarDisenoInicial_Click" OnClientClick="return validasolicitudsolo();" >
                                                                              <span class="glyphicon glyphicon-paperclip"></span>
                                                                        </asp:LinkButton>&nbsp;

                                                                        <asp:Button ID="CMDEnviarSolicitudInicial" runat="server" Text="Enviar Solicitud" CssClass="btnazulll"  OnClick="CMDEnviarSolicitudInicial_Click" OnClientClick="return validasolicitud();"/>
                                                                  </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                           
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2" align="center">
                                                               <hr style="border-top: 1px solid #c8c3c3;"/>
                                                            </td>
                                                           
                                                        </tr>
                                                          <tr>
                                                            <td colspan="2">
                                                               <b>Modificaciones</b></td>
                                                            
                                                          </tr>
                                                         <tr>
                                                           <td>Solicitud de cambio:</td>
                                                           <td>
                                                               <asp:TextBox ID="DTPSolicitudCambio"  Enabled="false" runat="server" Width="120px" placeholder="MM/dd/yyyy"></asp:TextBox>
                                                               <asp:ImageButton ID="ImageButton2" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                             <ajax:CalendarExtender ID="CalendarExtender2"  PopupButtonID="ImageButton2" TargetControlID="DTPSolicitudCambio"  runat="server" Format="MM/dd/yyyy" />
                                                           </td>
                                                      </tr>
                                                      <tr>
                                                         <td>Fecha Requerido:</td>
                                                         <td> <asp:TextBox ID="dateTimePicker1"  Enabled="false" runat="server" Width="120px" placeholder="MM/dd/yyyy"></asp:TextBox>
                                                             <asp:ImageButton ID="ImageButton3" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                                             <ajax:CalendarExtender ID="CalendarExtender3"  PopupButtonID="ImageButton3" TargetControlID="dateTimePicker1"  runat="server" Format="MM/dd/yyyy" />
                                                         </td>  
                                                      </tr>
                                                       <%-- <tr>
                                                            <td colspan="2" align="center">
                                                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                  <ContentTemplate>
                                                                       <asp:Button ID="CMDAdjuntarDisenoModifica" runat="server" Text="Adjuntar Diseño" OnClick="CMDAdjuntarDisenoModifica_Click" CssClass="btnazulll" />
                                                                
                                                                 </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                               
                                                            </td>
                                                        </tr>--%>
                                                         <tr>
                                                            <td colspan="2" align="center">
                                                                 <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                                                   <ContentTemplate>
                                                                   <asp:LinkButton ID="CMDAdjuntarDisenoModifica" runat="server"  CssClass="btnazulll plus" tooltip="Adjuntar Diseño" OnClick="CMDAdjuntarDisenoModifica_Click"  OnClientClick="return validasolicitudsolo();" >
                                                                              <span class="glyphicon glyphicon-paperclip"></span>
                                                                        </asp:LinkButton>&nbsp;

                                                                      <asp:Button ID="CMDEmailCambio" runat="server" Text="Enviar Correo con Solicitud" OnClick="CMDEmailCambio_Click" CssClass="btnazulll"  OnClientClick="return validasolicitud();" />
                                                                 </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                     </table>
                                              </div>
                                              <div class="col-md-8">
                                                  <div style="border-color: #c8c3c3;border-style:solid; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px;">
                                                   Productos que se deben incluir en el diseño
                                                <asp:UpdatePanel ID="UpdatePanel11" runat="server" >
                                                 <ContentTemplate>
                                                  <div style="height:300px;overflow:auto;">
                                                   <asp:GridView ID="DGVDisenos"  Width="100%"  CssClass="table" 
                                                         ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                                         runat="server" DataKeyNames="ID_Caracteristica,OfertaMadre" AutoGenerateColumns="False" 
                                                         Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                                         BorderWidth="1px" CellPadding="2" 
                                                           OnRowDataBound="DGVDisenos_RowDataBound"
                                                           OnRowEditing="DGVDisenos_RowEditing" 
                                                           OnRowUpdating="DGVDisenos_RowUpdating"
                                                           OnRowCancelingEdit="DGVDisenos_RowCancelingEdit"
                                                           
                                                           OnRowDeleting="DGVDisenos_RowDeleting" >
                                                        <Columns>

                                                            <%-- <asp:BoundField DataField="Nombre_Caracteristica" HeaderText="Producto"    />
                                                             <asp:BoundField DataField="Descripcion1" HeaderText="Descripcion"   /> 
                                                             <asp:BoundField DataField="Descripcion2" HeaderText="Otra Descripcion"   />--%>

                                                             <asp:TemplateField HeaderText="Producto" ItemStyle-HorizontalAlign="Center">
                                                                                            
                                                                             <EditItemTemplate>
                                                                                     <asp:DropDownList ID="CMBProductos2" runat="server"  >
                                                                                     </asp:DropDownList>
                                                                             </EditItemTemplate>
                                                                             <ItemTemplate>
                                                                                    <asp:Label ID="Lbl_NombreCaracteristica2" runat="server" Text='<%#Eval("Nombre_Caracteristica") %>'></asp:Label>
                                                                             </ItemTemplate>       
                                                             </asp:TemplateField>

                                                             <asp:TemplateField HeaderText="Descripción" ItemStyle-HorizontalAlign="Center">
                                                        
                                                               <ItemTemplate>
                                                                    <asp:Label ID="Lbl_Descripcion1" runat="server" Text='<%#Eval("Descripcion1") %>'></asp:Label>
                                                               </ItemTemplate>  
                                                                <EditItemTemplate>
                                                                      <asp:TextBox ID="TXT_Descripcion1" runat="server" MaxLength="200" Text='<%#Eval("Descripcion1") %>'></asp:TextBox>
                                                                 </EditItemTemplate>   
                                                            </asp:TemplateField>

                                                            <asp:TemplateField HeaderText="Otra Descripción" ItemStyle-HorizontalAlign="Center">
                                                               <ItemTemplate>
                                                                    <asp:Label ID="Lbl_Descripcion2" runat="server" Text='<%#Eval("Descripcion2") %>'></asp:Label>
                                                               </ItemTemplate>  
                                                                <EditItemTemplate>
                                                                      <asp:TextBox ID="TXT_Descripcion2" runat="server" MaxLength="200" Text='<%#Eval("Descripcion2") %>'></asp:TextBox>
                                                                 </EditItemTemplate>    
                                                            </asp:TemplateField>

                                                            <asp:TemplateField ControlStyle-Width="10" HeaderText="Editar">
                                                                                    <ItemTemplate>
                                                                                        <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                                                    </ItemTemplate>
                                                                                   <EditItemTemplate>
                                                                                      <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" />
                                                                                      <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" />
                                                                                   </EditItemTemplate>
                                                                                    <ControlStyle Width="25px" />
                                                                    </asp:TemplateField>
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

                                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                        <RowStyle ForeColor="#000000" />
                                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                                                    </asp:GridView>
                                                  </div>
                                           
                                                  <table class="trans_table" >
                                                      <tr>
                                                          <td> <asp:Button ID="CMD_Agregar_Disenos" runat="server" Text="Agregar"  CssClass="btnazulll" OnClick="CMD_Agregar_Disenos_Click" OnClientClick="return validasolicitudsolo();"/></td>
                                                         
                                                          <td></td>
                                                          <td> </td>
                                                           <td> <asp:Button ID="CMDDisenosFinales" runat="server" CssClass="btnazulll" Visible="false" Text="Ver diseños finales Adjuntos" OnClick="CMDDisenosFinales_Click" OnClientClick="return validasolicitudsolo();"/></td>
                                                          <td><asp:Button ID="CMDBitacoraSeguimientos" runat="server" Text="Bitacora Seguimientos"  CssClass="btnazulll" OnClick="CMDBitacoraSeguimientos_Click" OnClientClick="return validasolicitudsolo();" /></td>
                                                      </tr>
                                                      
                                                  </table>
                            
                                               </ContentTemplate>
                                            </asp:UpdatePanel>
                                                      <br /><br /><br /><br /><br />
                                                   






                                              </div>
                                          </div>
                                        </div>
                                 
                                    

                                 </div>
                               </div>
                             </div>
                      </div>




            
                        
                            

              </div>     





</asp:Content>
