<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMDash3.aspx.cs" Inherits="MCWebHogar.CRM.Dash3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <br />
    <br />
        <br />
       <aside style="height:770px; opacity:0.9;">
             <div class="container" id="encabezados"> 
                <br />
                     
                <label for="startDate">Fecha de inicio</label>
                <input type="date" id="txtStartDate" class="form-control" />
                           
                          
                <label for="startDate">Fecha final</label>
                <input type="date" id="txtFinalDate"  class="form-control"/>
                        
                            
                <label id ="option">Filtro</label>
                <select  id="Asesor" class="form-control" ></select>
                          
                           
                <label for="grafico">Gr&aacute;fico</label>
                <select  class="form-control" id="typeChart">
                    <option>Barras</option>
                    <option>L&iacute;neas</option>
                    <option>Circular</option>
                </select>
                           
                           
                <label>Moneda</label>
                <select  id="tipoCambio" class="form-control">
                    <option>Dolares</option>
                    <option>Colones</option>
                </select>   
                 <br />        
                <div class="panel panel-default" style="width:97%;">
                  <div class="panel-heading">Report</div>
                <div class="panel-body">
                    <ul>
                        <li id="Vent"></li>
                    </ul>
                </div>
            </div>
            </div>
           <input id="generar" type="button" title="Ventas" value ="Generar" class="btn btn-primary" onclick="getChart(this)" style="margin-top:23px; margin-left:10px;"/>
       </aside>
        <section style="opacity:0.9;">
            <h3 style="margin-left:7px; display:inline-block;">Dashboard</h3>
            <a id="icon" href="FRMDash_Mant.aspx">
                <i class="material-icons">
                    settings
                </i>
            </a>
            <a target="_blank" id="EnlaceB" class="btn btn-success" style="margin-left:68%" href="">ReporteBI</a>
                <div id="highchart" style="margin-left:10px; margin-right: 10px;"></div> 
                <div style="height:300px; overflow-y: auto;margin-left:13px; margin-right: 13px;margin-bottom: 13px;">
                    <table class="table table-striped">
                        <thead id="headerList">
                        </thead>
                        <tbody id="tableList"> 
                        </tbody>
                    </table>
                </div>      
        </section>   
     <br />
     <br />
    <br />
    <br />

<!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title"></h4>
          </div>
          <div id="modalcontent" class="modal-body">
            
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
  </div>
</div>
    <div id="myModalFil" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Ventana de Filtro</h4>
          </div>
          <div id="modalTable" class="modal-body">
              <select onchange="searchSubreportTable(this)"  class="form-control" style="width:300px;display: inline-block" id="subReport" ></select>
              <a id="icon2" class="btn btn-default" onclick="descargarExel()" style="text-align:center;">
                <i class="material-icons">get_apps</i>
            </a>
              <div style="overflow-y: auto; height:400px;">
                   <table id="tableModal"class="table">
                    <thead id="theadModal"></thead>
                    <tbody id="tbodyModal"></tbody>
                </table>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
  </div>
</div>

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
     <script src="/Scripts/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/funnel.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="/Scripts/frmDash.js"></script>
    <script src="/Scripts/ajaxDash.js"></script>
    <script>init()</script>

     <link href="/Styles/frmDash.css" rel="stylesheet" />

</asp:Content>
