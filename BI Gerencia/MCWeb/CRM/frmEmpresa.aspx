<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="frmEmpresa.aspx.cs" Inherits="MCWebHogar.CRM.frmEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <section class="content">
        <div class="row">
            <div class="col-md-12">
               <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab_1" data-toggle="tab"><i class="fa fa-building"></i>
                                <span>Mantenimiento de empresas</span>
                            </a></li>
                        <li class="pull-right"><a onclick="empresas.openDialogModal()" class="text-muted" style="cursor:pointer;">Agregar <i class="fa fa-plus"></i></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="row">
                                
                                <div class="col-md-12">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthEmpresa" placeholder="Empresa" onkeypress="empresas.search();"/>
                                                </th>   
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthNombre" placeholder="Nombre" onkeypress="empresas.search();" />
                                                </th>   
                                                 <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthIngreso" placeholder="Ingreso" onkeypress="empresas.search();"/>
                                                </th>
                                                 <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthFecha" placeholder="Fecha"  onkeypress="empresas.search();"/>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tbodyEm"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <input id="btnAddUser" type="button" class="btn btn-info btn-lg hidden" data-toggle="modal" data-target="#mdUsuario"/>

    <div class="modal fade" id="mdUsuario" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item active">
                                    <a class="nav-link active" id="empresa-tab" data-toggle="tab" href="#empresa" role="tab" aria-controls="empresa" aria-selected="true">Empresa</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane active" id="usuario" role="tabpanel" aria-labelledby="usuario-tab">
                                    <br />
                                    <div class="row">
                                       
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>Empresa</label>
                                                <input class="form-control" type="text" id="txtEmpresa" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Nombre</label>
                                                <input class="form-control" type="text" id="txtNombre" value="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-sm btn-success" id="btnGuardar" value="Guardar" onclick="empresas.save(this)" />
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
                            <input style="font-weight:400" type="button" class="btn btn-sm btn-success" id="btnYes" value="Estoy seguro!" onclick="empresas.clickDelete();"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../Scripts/empresa.js">
    </script>
    <script>
        var empresas = new Empresa();
        empresas.init();
    </script>
</asp:Content>
