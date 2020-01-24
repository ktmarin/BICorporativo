
var dis = true;
var user;

function funcAvisa() {
    console.log("Esperando!!");
}


function addZero(i) {

    if (i < 10) {
        i = '0' + i;
    }
    return i;
}
function searchLastDay(month, year) {
    if(month == 04 || month == 06 || month == 09 || month == 11 ){
        return 30;
    } else if(month == 02 ) {
        return (year % 4 == 0) ? 29 : 28;
    } else {
        return 31;
    }
}

function setNumberMonth(name) {
    var month;
    switch (name) {
        case "Ene":
            month = "01";
            break;
        case "Feb":
            month = "02";
            break;
        case "Mar":
            month = "03";
            break;
        case "Abr":
            month = "04";
            break;
        case "May":
            month = "05";
            break;
        case "Jun":
            month = "06";
            break;
        case "Jul":
            month = "07";
            break;
        case "Ago":
            month = "08";
            break;
        case "Sep":
            month = "09";
            break;
        case "Oct":
            day = "10";
            break;
        case "Nov":
            month = "11";
            break;
        case "Dic":
            month = "12";
            break;

    }
    return month;
}
function setMonthName(month) {
    var day;
    switch (month) {
        case "00":
             day= "Ene";
            break;
        case "01":
            day = "Feb";
            break;
        case "02":
            day = "Mar";
            break;
        case "03":
             day = "Abr";
            break;
        case "04":
             day = "May";
            break;
        case "05":
             day = "Jun";
            break;
        case "06":
             day = "Jul";
            break;
        case "07":
             day = "Ago";
            break;
        case "08":
             day = "Sep";
            break;
        case "09":
             day = "Oct";
            break;
        case "10":
             day = "Nov";
            break;
        case "11":
             day = "Dic";
            break;

    }
    return day;
}

function init() {

    $.post("AjaxDash.aspx", {
        option: "PER"
    }, function (data, status) {

        if (data == "1") {

        } else if (data == "2") {
            document.getElementById("icon").style.display = "none"
        } else {
            document.getElementById("icon").style.display = "none";
            document.getElementById("Asesor").disabled = true;
            var option = document.createElement("option");
            option.innerHTML = data;
            document.getElementById("Asesor").appendChild(option);
            dis = false;

        }
    });
    setTimeout(funcAvisa, 3000);
 
    var i = 0;
    var myarray = ["Asesor", "2019", "Prom.Proyectado", "Prom.Real", "Cuota mensual", "x Asessor", "%"];
    var date = new Date();
    var day = searchLastDay(date.getMonth()+1, date.getFullYear());
    document.getElementById("txtStartDate").setAttribute("value", date.getFullYear() + "-" + addZero(date.getMonth()+1) + "-" + "01");
    document.getElementById("txtFinalDate").setAttribute("value", date.getFullYear() + "-" + addZero(date.getMonth() + 1) + "-" + day);
    var obj = document.createElement("a");
    obj.setAttribute("name", "Proformas");
    $.post("AjaxDash.aspx", {
        startDate: document.getElementById("txtStartDate").value,
        finalDate: document.getElementById("txtFinalDate").value,
        option: "INIT",
        tipoCambio: "0",
        option2: "Proforma x Asesor"
    }, function (data, status) {
        var num = JSON.parse(data);
        var option = document.createElement("option");
        option.innerHTML = "Todos";
        document.getElementById("Asesor").appendChild(option);
        for (var i = 0; i < Object.keys(num.Table1).length; i++) {
            var option = document.createElement("option");
            option.innerHTML = num.Table1[i].sDescripcion;
            document.getElementById("Asesor").appendChild(option);
        }
    });

    $.post("AjaxDash.aspx", {
        startDate: document.getElementById("txtStartDate").value,
        finalDate: document.getElementById("txtFinalDate").value,
        option: "SELECT",
        tipoCambio: "0",
    }, function (data, status) {
        var num = JSON.parse(data);
        for (var i = 0; i < num.Table1.length; i++) {   
            var input = document.createElement("input");
            input.setAttribute("type", "checkbox");
            input.setAttribute("name", num.Table1[i].Seccion);
            input.setAttribute("onclick", "optionChangeChoice(this)");
            input.value = num.Table1[i].Nombre;
            var a = document.createElement("a");
            a.innerHTML = num.Table1[i].Nombre;
            var br = document.createElement("br");
           document.getElementById("Vent").appendChild(input);
           document.getElementById("Vent").appendChild(a);
           document.getElementById("Vent").appendChild(br);
            
        }
    });
    var a = document.createElement("a");
    a.setAttribute("title", "Proformas");
    getChart(a);
}

function startPage() {
    Highcharts.chart('highchart', {
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: 'Browser market shares at a specific website, 2014'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                },
                point: {
                    events: {
                        click: function () {

                               
                            window.alert(this.name);
                        }
                    }
                }
            }
                
        },
        series: [{
            type: 'pie',
            name: 'Browser share',
            data: [
                ['Firefox', 45.0],
                ['IE', 26.8],
                {
                    name: 'Chrome',
                    y: 12.8,
                    sliced: true,
                    selected: true
                },
                ['Safari', 8.5],
                ['Opera', 6.2],
                ['Others', 0.7]
            ]
        }]
    });
}

function openModalTable(obj) {
    var span = document.createElement("span");
    span.innerHTML = "hola  " + obj.id;
    document.getElementById("modalcontent").appendChild(span);
    $('#myModal').modal("show");
}

function createFunnelChart() {
   


    Highcharts.chart('lineas', {

        title: {
            text: 'Solar Employment Growth by Sector, 2010-2016'
        },

        subtitle: {
            text: 'Source: thesolarfoundation.com'
        },

        yAxis: {
            title: {
                text: 'Number of Employees'
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },

        plotOptions: {
            series: {
                label: {
                    connectorAllowed: false
                },
                pointStart: 2010
            }
        },

        series: [{
            name: 'Installation',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
        }, {
            name: 'Manufacturing',
            data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
        }, {
            name: 'Sales & Distribution',
            data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
        }, {
            name: 'Project Development',
            data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
        }, {
            name: 'Other',
            data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
        }],

        responsive: {
            rules: [{
                condition: {
                    maxWidth: 500
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        }

    });

}



function createChart(type, DateArray, title, seriesY) {

    if (type == "Circular") {
        Highcharts.chart('highchart', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: title
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                },
                series: {
                    cursor: 'pointer',
                    point: {
                        events: {
                            click: function () {
                                ModalFill(this);
                                $('#myModalFil').modal("show");
                            }
                        }
                    }
                }
            },
            series: [{
                name: 'Data',
                colorByPoint: true,
                data: seriesY
            }]
        });
    } else if (type == "Barras") {
        Highcharts.chart('highchart', {

            chart: {
                type: 'column',
                scrollablePlotArea: {
                    minWidth: 400,
                    scrollPositionX: 1
                }
            },

            title: {
                text: title
            },

            subtitle: {
                text: ''
            },

            legend: {
                align: 'right',
                verticalAlign: 'middle',
                layout: 'vertical',
                maxHeight: 200,
                width: '30%',
                borderWidth: 1
            }, 
            plotOptions: {
                series: {
                    cursor: 'pointer',
                    point: {
                        events: {
                            click: function () {
                                ModalFill(this);
                                $('#myModalFil').modal("show");
                            }
                        }
                    }
                }
            },

            xAxis: {
                categories: DateArray,
                labels: {
                    overflow: 'justify'
                }
            },

            yAxis: {
                allowDecimals: true,
                title: {
                    text: 'Cantidad'
                }
            },

            series: seriesY,

            responsive: {
                rules: [{
                    condition: {
                        maxWidth: 200
                    },
                    chartOptions: {
                        legend: {
                            align: 'left',
                            verticalAlign: 'bottom',
                            layout: 'horizontal'
                        },
                        yAxis: {
                            labels: {
                                align: 'left',
                                x: 0,
                                y: -5
                            },
                            title: {
                                text: null
                            }
                        },
                        subtitle: {
                            text: null
                        },
                        credits: {
                            enabled: false
                        }
                    }
                }]
            }
        });

    } else if (type == "Embudo") {

        Highcharts.chart('embudo', {
            chart: {
                type: 'funnel'
            },
            title: {
                text: ''
            },
            plotOptions: {
                series: {
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b> ({point.y:,.0f})',
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black',
                        softConnector: true
                    }, point: {
                        events: {
                            click: function () {
                                console.log("hola");
                                $('#exampleModalCenter').modal("show");
                            }
                        }
                    },
                    center: ['40%', '50%'],
                    neckWidth: '30%',
                    neckHeight: '25%',
                    width: '60%'
                }
            },
            legend: {
                enabled: false
            },
            series: [{
                name: 'Embudo',
                data: [
                    ['Website visits', 1565],
                    ['Downloads', 4064],
                    ['Requested price list', 1987],
                    ['Invoice sent', 976],
                    ['Finalized', 846]
                ]
            }]
        });
    } else {
        Highcharts.chart('highchart', {

            title: {
                text: title
            },

            subtitle: {
                text: title
            },
            xAxis: {
                categories: DateArray,
                labels: {
                    overflow: 'justify'
                }
            },

            yAxis: {
                title: {
                    text: title
                }
            },
            legend: {
                align: 'right',
                verticalAlign: 'middle',
                layout: 'vertical',
                maxHeight: 200,
                width: '30%',
                borderWidth: 1
            },
            plotOptions: {
            series: {
                cursor: 'pointer',
                point: {
                events: {
                    click: function () {
                        ModalFill(this);
                        $('#myModalFil').modal("show");
                         }
                    }
                }
            }
        },

            series: seriesY,

            responsive: {
                rules: [{
                    condition: {
                        maxWidth: 500
                    },
                    chartOptions: {
                        legend: {
                            layout: 'horizontal',
                            align: 'center',
                            verticalAlign: 'bottom'
                        }
                    }
                }]
            }

        });
    }
}