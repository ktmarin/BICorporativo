<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="frmUsuario.aspx.cs" Inherits="MCWebHogar.CRM.frmUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#tab_1" data-toggle="tab"><i class="fa fa-user-plus"></i>
                                <span>Mantenimiento de usuarios</span>
                            </a></li>
                        <li class="pull-right"><a onclick="usuarios.openDialogModal()" class="text-muted">Agregar <i class="fa fa-plus"></i></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab_1">
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthNombre" placeholder="Nombre" onkeypress="usuarios.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthUsuario" placeholder="Usuario" onkeypress="usuarios.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthCorreo" placeholder="Correo" onkeypress="usuarios.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthEmpresa" placeholder="Estado" onkeypress="usuarios.search();" />
                                                </th>
                                                <th>
                                                    <input type="text" class="form-control" name="name" value="" id="txthDepartamento" placeholder="Departamento" onkeypress="usuarios.search();" />
                                                </th>
                                                <th>
                                                    <input style="width: 90px" type="text" class="form-control" readonly name="name" value="" id="txthAcciones" placeholder="Acciones" onkeypress="usuarios.search();" />
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

    <input id="btnAddUser" type="button" class="btn btn-info btn-lg hidden" data-toggle="modal" data-target="#mdUsuario"/>

    <div class="modal fade" id="mdUsuario" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item active">
                                    <a class="nav-link active" id="usuario-tab" data-toggle="tab" href="#usuario" role="tab" aria-controls="usuario" aria-selected="true">Usuario</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-item nav-link disabled" id="empresas-tab"  href="#empresas" role="tab" aria-controls="empresas" aria-selected="false">Empresas</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="accesos-tab"  href="#accesos" role="tab" aria-controls="accesos" aria-selected="false" onclick="usuarios.cargarDisponibles()">Accesos</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane active" id="usuario" role="tabpanel" aria-labelledby="usuario-tab">
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Nombre</label>
                                                <input class="form-control" type="text" id="txtNombre" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Usuario</label>
                                                <input class="form-control" type="text" id="txtUsuario" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label id="lblClave">Clave</label>
                                                <input class="form-control" type="password" id="txtClave" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Correo</label>
                                                <input class="form-control" type="text" id="txtCorreo" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Foto</label>
                                                <input class="form-control" type="file" id="iFoto" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Telefono</label>
                                                <input class="form-control" type="text" id="txtTelefono" value="" />
                                            </div>
                                            <div class="form-group">
                                                <label>Estado</label>
                                                <select class="form-control" id="cmbEstado"></select>
                                            </div>
                                            <div class="form-group hidden">
                                                <label>Empresa</label>
                                                <select class="form-control" id="cmbEmpresa"></select>
                                            </div>
                                            <div class="form-group">
                                                <label>Departamento</label>
                                                <input class="form-control" type="text" id="txtDepartamento" value="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="empresas" role="tabpanel" aria-labelledby="empresas-tab" >
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" id="colet1">
                                            <label>Empresas disponibles</label>
                                        </div>
                                        <div class="col-md-6" id="colet2">
                                            <label>Empresas asignadas</label>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6" id="cole1"></div>
                                        <div class="col-md-6" id="cole2"></div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="accesos">
                                    <br />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Informes disponibles</label>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Informes asignados</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <input type="text" class="form-control" name="name" value="" id="txthInforme" placeholder="Nombre"  />
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbodyInf"></tbody>
                                            </table>
                                        </div>
                                        <div class="col-md-6">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <input type="text" class="form-control" name="name" value="" id="txthInformeA" placeholder="Nombre" />
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tbodyInfA"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-sm btn-success" id="btnGuardar" value="Guardar" onclick="usuarios.save(this)" />
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
                            <input style="font-weight:400" type="button" class="btn btn-sm btn-success" id="btnYes" value="Estoy seguro!" onclick="usuarios.clickDelete();"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../Scripts/usuarios.js">
    </script>
    <script>
        var usuarios = new Usuario();
        usuarios.init();
    </script>
</asp:Content>
