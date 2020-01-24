<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMNotificaciones.aspx.cs" Inherits="MCWebHogar.CRM.FRMNotificaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    


    <script src="../Scripts/jquery-2.1.1.min.js"></script>
    <link href="../Styles/iosCheckbox.css" rel="stylesheet" />
    <script src="../Scripts/iosCheckbox.js"></script>

    <style type="text/css">
        /*.btn span.glyphicon {    			
	            opacity: 0;				
            }
            .btn.active span.glyphicon {				
	            opacity: 1;				
            }*/

            .False{				
	              background-color: #B40404;	
                  padding: 8px;
                  border-radius: 50%;	
                  cursor:pointer;		
            }

            .True{				

	             background-color: #04B404;		
                 padding: 8px;
                 border-radius: 50%;
                 cursor:pointer;			
            }

    </style>
    <script>
        $(document).ready(function () {

        });


    </script>

    <br /><br /><br />
            <div class="main container">
                   <h2 class="colortitulo">Automatización</h2>

                <div style="text-align:right;">
                     <asp:LinkButton ID="CMD_Nueva" runat="server" OnClick="CMD_Nueva_Click"   CssClass="btn btn-default" >
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton>

                 </div><br />

                <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                                 Reglas de trabajo
                                 <span class="icon-chevron-small-down rightBar"></span>
                             </div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse1">
                                    <div class="well" style="background-color: #fff;">
                                        <div class="row">
                                           <%-- <input type="checkbox" class="ios" checked />
                                            <input type="checkbox" class="ios"  />--%>
                                           
                                         <%-- <asp:UpdatePanel ID="UpdatePanel44" runat="server" >
              <ContentTemplate>--%>
                                          <asp:GridView ID="GV_ListaReglas" runat="server" Width="100%"  CssClass="table" 
                                                         ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                                          AutoGenerateColumns="False" 
                                                         Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                                         BorderWidth="1px" CellPadding="2" OnRowCommand="GV_ListaReglas_RowCommand"
                                                        DataKeyNames="IDRegla,Crear,Editar,Estado" OnRowDataBound="GV_ListaReglas_RowDataBound"
                                                       OnRowDeleting="GV_ListaReglas_RowDeleting" >
                                                    <Columns>
                                                       
                                                        <asp:TemplateField HeaderText="Crear" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                             <ItemTemplate>
                                                                <asp:CheckBox ID="chkCrear" runat="server" EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Crear")) %>'  OnCheckedChanged="chkCrear_CheckedChanged" AutoPostBack="true"  />
                                                             </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Editar" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                             <ItemTemplate>
                                                                <asp:CheckBox ID="chkEditar" runat="server"  EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Editar")) %>' OnCheckedChanged="chkEditar_CheckedChanged" AutoPostBack="true"  />
                                                             </ItemTemplate>
                                                        </asp:TemplateField>
                                                       
                                                       <%--<asp:BoundField DataField="NombreRegla" HeaderText="Nombre de la Regla" CssClass='<%#Convert.ToBoolean(Eval("Editar")) %>'  />--%>

                                                         <asp:TemplateField HeaderText="Nombre de la Regla">
                                                             <ItemTemplate>
                                                                  <asp:LinkButton ID="lnknotifica" runat="server" CssClass="h4"  CommandName="LNK_Notificacion" Text='<%# Eval("NombreRegla") %>' 
                                                                        CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"  ></asp:LinkButton>
                                                                   
                                                             </ItemTemplate>
                                                        </asp:TemplateField>
                                                       
                                                        
                                                         <asp:TemplateField HeaderText="Activo?">
                                                             <ItemTemplate>
                                                                 <asp:LinkButton ID="lnk" runat="server" CommandName="CHK_Estado"  CommandArgument="<%# ((GridViewRow)Container).RowIndex %>"  >
                                                                    <asp:CheckBox ID="chkEstado" runat="server" class="ios" EnableViewState="true"   Checked='<%#Convert.ToBoolean(Eval("Estado")) %>'  />
                                                                </asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                        <asp:BoundField DataField="QuienIngreso" HeaderText="Quien registró"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs"  />
                                                       
                                                        <asp:TemplateField HeaderText="" ControlStyle-Width="20"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs" >
                                                               <ItemTemplate>
                                                                  <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" 
                                                                          CommandName="Delete" ImageUrl="~/images/deletered_32.png"                                               
                                                                          OnClientClick="javascript : return confirm('Esta seguro de que quiere Desactivar este registro?');"
                                                                          Text="Delete">     
                                                                        </asp:ImageButton>
                                                               </ItemTemplate>
                                                     </asp:TemplateField>  
                                                    </Columns>
                                              </asp:GridView>
                 <%-- </ContentTemplate>
                                                  </asp:UpdatePanel>--%>
                                            <script>
                                                $(".ios").iosCheckbox();
                                            </script>
                                           
                                        </div>
                                    </div>
                                 </div>
                             </div>
                      </div>

                







               <%-- <div class="row">
                    <div class="col-md-4">
                          <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                                 Recordatorio de Embudos Vencidos
                                 <span class="icon-chevron-small-down rightBar"></span>
                             </div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse1">
                                    <div class="well" style="background-color: #fff;">
                                        <div class="row">

                                          
                                             <span class="glyphicon glyphicon-question-sign" style="color:#171680;"></span>
                                            <b>*Este servicio se ejecuta cada Lunes a las 11am.</b>

                                            <asp:GridView ID="GV_ListaEmbudo" runat="server" Width="200px"
                                                  DataKeyNames="sVendedor,Estado, Tipo" AutoGenerateColumns="false" BorderColor="White"  >
                                                    <Columns>
                                                         <asp:TemplateField HeaderText="">
                                                             <ItemTemplate>
                                                                <asp:CheckBox ID="chkAccept" runat="server" EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Estado")) %>' OnCheckedChanged="chkAccept_CheckedChanged" AutoPostBack="true"  />
                                                             </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Nombre" HeaderText="Asesores"  />
                                                       
                                                    </Columns>
                                              </asp:GridView>
                                        </div>
                                    </div>
                                 </div>
                             </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                            <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapseExample">
                                 Recordatorio de Ofertas por Monto
                                 <span class="icon-chevron-small-down rightBar"></span>
                             </div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse2">
                                    <div class="well" style="background-color: #fff;">
                                        <div class="row">

                                             <span class="glyphicon glyphicon-question-sign" style="color:#171680;"></span>
                                            <b>*Este servicio se ejecuta cada Lunes a las 11am.</b>

                                            <br />
                                            Monto de la Oferta:
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                            <asp:GridView ID="GV_PorMonto" runat="server" Width="200px"
                                                  DataKeyNames="sVendedor, Estado, Tipo" AutoGenerateColumns="false" BorderColor="White"  >
                                                    <Columns>
                                                         <asp:TemplateField HeaderText="">
                                                             <ItemTemplate>
                                                                <asp:CheckBox ID="chkAccept2" runat="server" EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Estado")) %>' OnCheckedChanged="chkAccept2_CheckedChanged" AutoPostBack="true"  />
                                                             </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Nombre" HeaderText="Asesores"  />
                                                       
                                                    </Columns>
                                              </asp:GridView>

                                        </div>
                                    </div>
                                 </div>
                             </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                          <div class="rowsPanel panel panel-primary">
                             <div class="panel-heading" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapseExample">
                                 Recordatorio de Ofertas proximas a Vencer
                                 <span class="icon-chevron-small-down rightBar"></span>
                             </div>
                             <div class="panel-body">
                                 <div class="shadowrow collapse in" id="collapse3">
                                    <div class="well" style="background-color: #fff;">
                                        <div class="row">

                                             <span class="glyphicon glyphicon-question-sign" style="color:#171680;"></span>
                                            <b>*Este servicio se ejecuta cada día a las 11am.</b>

                                            <asp:GridView ID="GV_Proximas" runat="server" Width="200px"
                                                  DataKeyNames="sVendedor,Estado,Tipo" AutoGenerateColumns="false" BorderColor="White"  >
                                                    <Columns>
                                                         <asp:TemplateField HeaderText="">
                                                             <ItemTemplate>
                                                                <asp:CheckBox ID="chkAccept3" runat="server" EnableViewState="true" Checked='<%#Convert.ToBoolean(Eval("Estado")) %>' OnCheckedChanged="chkAccept3_CheckedChanged" AutoPostBack="true"  />
                                                             </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Nombre" HeaderText="Asesores"  />
                                                       
                                                    </Columns>
                                              </asp:GridView>

                                        </div>
                                    </div>
                                 </div>
                             </div>
                       </div>
                    </div>
                </div>--%>

                

                

                




                </div>




</asp:Content>
