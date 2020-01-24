<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" EnableSessionState="True"  EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="FRMCR40Menu.aspx.cs" Inherits="MCWebHogar.CRM.FRMCR40Menu" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <style>
        div.ajax__calendar_days table tr td{padding-right: 0px;}
        div.ajax__calendar_body{width: 240px;height:260px;}
        div.ajax__calendar_container{width: 240px;height:260px;}
        
    </style>

    <script type="text/javascript">

        function detour2(e) {
            alert('si');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                alert('listo2');
                $('#CMD_BuscarVentaDirecta').click();
                alert('listO3');
                document.getElementById("CMD_SearchProdPcgraf").click();
                alert('listo');
            }
        }
            function KeyPressed(e) {
                //Get the Key Code
                //alert('test pia');
                var code = (e.keyCode ? e.keyCode : e.which);
                if (code == 13) { //Enter keycode
                    //alert('test pia2222');
                    //$("[id*='CMD_Ir']").click();
                    //alert('test pia2');
                    doclick();
                }
            }
            function KeyPressed2(e) {
                //Get the Key Code
                doclick();
                    //alert('test pia2222');
                    //$("[id*='CMD_Ir']").click();
                    //alert('test pia2');

                }
            
        $(function () {

            $('#popCelulas').dialog({
                autoOpen: false,
                modal: true,
                width: 700,
                Height: 200,
                title: 'Asignación de Vendedores a Celulas',
                buttons: {
                    "Cerrar": function () {
                        $(this).dialog("close");
                    }
                },
                open: function (type, data) {
                    $(this).parent().appendTo("form");
                    
                }
            });
        });

        function doclick() {
            __doPostBack('Btn_Buscar', '');
        }

        function detour(e) {
            var key = window.Event ? e.which : e.keyCode
            if (key == 13) {
                //alert('asdasd');
                doclick();
            }
        }

        function openCelulas() {
            $('#popCelulas').dialog('open');
            return false;
        };

        function closeCelulas() {
            $('#popCelulas').dialog('close');
            return false;
        };

    </script>



    <br />
    <br />
    <br />

    <div class=" container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">
    <%--<div class="main container">--%>
        
                                  <%--  <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode=" Conditional">

                                        <ContentTemplate>
                                           --%>
        <h2 class="colortitulo">CRM&nbsp; -&nbsp; Todas las cotizaciones</h2>

        <div class="row">
            <div class="col-md-4">
                    <label>Ver:</label>
                         <table>
                             <tr>
                                 <td>
                                     <asp:DropDownList ID="CMB_BusquedaRapida" class="form-control" runat="server">
                                         <asp:ListItem Value="Proyecto hoy">Cotización de hoy</asp:ListItem>
                                         <asp:ListItem Value="Proyectos recientemente mostrados">Cotización recientemente mostradas</asp:ListItem>
                                         <asp:ListItem Value="Proyectos recientemente Modificados">Mis Cotizaciones Modificadas</asp:ListItem>
                                     </asp:DropDownList></td>
                                 <td>
                                     <asp:Button ID="CMD_Ir" runat="server" Text="Ir"  CssClass="btn btn-default active" UseSubmitBehavior="false" OnClick="CMD_Ir_Click" /></td>
                             </tr>
                         </table>
                        <%-- <br />--%>
                     </div>

            
            <div class="col-md-8">

                <%-- <asp:LinkButton ID="CMD_celulas" runat="server" OnClientClick="return openCelulas();"   CssClass="btn btn-default"  style="float:right;">
                                <span class="icon-users"></span>
                            </asp:LinkButton>--%>
                <asp:LinkButton ID="LinkButton15" runat="server" OnClick="btnNuevo_Click" CssClass="btn btn-default" Style="float: right;">
                                <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                </asp:LinkButton>

            </div>

        </div>
        <br />
        <br />
        <%--<br />--%>
        <asp:GridView ID="DTG_Oportunidad" Width="100%" runat="server" DataKeyNames="IDOportunidad,Moneda" AutoGenerateColumns="False" Style="border-radius: 4px;"
            CssClass="table" ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
            OnRowDataBound="DTG_Oportunidad_RowDataBound" Font-Size="9" BackColor="White"
            BorderColor="#DAD9D8" BorderStyle="None"
            BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Oportunidad_PreRender"
            OnRowEditing="DTG_Oportunidad_RowEditing" >
            <Columns>

                <asp:BoundField DataField="IDOportunidad" HeaderText="IDOportunidad" Visible="false" />


                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_IDproforma" runat="server" onkeypress="return detour(event)" MaxLength="35" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_IDproforma" runat="server" Text="ID Oportunidad"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_IDproforma2" runat="server" Text='<%#Eval("IDOportunidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_NombreOportunidad" runat="server" onkeypress="return detour(event)" MaxLength="35" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_NombreOportunidad" runat="server" Text="PROFORMA"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_NombreOportunidad2" runat="server" Text='<%#Eval("NombreOportunidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_MontoOportunidad" runat="server" onkeypress="return detour(event)" MaxLength="99" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_MontoOportunidad" runat="server" Text="IMPORTE"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_MontoOportunidad2" runat="server" Text='<%#Eval("MontoOportunidad") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>

                <%--<asp:TemplateField HeaderText="" Visible="false">
                                        <HeaderTemplate>
                                            
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Correo") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>--%>
              
                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_FechaCierre" runat="server" onkeypress="return detour(event)" Width="100%" ForeColor="Black" placeholder="dd/mm/aaaa"></asp:TextBox>

                        <br />
                        <asp:Label ID="Lbl_FechaCierre" runat="server" Text="FECHA DE CIERRE"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_FechaCierre2" runat="server" Text='<%#Eval("FechaCierre" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_NombreCliente" runat="server" onkeypress="return detour(event)" MaxLength="30" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_NombreCliente" runat="server" Text="NOMBRE DE EMPRESA"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_NombreCliente" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>

             <%--   <asp:TemplateField HeaderText="" Visible="true">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>--%>

                <asp:TemplateField HeaderText="Comentario" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                    <HeaderTemplate>
                        <asp:TextBox ID="TXT_NombreVendedor" runat="server" onkeypress="KeyPressed(event)" MaxLength="100" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                        <br />
                        <asp:Label ID="Lbl_NombreVendedor" runat="server" Text="VENDEDOR"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_NombreVendedor2" runat="server" Text='<%#Eval("NombreVendedor") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>
                  <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                    <HeaderTemplate>
                       <div class="form-group">
                                    <asp:DropDownList ID="CMB_Fase" class="form-control" onchange="KeyPressed2(event)" runat="server"> <%--onkeypress="KeyPressed(event)" --%>
                                         <%--    <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                             <asp:ListItem Value="Asignado">Asignado</asp:ListItem>
                                             <asp:ListItem Value="Contactado">Contactado</asp:ListItem>
                                                <asp:ListItem Value="Atendido">Atendido</asp:ListItem>
                                                <asp:ListItem Value="">Vendido</asp:ListItem>
                                                <asp:ListItem Value="No Vendido">No Vendido</asp:ListItem>
                                                <asp:ListItem Value="Remedido">Remedido</asp:ListItem>
                                               <asp:ListItem Value="Diseñado">Diseñado</asp:ListItem>
                                              <asp:ListItem Value="Enviado Fabrica">Enviado Fabrica</asp:ListItem>
                                                <asp:ListItem Value="Listo para Instalar">Listo para Instalar</asp:ListItem>
                                                <asp:ListItem Value="Entregado">Entregado</asp:ListItem>--%>
                                    </asp:DropDownList>
                            </div>
                        <asp:Label ID="Lbl_FASE" runat="server" Text="FASE"></asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_FASE2" runat="server" Text='<%#Eval("Fase") %>'></asp:Label>
                    </ItemTemplate>

                </asp:TemplateField>


            </Columns>

            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <RowStyle ForeColor="#000000" />
            <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />


        </asp:GridView>


                                        <%--           </ContentTemplate>

                                         
                                    </asp:UpdatePanel>--%>

    </div>


    <div id="popCelulas" style="display: none;">
        <asp:UpdatePanel ID="UpdatePanel39" runat="server">
            <ContentTemplate>

                <table style="width: 600px">
                    <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="ddlfiltro" runat="server" CssClass="ddlclass">
                                <asp:ListItem Value="1">Nombre</asp:ListItem>
                                <asp:ListItem Value="2">Código</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TXT_Valor" runat="server" CssClass="textboxpeqSearch" Width="200px"></asp:TextBox>
                            <asp:LinkButton ID="CMD_BuscarVendedor" runat="server" OnClick="CMD_BuscarVendedor_Click" CssClass="btn btn-default">
                            <span class="glyphicon glyphicon-search"></span>
                            </asp:LinkButton>


                        </td>

                    </tr>
                    <tr>
                        <td>
                            <div style="overflow: auto; height: 300px;">
                                <asp:GridView ID="DTG_Vendedores" runat="server" Width="300px" AutoGenerateColumns="false"
                                    DataKeyNames="Codigo" OnSelectedIndexChanging="DTG_Vendedores_SelectedIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="Codigo" HeaderText="Código" />
                                        <asp:BoundField DataField="NombreVendedor" HeaderText="Nombre" />
                                        <asp:CommandField ButtonType="Button" SelectText="Ver" ControlStyle-CssClass="btn btn-sm btn-primary" ShowSelectButton="True" />

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </td>
                        <td>

                            <div style="overflow: auto; height: 300px;">
                                <asp:GridView ID="DTG_Celulas" runat="server" Width="200px"
                                    DataKeyNames="Seleccion,IDGrupo,ID,Grupo" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkAccept" runat="server" EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Seleccion")) %>' OnCheckedChanged="chkAccept_CheckedChanged" AutoPostBack="true" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Grupo" HeaderText="Nombre" />
                                        <%--<asp:BoundField DataField="IDGrupo" HeaderText="cod" />
                                <asp:BoundField DataField="ID" HeaderText="ID" />--%>
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <asp:Label ID="lblcodigo" runat="server" Text="0" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>


            </ContentTemplate>
        </asp:UpdatePanel>
    </div>

</asp:Content>
