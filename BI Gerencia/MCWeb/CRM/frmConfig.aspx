<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="frmConfig.aspx.cs" Inherits="MCWebHogar.CRM.frmConfig" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
   <%-- <style>
        li:hover {
            background-color: #D6F1EA;
        }
    </style>--%>

    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab_1" data-toggle="tab"><i class="fa fa-bar-chart"></i>&nbsp;Mantenimiento de Informes</a></li>
                        <li class="pull-right">
                            <a onclick="configs.openDialogModal()" class="text-muted" style="cursor:pointer;">
                            <span>Agregar</span>
                                 <i class="fa fa-plus"></i>
                            </a>

                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">

                            <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthNombre" placeholder="Nombre" onkeypress="configs.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthCategoria" placeholder="Categoria"  onkeypress="configs.search();"  />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthDepartamento" placeholder="Departamento" onkeypress="configs.search();"   />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthSeccion" placeholder="Seccion" onkeypress="configs.search();"  />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthEstado" placeholder="Estado"  onkeypress="configs.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthEmpresa" placeholder="Empresa"  onkeypress="configs.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" style="width: 90px" class="form-control" readonly name="name" value="" id="txthAcciones" placeholder="Acciones" />
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbodyUs"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <input id="btnAddUser" type="button" class="btn btn-info btn-lg hidden" data-toggle="modal" data-target="#mdInforme"/>

    <div class="modal fade" id="mdInforme" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Informes BI</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Nombre</label>
                                <input class="form-control" type="text" id="txtNombre" value="" />
                            </div>
                            <div class="form-group">
                                <label>Link Power BI</label>
                                <input class="form-control" type="text" id="txtLink" value="" />
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <input class="form-control" type="text" id="txtCategoria" value="" />
                            </div>
                             <div class="form-group">
                                <label>Departamento</label>
                                <input class="form-control" type="text" id="txtDepartamento" value="" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Seccion</label>
                                <input class="form-control" type="text" id="txtSeccion" value="" />
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <select class="form-control" id="cmbEstado"></select>
                            </div>
                            <div class="form-group">
                                <label>Empresa</label>
                                <select class="form-control" id="cmbEmpresa"></select>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-sm btn-success" id="btnGuardar" value="Guardar" onclick="configs.save(this)" />
                    <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" id="btnCerrar">Cerrar</button>
                </div>
            </div>

        </div>
    </div>

     <input id="btnMdConfirm" type="button" class="btn btn-primary hidden" data-toggle="modal" data-target="#mdConfirm" />

    <div class="modal fade bd-example-modal-sm" id="mdConfirm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                              <label style="font-weight:400">¿Está seguro que desea eliminar el registro?</label>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-7">
                            <input style="font-weight:400" type="button" class="btn btn-sm btn-danger" id="btnNo" value="Cancelar" onclick="" data-dismiss="modal" />
                        </div>
                         <div class="col-md-2">
                            <input style="font-weight:400" type="button" class="btn btn-sm btn-success" id="btnYes" value="Estoy seguro!" onclick="configs.clickDelete();"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/config.js"></script>
    <script>
        var configs = new Config();
        configs.init();
    </script>
</asp:Content>
