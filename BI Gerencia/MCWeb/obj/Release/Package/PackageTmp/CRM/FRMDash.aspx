<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMDash.aspx.cs" Inherits="MCWebHogar.CRM.FRMDash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

     <   <script type="text/javascript">

             function mostraralertifywarning(msj) {
                 alertify.notify(msj, 'warning', 5, null);
             }

             function mostraralertifysuccess(msj) {
                 alertify.notify(msj, 'success', 5, null);
             }

             function mostraralertifyerror(msj) {
                 alertify.notify(msj, 'error', 5, null);
             }



     </script>

    <div id="modalloading" class="loading">
		    <img src="../Images/cargando5.gif" width="100" height="100" /> 
    </div>
    <div id="fade2" class="overlayload" ></div>
     <br /><br /><br />
             <div class="main container">
             <%-- <h2 class="colortitulo">Dashboard</h2>--%>
                 <br />
                 <ol class="breadcrumb">
                     <li class="breadcrumb-item">
                         
                          <h3 class="colortitulo">Dashboard</h3>
                     </li>
                     <li class="breadcrumb-item active">
                         Proformas
                     </li>
                 </ol>

                  <div class="row">  <%-- Div de seleccion--%> 
            <div class="col-md-6">
                <fieldset class="fieldset">
                    <legend>Fases</legend>
                    <asp:CheckBoxList ID="CHK_Fases" runat="server">
                    </asp:CheckBoxList>
                </fieldset>
            </div>      
            <div class="col-md-6">
                       
                Vendedores:
                <asp:DropDownList ID="DDL_Asesores" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <br />
                Fecha Inicio:<br />
                <asp:TextBox ID="DTP_FInicio" class="date start" Width="120" runat="server" onkeypress="return false" onpaste="return false"></asp:TextBox>
                <asp:ImageButton ID="imgDTPSolicitudDiseno" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                <ajax:CalendarExtender ID="calendario1" PopupButtonID="imgDTPSolicitudDiseno" TargetControlID="DTP_FInicio" runat="server" Format="dd/MM/yyyy" />
                <br />
                <br />
                Fecha Aprox Entrega:<br />
                <asp:TextBox ID="DTP_FFin" class="date start" Width="120" runat="server" onkeypress="return false" onpaste="return false"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                <ajax:CalendarExtender ID="CalendarExtender1" PopupButtonID="ImageButton1" TargetControlID="DTP_FFin" runat="server" Format="dd/MM/yyyy" />
                <br />
                <br />
                <asp:LinkButton ID="CMD_Generar" runat="server" CssClass="btn btn-success" OnClientClick="return activarloading();" OnClick="CMD_Generar_Click">
                    Generar&nbsp;<span class="icon-ccw"></span>
                </asp:LinkButton>
                <asp:LinkButton ID="CMD_Excel" runat="server" CssClass="btn btn-default active" OnClick="CMD_Excel_Click">
                    Excel&nbsp;<span class="icon-download"></span>
                </asp:LinkButton>
            </div>
      </div>
        <br />
        <div class="row">  <%-- Div de Barras y Pie--%>
            <div class="col-md-6">
                <div class="row">
                    <asp:DropDownList ID="DDL_Grafico" runat="server" CssClass="ddlclass" Style="float: right;">
                        <asp:ListItem Value="Barras">Barras</asp:ListItem>
                        <asp:ListItem Value="Pie">Pie</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="panel panel-default">
                    <div id="barras3d">
                    </div>
                    <div id="pie" style="display: none;">
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <asp:DropDownList ID="DDL_Grafico_Montos" runat="server" CssClass="ddlclass" Style="float: right;">
                        <asp:ListItem Value="BarrasMonto">Barras</asp:ListItem>
                        <asp:ListItem Value="PieMonto">Pie</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="panel panel-default">
                    <div id="barras3dMonto">
                    </div>
                    <div id="pieMonto" style="display: none;">
                    </div>
                </div>
            </div>
        </div>
                      <br />
                      <br />
                      <br />

        <div class="row"><%-- Div de DataGrieview--%>
            <asp:GridView ID="DGVGeneral" Width="100%" CssClass="table"
                ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                runat="server" DataKeyNames="IDOportunidad" AutoGenerateColumns="False"
                Font-Size="7" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                BorderWidth="1px" CellPadding="2" OnRowDataBound="DGVGeneral_RowDataBound"
                OnPreRender="DGVGeneral_PreRender" OnRowEditing="DGVGeneral_RowEditing"  >
                <Columns>
                    <asp:BoundField DataField="IDOportunidad" HeaderText="IDOportunidad" Visible="false" />
                    <asp:BoundField DataField="NombreOportunidad" HeaderText="NombreOportunidad" />
                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                    <asp:BoundField DataField="NombreContacto" HeaderText="NombreContacto" />
                    <asp:BoundField DataField="Vendedor" HeaderText="Vendedor" />
                    
                    <asp:TemplateField HeaderText="Total Oferta" ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:Label ID="Lbl_TotalOferta" runat="server" Text='<%#Eval("MontoOportunidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Fase" HeaderText="Fase" />
                </Columns>
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <RowStyle ForeColor="#000000" />
                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
            </asp:GridView>
        </div>

        <button type="button" id="btnpopDetalle" data-toggle="modal" data-target="#popDetalle" style="visibility: hidden;">open</button>

        <div class="modal fade bd-example-modal-lg" id="popDetalle" tabindex="-1" role="dialog" aria-labelledby="poppopDetallev" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <asp:UpdatePanel ID="UpdatePanelDetalle" runat="server">
                        <ContentTemplate>

                            <asp:Button ID="CMD_Detalle" runat="server" Text=""  OnClick="CMD_Detalle_Click" Style="display: none" />
                            <asp:TextBox ID="TXT_Detalle" runat="server" Style="display: none" ></asp:TextBox>

                            <div class="modal-header">
                                <h3 class="modal-title" id="exampleModalLabel2">Detalle de Etapa:
                                <asp:Label ID="LBL_Detalle" runat="server" Text=""></asp:Label>
                                </h3>
                            </div>
                            <div class="modal-body">
                                <div style="height: 400px; overflow: auto">
                                    <asp:GridView ID="GV_Detalle" Width="100%" CssClass="table"
                                        ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                        runat="server" DataKeyNames="IDOportunidad,NombreOportunidad" AutoGenerateColumns="False"
                                        Font-Size="9" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="2" OnRowDataBound="GV_Detalle_RowDataBound" OnRowEditing="GV_Detalle_RowEditing" >
                                        <Columns>
                                            <asp:BoundField DataField="IDOportunidad" HeaderText="IDOportunidad" Visible="false" />
                                            <asp:BoundField DataField="NombreOportunidad" HeaderText="NombreOportunidad" />
                                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                                            <asp:BoundField DataField="NombreContacto" HeaderText="NombreContacto" />
                                            <asp:BoundField DataField="Vendedor" HeaderText="Vendedor" />

                                            <asp:TemplateField HeaderText="Total Oferta" ItemStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_TotalOferta" runat="server" Text='<%#Eval("MontoOportunidad") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Fase" HeaderText="Fase" />
                                        </Columns>

                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                                    </asp:GridView>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="Button8" runat="server" Text="Cancelar" data-dismiss="modal" CssClass="btn btn-secondary" />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>
                 
    <%-- llamado a los javacripts--%>
    <script src="../Scripts/jquery.js"></script>
    <script src="../Scripts/highcharts.js"></script>
    <script src="../Scripts/exporting.js"></script>
    <script src="../Scripts/exporting.src.js"></script>
    <script src="../Scripts/highcharts-3d.js"></script>
    <%-- Scripts de Diseño y llenado--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Content_DDL_Grafico").change(function () {
                var chart = document.getElementById('<%= DDL_Grafico.ClientID %>').value;
                if (chart == 'Barras') {
                    document.getElementById('barras3d').style.display = 'inline';
                    document.getElementById('pie').style.display = 'none';
                } else {
                    document.getElementById('barras3d').style.display = 'none';
                    document.getElementById('pie').style.display = 'inline';
                }
            });

            $("#Content_DDL_Grafico_Montos").change(function () {
                var char = document.getElementById('<%= DDL_Grafico_Montos.ClientID %>').value;
                if (char == 'BarrasMonto') {
                    document.getElementById('barras3dMonto').style.display = 'inline';
                    document.getElementById('pieMonto').style.display = 'none';
                } else {
                    document.getElementById('barras3dMonto').style.display = 'none';
                    document.getElementById('pieMonto').style.display = 'inline';
                }
            });

            var f1 = document.getElementById('<%= DTP_FInicio.ClientID %>').value;
            var f2 = document.getElementById('<%= DTP_FFin.ClientID %>').value;
            var asesor = document.getElementById('<%= DDL_Asesores.ClientID %>').value;

            var chk = document.getElementById('<%= CHK_Fases.ClientID %>');

            var fases = '';

            $.each($("#Content_CHK_Fases :checkbox:checked"), function () {
                fases += $(this).val() + ',';
                //list.push(msg);
            });

            fases = fases.slice(0, fases.length - 1);

            //alert(msg);

            //ListaPubli(mes1, anio1, mes2, anio2);
            ListaPubli(f1, f2, asesor, fases);

            $("#Content_CMD_Generar").click("click", function () {

                var f1 = document.getElementById('<%= DTP_FInicio.ClientID %>').value;
                var f2 = document.getElementById('<%= DTP_FFin.ClientID %>').value;
                var asesor = document.getElementById('<%= DDL_Asesores.ClientID %>').value;
                var fases = '';

                $.each($("#Content_CHK_Fases :checkbox:checked"), function () {
                    fases += $(this).val() + ',';
                });

                fases = fases.slice(0, fases.length - 1);

                ListaPubli(f1, f2, asesor, fases);
            });
        });

        function ListaPubli(f1, f2, asesor, fases) {    // mes1, anio1, mes2, anio2

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "FRMDash.aspx/lista_Fases",
                //data: "{}",
                data: '{f1: "' + f1 + '",f2: "' + f2 + '",asesores: "' + asesor + '",fases: "' + fases + '" }',
                dataType: "json",
                success: function (Result) {
                    // alert("sucees" + Result.d);
                    Result = Result.d;
                    var data = [];
                    var dataMonto = [];
                    for (var i in Result) {
                        var serie = new Array(Result[i].Fase, Result[i].SumaFases);
                        data.push(serie);
                        var serieMonto = new Array(Result[i].Fase, Result[i].SumaOportunidad);
                        dataMonto.push(serieMonto);
                    }
                    DibujaGrafico(data);
                    DibujaGraficoMonto(dataMonto);
                },
                error: function (Result) {
                    //alert("Error" + Result.d);
                    alert("ERROR " + Result.status + ' ' + Result.statusText);
                }
            });
        }

        function dibulabarras3d(series) {
            /* global document */
            // Load the fonts
            Highcharts.createElement('link', {
                href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
                rel: 'stylesheet',
                type: 'text/css'
            }, null, document.getElementsByTagName('head')[0]);

            // Add the background image to the container
            //Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
            //    proceed.call(this);
            //    this.container.style.background =
            //       'url(http://www.highcharts.com/samples/graphics/sand.png)';
            //});

            Highcharts.theme = {
                colors: ['#f45b5b', '#8085e9', '#8d4654', '#7798BF', '#aaeeee',
                '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                chart: {
                    backgroundColor: null,
                    style: {
                        fontFamily: 'Signika, serif'
                    }
                },
                title: {
                    style: {
                        color: 'black',
                        fontSize: '16px',
                        fontWeight: 'bold'
                    }
                },
                subtitle: {
                    style: {
                        color: 'black'
                    }
                },
                tooltip: {
                    borderWidth: 0
                },
                legend: {
                    itemStyle: {
                        fontWeight: 'bold',
                        fontSize: '13px'
                    }
                },
                xAxis: {
                    labels: {
                        style: {
                            color: '#6e6e70'
                        }
                    }
                },
                yAxis: {
                    labels: {
                        style: {
                            color: '#6e6e70'
                        }
                    }
                },
                plotOptions: {
                    series: {
                        shadow: true
                    },
                    candlestick: {
                        lineColor: '#404048'
                    },
                    map: {
                        shadow: false
                    }
                },
                // Highstock specific
                navigator: {
                    xAxis: {
                        gridLineColor: '#D0D0D8'
                    }
                },
                rangeSelector: {
                    buttonTheme: {
                        fill: 'white',
                        stroke: '#C0C0C8',
                        'stroke-width': 1,
                        states: {
                            select: {
                                fill: '#D0D0D8'
                            }
                        }
                    }
                },
                scrollbar: {
                    trackBorderColor: '#C0C0C8'
                },
                // General
                background2: '#E0E0E8'
            };

            Highcharts.chart('barras3d', {
                chart: {
                    type: 'column',
                    options3d: {
                        enabled: true,
                        alpha: 10,
                        beta: 25,
                        depth: 70
                    }
                },
                title: {
                    text: 'Proyecto por fase'
                },
                subtitle: {
                    text: ''
                },
                plotOptions: {
                    series: {
                        cursor: 'pointer',
                        point: {
                            events: {
                                click: function () {
                                    // alert('Category: ' + this.category + ', value: ' + this.y + ', name: ' + this.name);
                                    document.getElementById('<%=TXT_Detalle.ClientID %>').value = this.name;
                                    document.getElementById("Content_CMD_Detalle").click();
                                }
                            }
                        }
                    }
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    title: {
                        text: null
                    }
                },
                series: [{
                    name: 'Cantidad',
                    data: series,
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        format: '{point.y:.1f}', // one decimal
                        y: 10, // 10 pixels down from the top
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }]
            });
            Highcharts.setOptions(Highcharts.theme);
        }

        function dibulabarras3dMonto(series) {
            /* global document */
            // Load the fonts
            Highcharts.createElement('link', {
                href: 'https://fonts.googleapis.com/css?family=Signika:400,700',
                rel: 'stylesheet',
                type: 'text/css'
            }, null, document.getElementsByTagName('head')[0]);

            // Add the background image to the container
            //Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
            //    proceed.call(this);
            //    this.container.style.background =
            //       'url(http://www.highcharts.com/samples/graphics/sand.png)';
            //});

            Highcharts.theme = {

                colors: ['#f45b5b', '#8085e9', '#8d4654', '#7798BF', '#aaeeee',
                '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                chart: {
                    backgroundColor: null,
                    style: {
                        fontFamily: 'Signika, serif'
                    }
                },
                lang: {
                    decimalPoint: '.',
                    thousandSep: ','
                },
                title: {
                    style: {
                        color: 'black',
                        fontSize: '16px',
                        fontWeight: 'bold'
                    }
                },
                subtitle: {
                    style: {
                        color: 'black'
                    }
                },
                tooltip: {
                    borderWidth: 0
                },
                legend: {
                    itemStyle: {
                        fontWeight: 'bold',
                        fontSize: '13px'
                    }
                },
                xAxis: {
                    labels: {
                        style: {
                            color: '#6e6e70'
                        }
                    }
                },
                yAxis: {
                    labels: {
                        style: {
                            color: '#6e6e70'
                        }
                    }
                },
                plotOptions: {
                    series: {
                        shadow: true
                    },
                    candlestick: {
                        lineColor: '#404048'
                    },
                    map: {
                        shadow: false
                    }
                },
                // Highstock specific
                navigator: {
                    xAxis: {
                        gridLineColor: '#D0D0D8'
                    }
                },
                rangeSelector: {
                    buttonTheme: {
                        fill: 'white',
                        stroke: '#C0C0C8',
                        'stroke-width': 1,
                        states: {
                            select: {
                                fill: '#D0D0D8'
                            }
                        }
                    }
                },
                scrollbar: {
                    trackBorderColor: '#C0C0C8'
                },
                // General
                background2: '#E0E0E8'
            };

            Highcharts.chart('barras3dMonto', {
                chart: {
                    type: 'column',
                    options3d: {
                        enabled: true,
                        alpha: 10,
                        beta: 25,
                        depth: 70
                    }
                },
                title: {
                    text: 'Monto Proyecto por Fase'
                },
                subtitle: {
                    text: ''
                },
                plotOptions: {
                    series: {
                        cursor: 'pointer',
                        point: {
                            events: {
                                click: function () {
                                    // alert('Category: ' + this.category + ', value: ' + this.y + ', name: ' + this.name);
                                    document.getElementById('<%=TXT_Detalle.ClientID %>').value = this.name;
                                    document.getElementById("Content_CMD_Detalle").click();
                                }
                            }
                        }
                    }
                },
                xAxis: {
                    type: 'category',
                    labels: {
                        rotation: -45,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    title: {
                        text: null
                    }
                },
                series: [{
                    name: 'Monto',
                    data: series,
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',

                        // format: '{point.y:.1f}', // one decimal
                        y: 10, // 10 pixels down from the top
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                }]
            });
        Highcharts.setOptions(Highcharts.theme);
    }

    function DibujaGrafico(series) {
        dibulabarras3d(series);
        //estilo pie 3d bonito
        Highcharts.theme = {
            colors: ['#7cb5ec', '#f7a35c', '#90ee7e', '#7798BF', '#aaeeee', '#ff0066',
            '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
            chart: {
                backgroundColor: null,
                style: {
                    fontFamily: 'Dosis, sans-serif'
                }
            },
            title: {
                style: {
                    fontSize: '16px',
                    fontWeight: 'bold',
                    textTransform: 'uppercase'
                }
            },
            tooltip: {
                borderWidth: 0,
                backgroundColor: 'rgba(219,219,216,0.8)',
                shadow: false
            },
            legend: {
                itemStyle: {
                    fontWeight: 'bold',
                    fontSize: '13px'
                }
            },
            xAxis: {
                gridLineWidth: 1,
                labels: {
                    style: {
                        fontSize: '12px'
                    }
                }
            },
            yAxis: {
                minorTickInterval: 'auto',
                title: {
                    style: {
                        textTransform: 'uppercase'
                    }
                },
                labels: {
                    style: {
                        fontSize: '12px'
                    }
                }
            },
            plotOptions: {
                candlestick: {
                    lineColor: '#404048'
                }
            },
            // General
            background2: '#F0F0EA'
        };

        Highcharts.setOptions(Highcharts.theme);

        Highcharts.chart('pie', {
            chart: {
                type: 'pie',
                options3d: {
                    enabled: true,
                    alpha: 45,
                    beta: 0
                }
            },
            title: {
                text: 'Proyecto por fase'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.y:,.0f}</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    depth: 35,
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.y:,.0f}'
                    }
                },
                series: {
                    cursor: 'pointer',
                    point: {
                        events: {
                            click: function () {
                                // alert('Category: ' + this.category + ', value: ' + this.y + ', name: ' + this.name);
                                document.getElementById('<%=TXT_Detalle.ClientID %>').value = this.name;
                                document.getElementById("Content_CMD_Detalle").click();
                            }
                        }
                    }
                }
            },
            series: [{
                type: 'pie',
                name: 'Cantidad',
                data: series
            }]
        });
                Highcharts.setOptions(Highcharts.theme);
            }

            function DibujaGraficoMonto(series) {
                dibulabarras3dMonto(series);
                //estilo pie 3d bonito
                Highcharts.theme = {
                    colors: ['#7cb5ec', '#f7a35c', '#90ee7e', '#7798BF', '#aaeeee', '#ff0066',
                    '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                    chart: {
                        backgroundColor: null,
                        style: {
                            fontFamily: 'Dosis, sans-serif'
                        }
                    },
                    title: {
                        style: {
                            fontSize: '16px',
                            fontWeight: 'bold',
                            textTransform: 'uppercase'
                        }
                    },
                    tooltip: {
                        borderWidth: 0,
                        backgroundColor: 'rgba(219,219,216,0.8)',
                        shadow: false
                    },
                    legend: {
                        itemStyle: {
                            fontWeight: 'bold',
                            fontSize: '13px'
                        }
                    },
                    xAxis: {
                        gridLineWidth: 1,
                        labels: {
                            style: {
                                fontSize: '12px'
                            }
                        }
                    },
                    yAxis: {
                        minorTickInterval: 'auto',
                        title: {
                            style: {
                                textTransform: 'uppercase'
                            }
                        },
                        labels: {
                            style: {
                                fontSize: '12px'
                            }
                        }
                    },
                    plotOptions: {
                        candlestick: {
                            lineColor: '#404048'
                        }
                    },
                    // General
                    background2: '#F0F0EA'
                };

                Highcharts.setOptions(Highcharts.theme);

                Highcharts.chart('pieMonto', {
                    chart: {
                        type: 'pie',
                        options3d: {
                            enabled: true,
                            alpha: 45,
                            beta: 0
                        }
                    },
                    title: {
                        text: 'Monto Proyecto por Fase'
                    },
                    tooltip: {
                        pointFormat: '{series.name}: <b>{point.y:,.0f}</b>'
                    },
                    plotOptions: {
                        pie: {
                            allowPointSelect: true,
                            cursor: 'pointer',
                            depth: 35,
                            dataLabels: {
                                enabled: true,
                                format: '<b>{point.name}</b>: {point.y:,.0f}'
                            }
                        },
                        series: {
                            cursor: 'pointer',
                            point: {
                                events: {
                                    click: function () {
                                        // alert('Category: ' + this.category + ', value: ' + this.y + ', name: ' + this.name);
                                        document.getElementById('<%=TXT_Detalle.ClientID %>').value = this.name;
                                        document.getElementById("Content_CMD_Detalle").click();
                                    }
                                }
                            }
                        }
                    },
                    series: [{
                        type: 'pie',
                        name: 'Suma Monto',
                        data: series
                    }]
                });
                Highcharts.setOptions(Highcharts.theme);
            }

            function opendetalle() {
                document.getElementById("btnpopDetalle").click();
                return false;
            }
    </script>

</asp:Content>
