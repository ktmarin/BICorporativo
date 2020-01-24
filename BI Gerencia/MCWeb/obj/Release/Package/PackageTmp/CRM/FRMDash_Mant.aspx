<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMDash_Mant.aspx.cs" Inherits="MCWebHogar.CRM.FRMDash_Mant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <br />
    <br />
   
    <div class="main container">
        <br />
        <br />
        <br />
        <div class="container">
             <input type="button" class="btn btn-primary" value="Nuevo" onclick="openDialog()"/>
        </div>
        <br />
        <div class="container">
             <table id="generalTable" class="table table-striped" style="height:400px; overflow-y: auto;">
            <thead>
                <tr>
                    <th><input title="0" id="bName" onchange="TableSearch(this)" class="form-control" placeholder="Nombre" /></th>
                    <th><input title="1" id="bCategoria" onchange="TableSearch(this)" class="form-control" placeholder="Categoria" /></th>
                    <th><input title="2" id="bDepartamento" onchange="TableSearch(this)" class="form-control" placeholder="Departamento" /></th>
                    <th><input title="3" id="bSeccion" onchange="TableSearch(this)" class="form-control" placeholder="Seccion" /></th>
                    <th><input title="5" id="bFechaIngreso" onchange="TableSearch(this)" class="form-control" placeholder="Fecha Ingreso" /></th>
                    <th><input title="6" id="bFechaModificacion" onchange="TableSearch(this)" class="form-control" placeholder="Fecha de Modificacion" /></th>
                    <th><input title="6" id="bReportePadre" onchange="TableSearch(this)" class="form-control" placeholder="ReportePadre" /></th>
                   
                </tr>
                <tr>
                    <th>Nombre</th>
                    <th>Categoria</th>
                    <th>Departamento</th>
                    <th>Secci&oacute;n</th>
                    <th>Fecha Ingreso</th>
                    <th>Fecha Modificaci&oacute;n</th>
                    <th>ReportePadre</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody id="body"></tbody>
        </table>
        </div> 
    </div>
         <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
          <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content" >
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 id="modalTitle" class="modal-title">Modificar</h4>
              </div>
              <div class="modal-body">
                  <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Datos Principales</a></li>
                    <li><a data-toggle="tab" href="#menu1">Consulta</a></li>
                    <li><a data-toggle="tab" href="#menu2">Filtros</a></li>
                  </ul>
                  <div class="tab-content">
                          <div id="home" class="tab-pane fade in active">
                              <br />
                              <select onchange="fill()" class="form-control" style="width: 300px;">
                                  <option id="reporte">Reporte</option>
                                  <option id="subreporte">Sub-Reporte</option>
                              </select>
                              <br />
                              <div class="row">
                                  <div class="col-sm-6">
                                      <input id="hidden" type="hidden" />
                                      <label>Nombre*</label>
                                      <input id="Nombre" type="text" class="form-control" />
                                      <label>Categoria</label>
                                      <input id="Categoria" type="text" class="form-control" />
                                      <label>Departamento</label>
                                      <input id="Departamento" type="text" class="form-control" />
                                      <label>Estado</label>
                                      <input id="Estado" class="form-control" />
                                      <label>Campos Tabla*</label><br />
                                      <small>*Los nombres separados por comas</small>
                                      <input id="TipoGrafico" type="text" class="form-control" />
                                      <label>Nombre Reporte Padre</label>
                                      <input id="ReportePadre" type="text" class ="form-control" />
                                      <br />
                                      <br />
                                  </div>
                                  <div class="col-sm-6">
                                      <label>Eje x*</label>
                                      <input id="x" class="form-control"/>
                                      <label>Eje Y*</label>
                                      <input id="y" class="form-control"/>
                                      <label>Acci&oacute;n sobre eje y</label>
                                      <small>(SUM,MIN,MAX,AVG)</small>
                                      <input id="TipoSentencia" class="form-control"/>
                                      
                                      <label>Agrupaci&oacute;n</label>
                                      <input id="z" class="form-control" />
                                      <label>Secci&oacute;n</label><br />
                                      <small>*Debe ser un nombre &uacute;nico</small>
                                      <input id="Seccion" type="text" class="form-control" />
                                       <label>EnlaceBI</label>
                                      <input id="EnlaceBI" type="text" class="form-control" />    
                                  </div>
                              </div>
                          </div>
                          <div id="menu1" class="tab-pane fade">
                              <h3>Consulta*</h3><small>*Se puede ingresar como m&aacute;ximo tres par&aacute;metros con el nombre @Fecha1, @Fecha2, @Asesor</small>
                              <textarea id="StringData" class="form-control" rows="18"></textarea>
                          </div>
                          <div id="menu2" class="tab-pane fade">
                              <h3>Filtro*</h3>
                              <small>*Para su funcionamiento debe de traer dos campos el codigo alias(sCodigo) y en nombre alias(sDescripcion)</small>
                              <textarea id="Campos" class="form-control" rows="12"></textarea>
                          </div>
                  </div>
                  <br />
                  <input class="btn btn-primary" type="button" value="Guardar" onclick="addReport()" />
                </div>    
            </div>
          </div>
         </div>
        <div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Cancelar">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            Est&aacute; seguro de borrar este reporte?
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button id="buttonConfirm" type="button" class="btn btn-primary" onclick="deleteReport(this)">Confirmar</button>
          </div>
        </div>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="/Scripts/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet"/>
    <link href="/Styles/FRMDash_Mant.css"rel="stylesheet"/>
    <script src="/Scripts/FRMDash_Mant.js"></script>
    <script>
        init();
    </script>

</asp:Content>
