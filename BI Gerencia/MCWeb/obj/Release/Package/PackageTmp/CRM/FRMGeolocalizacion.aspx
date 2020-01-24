<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMGeolocalizacion.aspx.cs" Inherits="MCWebHogar.CRM.FRMGeolocalizacion" %>



<%@ register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="gmaps" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %> 


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <link href="/Content/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <script src="/Scripts/jquery-1.10.2.min.js"></script>
    <script src="/Scripts/moment.js"></script>
    <script src="/Scripts/bootstrap-datetimepicker.min.js"></script>

    <style>
    .google-maps {
    position: relative;
    padding-bottom: 75%; // This is the aspect ratio
    height: 0;
    overflow: hidden;
    }
    .google-maps iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100% !important;
    height: 100% !important;
    }
    </style>
   

  
     <script type="text/javascript">
         $(function () {
             $('#datetimepicker1').datetimepicker({

                 format: 'YYYY/MM/DD LT'
             });
             $('#datetimepicker2').datetimepicker({

                 format: 'YYYY/MM/DD LT'
             });
         });

         function validarfecha() {
             var fecha1 = document.getElementById('<%= DTP_FInicio.ClientID %>').value;
             var fecha2 = document.getElementById('<%= DTP_Fin.ClientID %>').value;

             if (fecha1 > fecha2) {
                 error('Fecha invalidas');
                 return false;
             }

         }

    </script>

     <br /><br /><br />
             <div class="main container">
                <h2 class="colortitulo">Geolocalización</h2>
                  
                  <div class="row">
                             <div class="col-md-12">
                                

                                 <div class="row">
                                      <div class="col-md-3">
                                          
                                          Fecha Desde:
                                          <div class='input-group date' id='datetimepicker1'>
                                      
                                                <asp:TextBox ID="DTP_FInicio" class="form-control"  runat="server"></asp:TextBox>

                                                <span class="input-group-addon" >
                                                    <span class="icon-calendar"></span>
                                                </span>
                                            </div> 
                                      </div>
                                      <div class="col-md-3">
                                           Hasta:
                                           <div class='input-group date' id='datetimepicker2'>
                                     
                                        <asp:TextBox ID="DTP_Fin" class="form-control"  runat="server"></asp:TextBox>

                                        <span class="input-group-addon" >
                                            <span class="icon-calendar"></span>
                                        </span>
                                           </div>
                                      </div>
                                      <div class="col-md-3">
                                          
                                           <asp:LinkButton ID="CMD_Cargar" runat="server"  CssClass="btn btn-default" OnClick="CMD_Cargar_Click"  OnClientClick="return validarfecha();"  >
                                                   <span class="glyphicon glyphicon-search"></span>&nbsp;Cargar
                                                </asp:LinkButton>
                                      </div>
                                      <div class="col-md-3">
                                          
                                           Monto:
                                          <ajax:SliderExtender ID="se1" runat="server" TargetControlId="Slider1" BoundControlID="SliderValue" Minimum="1" Maximum="1000000" />
                                           <asp:TextBox ID="Slider1" runat="server" AutoPostBack="true" OnTextChanged="Slider1_TextChanged" />
                                                <asp:TextBox ID="SliderValue" runat="server" AutoPostBack="true" />
                                      </div>
                                 </div>
                                 <br />
                                 
                                 
                               </div>
                       </div>

                 <div class="google-maps">
                    <gmaps:GMap ID="GMap1" runat="server" enableServerEvents="true"  enableHookMouseWheelToZoom="True" Height="700px" Width="100%" />
                 </div>
                
                  <br />

             </div>




</asp:Content>
