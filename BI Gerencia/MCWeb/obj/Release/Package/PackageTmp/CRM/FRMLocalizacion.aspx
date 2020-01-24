<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMLocalizacion.aspx.cs" Inherits="MCWebHogar.CRM.FRMLocalizacion" %>

<%@ register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="gmaps" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %> 


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <script type="text/javascript">

        //$(function () {
        //    $('#datetimepicker1').datetimepicker();
        //});

        //$(function () {
        //    $('#datetimepicker1').datetimepicker();
        //});

        function validarfecha() {
            var fecha1 = document.getElementById('<%= DTP_FInicio.ClientID %>').value;
            var fecha2 = document.getElementById('<%= DTP_FFinal.ClientID %>').value;

            if (fecha1.length == 0) {
                mostraralertifyerror('Debe completar la fecha de inicio');
                return false;
            }
            if (fecha2.length == 0) {
                mostraralertifyerror('Debe completar la fecha final.');
                return false;
            }
            activarloading();
        }

        function mostraralertifysuccess(msj) {
            alertify.notify(msj, 'success', 5, null);
        }

        function mostraralertifyerror(msj) {
            alertify.notify(msj, 'error', 5, null);
        }

        function activarloading() {
            document.getElementById('fade2').style.display = 'block';
            document.getElementById('modalloading').style.display = 'block';
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
             <div class="main container">
                  <h2 class="colortitulo">Control de GPS</h2>

                  
                
                 <div class="rowsPanel panel panel-primary">
                             
                     <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true" >
                     <ContentTemplate>--%>

                         <div class="row">
                             <div class="col-md-3">
                                 <div class="form-group">
                                      Fecha Inicio <asp:TextBox ID="DTP_FInicio"   Width="120" runat="server" ></asp:TextBox>
                                      <asp:ImageButton ID="imgFechaI"   ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                      <ajax:CalendarExtender ID="CalendarExtender1"  runat="server" TargetControlID="DTP_FInicio"  PopupButtonID="imgFechaI" Format="MM/dd/yyyy 08:00" />

                                 </div>

                                <%--<div class="container">
                                    <div class="row">
                                        <div class='col-sm-6'>
                                            <div class="form-group">
                                                <div class='input-group date' id='datetimepicker1'>
                                                    <input type='text' class="form-control" />
                                                    <span class="input-group-addon">
                                                        <span class="glyphicon glyphicon-calendar"></span>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <script type="text/javascript">
                                            
                                        </script>
                                    </div>
                                </div>--%>


                                 <div class="form-group">
                                      Fecha Final
                                      <asp:TextBox ID="DTP_FFinal" runat="server"  Width="120"></asp:TextBox>
                                      <asp:ImageButton ID="imgFechaF"  ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                                      <ajax:CalendarExtender ID="CalendarExtender2"  runat="server" TargetControlID="DTP_FFinal" PopupButtonID="imgFechaF"  Format="MM/dd/yyyy 18:30" />
                                 </div>
                                
                              </div>
                             <div class="col-md-3">
                                  <div class="form-group">
                                       <asp:CheckBox ID="CHK_Entrada" runat="server" Text="Entrada" Checked="True" />&nbsp;&nbsp;
                                       <asp:CheckBox ID="CHK_EntradaAlmuerzo" runat="server" Text="Entrada Almuerzo" Checked="True" />
                                  </div>
                                  <div class="form-group"> 
                                        <asp:CheckBox ID="CHK_Salida" runat="server" Text="Salida" Checked="True" />&nbsp;&nbsp;
                                        <asp:CheckBox ID="CHK_SalidaAlmuerzo" runat="server" Text="Salida Almuerzo" Checked="True" />
                                  </div>
                             </div>
                             <div class="col-md-3">
                                 <div class="form-group">
                                      <%--<asp:Label ID="Label1" runat="server" Text="Dispositivo" BackColor="#FF9966"></asp:Label><br /><br />--%>
                                     Dispositivo:
                                      <asp:DropDownList ID="CMB_Dispositivos" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
                                     
                                 </div> 
                             </div>
                             <div class="col-md-3">
                                 <br />
                                
                                  <asp:LinkButton ID="CMD_Buscar" runat="server"  CssClass="btn btn-default" OnClick="CMD_Buscar_Click" OnClientClick="return validarfecha();"  >
                                     <span class="glyphicon glyphicon-search"></span>&nbsp;Buscar
                                 </asp:LinkButton>
                             </div>
                         </div>
                       
                <%-- <asp:LinkButton ID="CMD_BuscarPunto" runat="server"  CssClass="btn btn-success" OnClick="CMD_BuscarPunto_Click" >
                                <span class="glyphicon glyphicon-search"></span>&nbsp;Ubicar Punto
                  </asp:LinkButton><hr style="margin-top: 5px;margin-bottom: 5px;" />--%>
           
            
                 <div style="width:1000px;">
                     <div style="float:left;">
                        <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server"  >
                           <ContentTemplate>--%>

                           
                             <asp:ListBox ID="LST_Markers" runat="server" Height="700px" Width="200px" OnDataBound="LST_Markers_DataBound" OnSelectedIndexChanged="LST_Markers_SelectedIndexChanged" AutoPostBack="true" ></asp:ListBox>
                           <%--</ContentTemplate>
                             <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="LST_Markers" EventName="SelectedIndexChanged" />OnSelectedIndexChanged="LST_Markers_SelectedIndexChanged" AutoPostBack="True"
                            </Triggers>
                          </asp:UpdatePanel>--%>
                      </div>
                     <div style="float:right;">
                          <gmaps:GMap ID="GMap1" runat="server" enableServerEvents="true"  enableHookMouseWheelToZoom="True" Height="700px" Width="700px" ajaxUpdateProgressMessage="Cargando"/>
                
                     </div>
                 </div>
                   <%--  </ContentTemplate>

            <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="LST_Markers" EventName="SelectedIndexChanged" />
                    </Triggers>
        
        </asp:UpdatePanel>--%>




                 </div>
                                           

              </div> 



          



</asp:Content>
