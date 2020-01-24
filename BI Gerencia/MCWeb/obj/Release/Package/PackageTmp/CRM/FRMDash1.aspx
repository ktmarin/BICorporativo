<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMDash1.aspx.cs" Inherits="MCWebHogar.CRM.FRMDash1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">



    <br /><br /><br />
        <div class="panel panel-default">

            <div class="row">
                <div class="col-md-6">
                      <div id="container" >

                     </div>
                </div>
                <div class="col-md-6">
                     <div id="containerlabel" >

                    </div>
                </div>

            </div>

            <%-- <div id="container" >

             </div>
            <hr />
            <div id="containerlabel" >

             </div>--%>

            
        </div>

       <script src="../Scripts/jquery.js"></script>
       <script src="../Scripts/highcharts.js"></script>
       <script src="../Scripts/exporting.js"></script>
       <script src="../Scripts/exporting.src.js"></script>
       <script src="../Scripts/highcharts-3d.js"></script>


     <script type="text/javascript">

         $(document).ready(function () {
             Highcharts.chart('container', {
                 chart: {
                     type: 'spline'
                 },
                 title: {
                     text: 'Embudo de Proyectos'
                 },
                 subtitle: {
                     text: 'Source: WorldClimate.com'
                 },
                 xAxis: {
                     categories: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
                         'Jul', 'Ago', 'Set', 'Oct', 'Nov', 'Dic']
                 },
                 yAxis: {
                     title: {
                         text: 'Temperature'
                     },
                     labels: {
                         formatter: function () {
                             return this.value + 'k';
                         }
                     }
                 },
                 tooltip: {
                     crosshairs: true,
                     shared: true
                 },
                 plotOptions: {
                     spline: {
                         marker: {
                             radius: 4,
                             lineColor: '#666666',
                             lineWidth: 1
                         }
                     }
                 },
                 series: [{
                     name: 'Ricardo Novoa',
                     marker: {
                         symbol: 'square'
                     },
                     data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, {
                         y: 26.5,
                         marker: {
                             //symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
                         }
                     }, 23.3, 18.3, 13.9, 9.6]

                 }, {
                     name: 'Ines Quiros',
                     marker: {
                         symbol: 'diamond'
                     },
                     data: [{
                         y: 3.9,
                         marker: { }
                     }, 2.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                 }, {
                     name: 'Davy Vargas',
                     marker: {
                         symbol: 'diamond'
                         
                     },
                     data: [{
                         y: 4.9,
                         marker: {
                             
                         }
                     }, 8.2, 5.7, 9.5, 11.9, 15.2, 17.0, 10.6, 11.2, 9.3, 8.6, 4.8]
                 }, {
                     name: 'Emanuel Moreira',
                     marker: {
                         symbol: 'url(https://www.highcharts.com/samples/graphics/sun.png)'
                     },
                     data: [{
                         y: 36.9,
                         marker: {
                             
                         }
                     }, 5.2, 5.7, 10.5, 11.9, 10.2, 12.0, 13.6, 15.2, 10.3, 9.6, 4.8]
                 }, {
                     name: 'Randall López',
                     marker: {
                         symbol: 'diamond'
                     },
                     data: [{
                         y: 2.9,
                         marker: {
                             
                         }
                     }, 2.2, 2.7, 2.5, 2.9, 2.2, 2.0, 2.6, 2.2, 2.3, 2.6, 2.8]
                 }]
             });


             Highcharts.chart('containerlabel', {
                 chart: {
                     type: 'line'
                 },
                 title: {
                     text: 'Embudo de Proyectos con Labels'
                 },
                 subtitle: {
                     text: 'Source: WorldClimate.com'
                 },
                 xAxis: {
                     categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                 },
                 yAxis: {
                     title: {
                         text: 'Cantidad'
                     },
                     labels: {
                         formatter: function () {
                             return this.value + 'k';
                         }
                     }
                 },
                 plotOptions: {
                     line: {
                         dataLabels: {
                             enabled: true
                         },
                         enableMouseTracking: false
                     }
                 },
                 series: [{
                     name: 'Tokyo',
                     data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                 }, {
                     name: 'London',
                     data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                 }]
             });


         });
     </script>


</asp:Content>
