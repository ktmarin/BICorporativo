<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMCalendarioDis.aspx.cs" Inherits="MCWebHogar.CRM.FRMCalendarioDis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">




     <link href="/Styles/FullCalendar/fullcalendar.min.css" rel="stylesheet" />
    <link href="/Styles/FullCalendar/fullcalendar.print.min.css" rel="stylesheet" media="print" />
    <script src="/Scripts/FullCalendar/lib/moment.min.js"></script>
    <script src="/Scripts/FullCalendar/lib/jquery.min.js"></script>
    <script src="/Scripts/FullCalendar/fullcalendar.min.js"></script>
    <script src="/Scripts/FullCalendar/locale-all.js"></script>
  

    <script type="text/javascript">


        function mostraralertifywarning(msj) {
            alertify.notify(msj, 'warning', 5, null);
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

        function activarReprogramacion() {
            
            document.getElementById('Content_LBL_Coment').style.display = 'inline';
            document.getElementById('Content_LBL_Fecha').style.display = 'inline';
            document.getElementById('Content_CMD_ReprogramarDiseno').style.display = 'inline';
            document.getElementById('Content_TXT_ReprogramarF').style.display = 'inline';
            document.getElementById('Content_DDL_ReprogramarH').style.display = 'inline';
            return false;
        }
        function desactivarReprogramacion() {

            document.getElementById('Content_LBL_Coment').style.display = 'none';
            document.getElementById('Content_LBL_Fecha').style.display = 'none';
            document.getElementById('Content_CMD_ReprogramarDiseno').style.display = 'none';
            document.getElementById('Content_TXT_ReprogramarF').style.display = 'none';
            document.getElementById('Content_DDL_ReprogramarH').style.display = 'none';
            return false;
        }
            
        <%--function validarReprogramacion() {

            var fecha = document.getElementById('<%= TXT_ReprogramarF.ClientID %>').value;
            var f = new Date();
            var mes2 = (f.getMonth() + 1);
            if (mes2 < 10) {
                mes2 = '0' + mes2;
            }
            var actual = f.getFullYear() + '-' + (mes2) + '-' + f.getDate();

            //alert(actual + ' ??' + fecha);
            if (fecha == '') {
                mostraralertifyerror('Seleccione la fecha por favor');
                return false;
            }

            if (fecha < actual) {
                mostraralertifyerror('Fecha menor a la actual');
                return false;
            }

            desactivarReprogramacion();
           
        }--%>



        $(document).ready(function () {

            GenerateCalender('');

            $("#Content_cboDisenadores").change(function () {
                //alert('cbo');
                GenerateCalender('');
            });

            $("#Content_cboEstados").change(function () {
                //alert('cbo');
                GenerateCalender('');
            });

            $("#Content_cboCategorias").change(function () {
                //alert('cbo');
                GenerateCalender('');
            });

            $('#Content_Chk_VerMisproyectos').click(function (event) {
                GenerateCalender('');
            });

            function SaveEvent(data) {
                //$.ajax({
                //    type: "POST",
                //    url: 'Calendario.aspx/setTime',
                //    data: data,
                //    success: function (res) {
                //        alert('ok' + res.d);
                //        if (res.status) {
                //            //Refresh the calender
                //            //FetchEventAndRenderCalendar();
                //            GenerateCalender('');
                //        }
                //    },
                //    error: function () {
                //        alert('Failed');
                //    }
                //})




                //__doPostBack('settime', data.EventID + ';' + data.Start + ';' + data.End);

            }


            function GenerateCalender(events) {

                var dis = document.getElementById('<%= cboDisenadores.ClientID %>').value;
                var estado = document.getElementById('<%= cboEstados.ClientID %>').value;

                var chk = document.getElementById('<%= Chk_VerMisproyectos.ClientID %>').value; 

                var cat = document.getElementById('<%= txtusuario.ClientID %>').value;

                if ($('#Content_Chk_VerMisproyectos').prop('checked')) {
                    
                } else {
                    cat = "";
                }

                //var fases = '';
                //$.each($("#Content_Chk_VerMisproyectos :checkbox:checked"), function () {
                //    fases += $(this).val() + ',';
                //    //list.push(msg);
                //});

                //fases = fases.slice(0, fases.length - 1);

                
                //var cbo = document.getElementById("cboEmpresa");
                //var em = cbo.options[cbo.selectedIndex].value;

                $('#calendar').fullCalendar('destroy');
                $('#calendar').fullCalendar({
                    // contentHeight: 400,
                    locale: 'es',
                    defaultDate: new Date(),   //1995 - 11-17
                    timeFormat: 'h(:mm)a',
                    weekends : false,
                    header: {
                        left: 'prev,next',
                        center: 'title',
                        right: 'month,basicWeek,basicDay'
                    },
                    eventLimit: true,
                    eventColor: '#444',
                    textColor: '#000',
                    // events: events,
                    events: '../CRM/EventosCalendario/Diseno.ashx?e=' + dis +';'+ estado +';'+cat,
                    //eventMouseover: function(event, jsEvent, view) {
                    //    $('.fc-event-inner', this).append('<div id=\"'+event.id+'\" class=\"hover-end\">'+$.fullCalendar.formatDate(event.end, 'h:mmt')+'</div>');
                    //},

                    //eventMouseout: function(event, jsEvent, view) {
                    //    $('#'+event.id).remove();
                    //},



                    eventMouseover: function (calEvent, jsEvent) {
                        //var cliente = calEvent.title.split(';');
                        var tooltip = '<div class="tooltipevent" style="width:300px;height:110px;padding:10px;background:#f2f2f2;border:1px solid #444;overflow:auto;border-radius:5px;position:absolute;z-index:10001;"><i class="icon-user"></i>:' + calEvent.title + '<br><i class="icon-calendar"></i>:' + calEvent.start.format('DD/MM/YYYY HH:mm') + ' - ' + calEvent.end.format('DD/MM/YYYY HH:mm') + '<br><i class="icon-location-pin"></i>:' + calEvent.description + '</div>';
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
                    eventClick: function (calEvent, jsEvent, view) {
                        //selectedEvent = calEvent;
                        //$('#myModal #eventTitle').text(calEvent.title);
                        //var $description = $('<div/>');
                        //$description.append($('<p/>').html('<b>Start:</b>' + calEvent.start.format("DD-MMM-YYYY HH:mm a")));
                        //if (calEvent.end != null) {
                        //    $description.append($('<p/>').html('<b>End:</b>' + calEvent.end.format("DD-MMM-YYYY HH:mm a")));
                        //}
                        //$description.append($('<p/>').html('<b>Description:</b>' + calEvent.description));
                        //$('#myModal #pDetails').empty().html($description);

                        // $('#myModal').modal();
                        //document.getElementById("btn").click();
                        // $("#btn").click();

                        //__doPostBack('IdEventoCargar', llamadaEvento.id);

                        //activarloading();
                        // document.getElementById("HTXT_IDEvento").value = llamadaEvento.id;

                        <%-- $('#<%=CMD_CargarModificarEvento1.ClientID%>').click()--%>

                       // alert('click' + calEvent.title);

                        //  $('btn_detalleds').click();


                        var detalle = calEvent.description;

                        // alert(calEvent.title);

                        
                        document.getElementById('<%= TXT_ID.ClientID %>').value = calEvent.id;
                        document.getElementById('<%= TXT_FechaInicio.ClientID %>').value = calEvent.start.format('DD/MM/YYYY HH:mm');
                        document.getElementById('<%= TXT_FechaFinal.ClientID %>').value = calEvent.end.format('DD/MM/YYYY HH:mm');
                        document.getElementById('<%= TXT_Disenador.ClientID %>').value = calEvent.title;
                        document.getElementById('<%= TXT_NotasDS2.ClientID %>').value = detalle;
                        document.getElementById("btn_detalleds").click();

                        //desactivarloading();

                       // __doPostBack('Cargar', calEvent.id);


                        //alert('CLICK');
                    },
                    selectable: true,
                    select: function (start, end) {
                        selectedEvent = {
                            eventID: 0,
                            title: '',
                            description: '',
                            start: start,
                            end: end,
                            allDay: false,
                            color: ''
                        };
                        openAddEditForm();
                        $('#calendar').fullCalendar('unselect');
                        
                    },
                    editable: false,
                    eventDrop: function (event) {
                        var data = {
                            EventID: event.id,
                            Subject: event.title,
                            Start: event.start.format('DD/MM/YYYY HH:mm A'),
                            End: event.end != null ? event.end.format('DD/MM/YYYY HH:mm A') : null,
                            Description: event.description,
                            ThemeColor: event.color,
                            IsFullDay: event.allDay
                        };
                       // SaveEvent(data);

                        //$.ajax({
                        //    type: "POST",
                        //    url: '@Url.Content("~/CarpetaRandom/WebForm.aspx/GetCurrentTime")',
                        //    data: '{name: "' + $("#nombre").val() + '" }',
                        //    contentType: "application/json; charset=utf-8",
                        //    dataType: "json",
                        //    success: OnSuccess,
                        //    failure: function (response) {
                        //        alert(response.d);
                        //    }
                        //});



                        //var id = event.id;
                        //var start = (event.start.getTime()/1000).toString();
                        //var end = (event.end.getTime()/1000).toString();
                        //url = 'Calendario.aspx/setTime';
                        //$.ajax({
                        //    type: "POST",
                        //    url: url,
                        //    data: '{name: "' + id + '" }',
                        //    contentType: "application/json; charset=utf-8",
                        //    dataType: "json",

                        //    success: function(){
                        //        //$('#calendar').fullCalendar('refetchEvents');
                        //        alert('success');
                        //    },
                        //    error: function(){
                        //      //  $('#calendar').fullCalendar('refetchEvents');
                        //        alert('Error');
                        //    }
                        //});
                        //alert(event.id + event.title + event.start.format('DD/MM/YYYY HH:mm A')+event.end.format('DD/MM/YYYY HH:mm A') +event.description );
                    }
                })
            }
        });




    </script>

     <style type="text/css">
	    /*body {
		    margin: 40px 10px;
		    padding: 0;
		    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		    font-size: 14px;
	    }*/

	    #calendar {
		    max-width: 1080px;
		    margin: 0 auto;
	    }

        .stbutton {
            text-align: left;
        }
        .auto-style1 {
            width: 120px;
         }
        .auto-style3 {
            width: 250px;
         }
        .auto-style4 {
            width: 10px;
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
     <div id="modalloading" class="loading">
		   
		    <img src="../images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>
    
         <br /><br /><br />
             <div class="main container">
              <%--<h2 class="colortitulo">Calendario</h2>--%>
                  <br /> <br />
                     <div class="row">
                          <div class="col-md-4">

                              <asp:HiddenField ID="txtusuario" runat="server" Value="" />
                              
                          </div>
                         <div class="col-md-4">
                            
                               Estado: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:DropDownList ID="cboEstados" runat="server" CssClass="ddlclass">
                                           
                                        </asp:DropDownList><br />
                                      Diseñadores: <asp:DropDownList ID="cboDisenadores" runat="server" CssClass="ddlclass"> </asp:DropDownList>
                                
                               
                         </div>
                         <div class="col-md-4"> 
                           <%-- vCategoría:&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="cboCategorias" runat="server" CssClass="ddlclass"> 
                                
                            </asp:DropDownList>--%>


                             <asp:CheckBox ID="Chk_VerMisproyectos" runat="server" text="Ver solo mis proyectos"/>


                         </div>
                        
                    </div>



                <div id="PrincCalendario">
               <%-- <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>--%>
                        <div id="calendar"></div>
                  <%--  </ContentTemplate>
                </asp:UpdatePanel>--%>
            </div> 

            </div>



    

              <button type="button" id="btn_detalleds" data-toggle="modal" data-target="#popCalendarioDisenoDetalle" style="visibility:hidden;">open</button>

    
              <div class="modal fade" id="popCalendarioDisenoDetalle" tabindex="-1" role="dialog" aria-labelledby="poppopCalendarioDiseno" aria-hidden="true">

                  <div class="modal-dialog modal-sm" >
                    <div class="modal-content">
                      <div class="modal-header">
                         
                        <h3 class="modal-title" id="exampleModalLabel">Detalle Diseño</h3>
                          
                          <asp:HiddenField ID="TXT_ID" runat="server" Value="" />
                      </div>
                      <div class="modal-body">

                           <div class="row">
                                  <div class="col-md-12">
                                   Diseñador y Proyecto:
                                    <asp:TextBox ID="TXT_Disenador" CssClass="form-control" runat="server"></asp:TextBox>

                                 </div>
                               </div>

                            <div class="row">
                                  <div class="col-md-6">
                                     Fecha de inicio:
                                    <asp:TextBox ID="TXT_FechaInicio" CssClass="form-control" runat="server"></asp:TextBox>
                                 </div>

                               <div class="col-md-6">
                                  
                                   Fecha de entrega:
                                    <asp:TextBox ID="TXT_FechaFinal" CssClass="form-control" runat="server"></asp:TextBox>

                               </div>
                            </div>
                          Detalle:
                           <asp:TextBox ID="TXT_NotasDS2" runat="server" CssClass="form-control" TextMode="MultiLine" Columns="10" Rows="10"></asp:TextBox>

                          <br />
                         <%-- <asp:Label ID="LBL_Fecha" style="display:none;" runat="server" Text="Fecha:"></asp:Label>

                            <asp:TextBox ID="TXT_ReprogramarF" runat="server" TextMode="Date"  style="display:none;"></asp:TextBox  >

                             <asp:DropDownList ID="DDL_ReprogramarH" runat="server" CssClass="ddlclass" style="display:none;" >
                                      <asp:ListItem Value="08:00">8:00 AM</asp:ListItem>
                                      <asp:ListItem Value="09:00">9:00 AM</asp:ListItem>
                                      <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                                      <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                                      <asp:ListItem Value="12:00">12:00 MD</asp:ListItem>
                                      <asp:ListItem Value="13:00">1:00 PM</asp:ListItem>
                                      <asp:ListItem Value="14:00">2:00 PM</asp:ListItem>
                                      <asp:ListItem Value="15:00">3:00 PM</asp:ListItem>
                                      <asp:ListItem Value="16:00">4:00 PM</asp:ListItem>
                                      <asp:ListItem Value="17:00">5:00 PM</asp:ListItem>
                                      <asp:ListItem Value="18:00">6:00 PM</asp:ListItem>
                           </asp:DropDownList>

                           <asp:LinkButton ID="CMD_ReprogramarDiseno" runat="server"  OnClick="CMD_ReprogramarDiseno_Click"  OnClientClick="return validarReprogramacion();" CssClass="btn btn-success" style="display:none;" >
                                  <span class="icon-check"></span> <span class="icon-clock"></span>
                            </asp:LinkButton>
                           
                          <br /><br /> <asp:Label ID="LBL_Coment" style="display:none;" ForeColor="Blue" runat="server" Text="**La reprogramación se ajustará automaticamente y reordenará los otros diseños"></asp:Label>   
                          --%>
                      </div>
                      <div class="modal-footer">
                         
                        <%--  <asp:LinkButton ID="CMD_Eliminar" runat="server"  OnClick="CMD_Eliminar_Click" ToolTip="Eliminar Diseño"  OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este diseño?');"  CssClass="btn btn-danger" style="float:left;">
                              <span class="icon-trash"></span>
                          </asp:LinkButton>

                          <asp:LinkButton ID="CMD_Reprogramar" runat="server"  OnClientClick="return activarReprogramacion();"  ToolTip="Reprogramar Diseño"  CssClass="btn btn-warning" style="float:left;">
                                  <span class="icon-clock"></span>
                            </asp:LinkButton>--%>



                           <%--<asp:Button ID="CMDTerminado" runat="server" Text="Terminar Diseño" OnClick="CMDTerminado_Click"   OnClientClick="javascript : return confirm('Esta seguro de que quiere terminar este diseño?');" CssClass="btn btn-info" />
                           --%><asp:Button ID="CMDCerrar" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                      </div>
                    </div>
                  </div>
                </div>




</asp:Content>
