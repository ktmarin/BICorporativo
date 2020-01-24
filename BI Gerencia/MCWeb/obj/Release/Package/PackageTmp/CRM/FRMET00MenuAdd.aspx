<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableSessionState="True"  EnableEventValidation="false" CodeBehind="FRMET00MenuAdd.aspx.cs" Inherits="MCWebHogar.CRM.FRMET00MenuAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    
     <script  type="text/javascript">

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


         function openpopclientes() {

             document.getElementById("btn_popClientes").click();

             //return false;
         }

         function closepopclientes() {

             document.getElementById("Content_Button2").click();

         }



         function ClientSelected(source, eventArgs) {
             var idx = source._selectIndex;
             var value = source.get_completionList().childNodes[idx]._value;
             var array = value.split('-');
             var Id = array[0];
             Id = Id.trim();
             var Descripcion = array[1];
             Descripcion = Descripcion.trim();
          <%--   var TXT_NombreCliente = "<%= TXT_NombreCliente.ClientID %>";--%>
             document.getElementById(TXT_NombreCliente).value = Descripcion;
             var TXT_NombreClientehd = "<%= TXT_NombreClientehd.ClientID %>";
             document.getElementById(TXT_NombreClientehd).value = Id;
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
             alertify.notify(msj, 'success',5, null);
         }

         function mostraralertifysuccess2(msj) {
             alertify.notify(msj, 'success', 5, null);
             setTimeout(sleep, 4000);

         }


         function sleep() {

             location.href = "/CRM/FRMET00MenuAdd.aspx";

         }
       

         function mostraralertifyerror(msj) {
             alertify.notify(msj, 'error', 5, null);
         }

         function nuevo() {

             document.getElementById('<%= LBLTituloMenu.ClientID %>').innerText = 'Contacto Nuevo';
         <%--    document.getElementById('<%= TXT_NombreContacto.ClientID %>').value = '';
             document.getElementById('<%= TXT_Celular.ClientID %>').value = '';
             document.getElementById('<%= TXT_Telefono.ClientID %>').value = '';
             document.getElementById('<%= TXT_NombreCliente.ClientID %>').value = '';
             document.getElementById('<%= TXT_Correo.ClientID %>').value = '';
             document.getElementById('<%= TXT_Observaciones.ClientID %>').value = '';


             document.getElementById('<%= TXT_IDContacto.ClientID %>').value = '';
             document.getElementById('<%= TXT_NombreClientehd.ClientID %>').value = '';

             document.getElementById('<%= TXT_Provincia.ClientID %>').value = '';--%>



         }


         function validar() {
             var TXT_NombreClientehd = document.getElementById('<%= TXT_NombreClientehd.ClientID %>').value.trim();
             TXT_NombreClientehd = TXT_NombreClientehd.trim();

<%--             var TXT_NombreContacto = document.getElementById('<%= TXT_NombreContacto.ClientID %>').value.trim();
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
             TXT_Observaciones = TXT_Observaciones.trim();--%>

             <%--  var TXT_Departamento = document.getElementById('<%= TXT_Departamento.ClientID %>').value.trim();
             TXT_Departamento = TXT_Departamento.trim();--%>


             <%--   var CMB_Propietario = document.getElementById('<%= CMB_Propietario.ClientID %>');--%>
       <%--      var CMB_Puesto = document.getElementById('<%= CMB_Puesto.ClientID %>');--%>


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
             if (TXT_NombreClientehd.length == 0) {
                 mostraralertifyerror('El codigo del cliente es invalido. Seleccione el cliente denuevo por favor.');
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


             //if(TXT_Departamento.length == 0){
             //    mostraralertifyerror('Debe completar el departamento!');
             //          return false;
             //    }


         }



              </script>

     
                   <br /><br /><br />  
    
                  <div class=" container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">              
                  <%--<div id="divCompleto" class="  main row" style="width:750px; padding :15px;  padding-bottom:40px;">--%> <%--main container--%>




                      <div id="Menu" class="row text-center" style="margin-top:15px;">

                          <table class="trans_table">


                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBLTituloMenu" CssClass="colortitulo" runat="server" Text="Encuesta de satisfacción"></asp:Label></h2>


                                  </td>

                                  <td align="right">
                                      <asp:TextBox ID="TXT_UsuarioCreo" runat="server" Enabled="false" Visible="false"></asp:TextBox>
                                      <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                          <ContentTemplate>
                                              <asp:HiddenField ID="TXT_IDContacto" runat="server" Value="" />
                                              <asp:HiddenField ID="TXT_NombreClientehd" runat="server" Value="" />
<asp:HiddenField ID="TXT_IDEncuesta" runat="server" Value="" />


                                          </ContentTemplate>
                                      </asp:UpdatePanel>

                                  </td>
                              </tr>

                         <%--     <tr>
                                  <td colspan="5">
                                      <div class="anuncio">
                                          <img src="http://www.hosthd.net/CRM/ALTEA/gif.gif">
                                      </div>
                                  
                                  </td>
                              </tr>--%>
                              
                              <tr>
                                  <td colspan="5">
                                      <div >
                                          
	<img src="../images/Altea.PNG" width="450" height="178"  >	
                                      </div>

     </td>
                              </tr>
                          </table>
                      </div>
                      <div id="Pregunta1" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta1" CssClass="colortitulo" runat="server" Text="Pregunta1?"></asp:Label></h2>
                                        <asp:HiddenField ID="IDPregunta1" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">
                                            <asp:TextBox ID="TXT_Pregunta1" class="form-control" runat="server" ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta1" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>
                                  <div id="Pregunta2" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta2" CssClass="colortitulo" runat="server" Text="Pregunta2?"></asp:Label></h2>
                                      <asp:HiddenField ID="IDPregunta2" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">.
                                            <asp:TextBox ID="TXT_Pregunta2" class="form-control" runat="server"  ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta2" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>
                               <div id="Pregunta3" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta3" CssClass="colortitulo" runat="server" Text="Pregunta3?"></asp:Label></h2>
                                      <asp:HiddenField ID="IDPregunta3" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">.
                                            <asp:TextBox ID="TXT_Pregunta3" class="form-control" runat="server"  ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta3" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>
                               <div id="Pregunta4" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta4" CssClass="colortitulo" runat="server" Text="Pregunta4?"></asp:Label></h2>
                                      <asp:HiddenField ID="IDPregunta4" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">.
                                            <asp:TextBox ID="TXT_Pregunta4" class="form-control" runat="server"  ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta4" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>
                               <div id="Pregunta5" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta5" CssClass="colortitulo" runat="server" Text="Pregunta5?"></asp:Label></h2>
                                      <asp:HiddenField ID="IDPregunta5" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">.
                                            <asp:TextBox ID="TXT_Pregunta5" class="form-control" runat="server"  ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta5" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>
                               <div id="Pregunta6" class="row"  style="display:none;">
                          <table class="trans_table">
                              <tr>
                                  <td colspan="5">
                                      <h2>
                                          <asp:Label ID="LBL_Pregunta6" CssClass="colortitulo" runat="server" Text="Pregunta6?"></asp:Label></h2>
                                      <asp:HiddenField ID="IDPregunta6" runat="server" Value="" />
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="5">.
                                            <asp:TextBox ID="TXT_Pregunta6" class="form-control" runat="server"  ></asp:TextBox>
                                      <asp:RadioButtonList ID="CMB_Pregunta6" runat="server">
                                          <asp:ListItem>Item 1</asp:ListItem>
                                          <asp:ListItem>Item 2</asp:ListItem>
                                          <asp:ListItem>Item 3</asp:ListItem>
                                          <asp:ListItem>Item 4</asp:ListItem>
                                          <asp:ListItem>Item 5</asp:ListItem>
                                          <asp:ListItem>Item 6</asp:ListItem>
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                          </table>

                      </div>

                        <asp:UpdatePanel ID="UpdatePanelEncuesta" runat="server" UpdateMode="Always">
                                        <ContentTemplate>
                      <div class="row" style="margin-top:50px; margin-bottom:50px;">
                         <div class="row">
                             <table class="">
                                 <tr>
                                     <td align="left">

                                          <asp:Button ID="CMD_NuevoContacto" Width="100" Height="40" Font-Size="Medium" runat="server" Text="Enviar" OnClick="CMD_NuevoContacto_Click"  CssClass="btn btn-primary"/>
                                         
                                      <%--    <asp:Button ID="CMD_Guardar" runat="server" Text="Guardar" OnClick="CMD_Guardar_Click" OnClientClick="return validar();" CssClass="btn btn-success"/>
                                          
                                         <asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado" OnClick="CMD_Salir_Click"  CssClass="btn btn-default active"/>--%>

                                     </td>
                                 </tr>
                             </table>
                              
                         </div>
                      </div>
                                             </ContentTemplate>
                                        <%--                           <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="LBL_CodCliente"  EventName="TextChanged" />
                                        </Triggers>--%>
                                    </asp:UpdatePanel>

                      </div>



                     

                          
                         <br />
                   
                
            
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
    
    
    

    <button type="button" id="btn_popClientes" data-toggle="modal" data-target="#popClientes" style="visibility:hidden;">open</button>

        
         <div class="modal fade" id="popClientes" tabindex="-1" role="dialog" aria-labelledby="popAdjunto2" aria-hidden="true">
                
                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel24">Cliente</h3>
                       
                      </div>
                      <div class="modal-body">
                            <asp:UpdatePanel ID="UpdatePanel25" runat="server" UpdateMode="Conditional">
                              <ContentTemplate>
                     
                                                    <asp:DropDownList ID="Drop_filtro" runat="server" CssClass="ddlclass">
                                                        <asp:ListItem Value="1">Nombre</asp:ListItem>
                                                        <asp:ListItem Value="2">Cédula</asp:ListItem>
                                                        <asp:ListItem Value="3">Código</asp:ListItem>
                                                    </asp:DropDownList> 
                                 
                                                  <asp:TextBox ID="TXT_searchcliente" CssClass="textboxpeqSearch" Width="150" placeholder="Buscar..." runat="server" 
                                                      onkeydown = "return (event.keyCode!=13);"></asp:TextBox>

                                                 <asp:LinkButton ID="CMD_SearchCliente" runat="server" CssClass="btn btn-default"   > <%--OnClick="CMD_SearchCliente_Click"--%> 
                                                     <span class="glyphicon glyphicon-search"></span>
                                                 </asp:LinkButton>
                               
                                  <div style="height:300px; overflow:auto">
                          <%--           <asp:GridView ID="DGVClientes" Width="100%" runat="server"  Font-Size="10pt" 
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
                                                                                              Text="Elegir" CssClass="btn btn-default"   />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                         <asp:BoundField DataField="sCodigo" HeaderText="Codigo" />
                                                                         <asp:BoundField DataField="sNombre" HeaderText="Nombre" /> 
                                                                  </Columns>
                                                               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                                <RowStyle ForeColor="#000000" />
                                                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                               
                                                 </asp:GridView>--%>
                                      </div> 
                              </ContentTemplate>    
                          </asp:UpdatePanel>    
                      </div>
                      <div class="modal-footer">
                           
                           <asp:Button ID="Button2" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                      </div>
                    </div>
                  </div>
                    
          </div>
               

</asp:Content>
