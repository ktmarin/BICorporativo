<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMCR01LeadMenu.aspx.cs" 
    Inherits="MCWebHogar.CRMVertice.FRMCR01LeadMenu" EnableEventValidation="false"  %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <style>
        div.ajax__calendar_days table tr td{padding-right: 0px;}
        div.ajax__calendar_body{width: 240px;height:260px;}
        div.ajax__calendar_container{width: 240px;height:260px;}
        
    </style>

    <script type="text/javascript">
        
        
        function doclick() {
            __doPostBack('Btn_Buscar', '');
        }

        function detour(e) {
            var key = window.Event ? e.which : e.keyCode
            if( key == 13){
                doclick();
            }
        }

    </script>

         <br /><br /><br />
             <div class="main container">
              <h2 class="colortitulo">Leads Recientes</h2>
              
                 <div class="row">
                     <div class="col-md-4">
                         <label>Ver:</label>
                         <table>
                             <tr>
                                 <td>
                                     <asp:DropDownList ID="CMB_BusquedaRapida" class="form-control" runat="server">
                                         <asp:ListItem Value="Candidatos de hoy">Candidatos de hoy</asp:ListItem>
                                         <asp:ListItem Value="Candidatos recientemente mostrados">Candidatos recientemente mostrados</asp:ListItem>
                                         <asp:ListItem Value="Mis candidatos No leídos">Mis candidatos No leídos</asp:ListItem>
                                         <asp:ListItem Value="Candidatos no Contactados">Mis candidatos No Contactados</asp:ListItem>
                                         <asp:ListItem Value="Todos Los Abiertos">Todos Los Abiertos</asp:ListItem>
                                     </asp:DropDownList></td>
                                 <td>
                                     <asp:Button ID="CMD_Ir" runat="server" Text="Ir" OnClick="CMD_Ir_Click" CssClass="btn btn-default active" UseSubmitBehavior="false" /></td>
                             </tr>
                         </table>
                         <br />

                         <asp:LinkButton ID="CMD_Excel" runat="server" CssClass="btn btn-default active" OnClick="CMD_Excel_Click">
                                                      Excel&nbsp;<span class="icon-download"></span>
                         </asp:LinkButton>
                     </div>
                     <div class="col-md-8">
                         <asp:LinkButton ID="LinkButton15" runat="server" OnClick="btnNuevo_Click" CssClass="btn btn-default" Style="float: right;">
                                <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo Lead
                         </asp:LinkButton>
                     </div>
                 </div>
                     <br />
                     <br />
                     
                <div class="tableresponsive"> 
                            <asp:GridView ID="DTGLeads"  width="100%"  runat="server" DataKeyNames="IDLead" AutoGenerateColumns="False" style="border-radius:4px;"
                                 CssClass ="table"  ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 OnRowDataBound="DTGLeads_RowDataBound" Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None" 
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTGLeads_PreRender" OnRowEditing="DTGLeads_RowEditing" >
                                <Columns>

                                     <asp:BoundField DataField="IDLead" HeaderText="IDLead"  Visible="false"  />
                                     <%-- Vendedor --%>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Propietario" runat="server" onkeypress="return detour(event)" MaxLength="30" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Propietario" runat="server" Text="Nombre Vendedor"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Propietario2" runat="server" Text='<%#Eval("Propietario") %>'></asp:Label>
                                       </ItemTemplate>
                                     </asp:TemplateField>
                                    <%-- Nombre --%>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" >
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXT_Nombre" runat="server" onkeypress="return detour(event)" MaxLength="35" Width="100%"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Nombre" runat="server" Text="Nombre del Cliente"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Nombre2" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>
                                    <%-- Estado Lead--%>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_EstadoLead" runat="server" onkeypress="return detour(event)" MaxLength="50"  Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_EstadoLead" runat="server" Text="Estado Lead"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_EstadoLead2" runat="server" Text='<%#Eval("EstadoLead") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                    <%-- OrigenLead --%>
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_OrigenLead" runat="server" onkeypress="return detour(event)" MaxLength="99" Width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_OrigenLead" runat="server" Text="Origen del Lead"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_OrigenLead2" runat="server" Text='<%#Eval("OrigenLead") %>'></asp:Label>
                                       </ItemTemplate>
                                      
                                    </asp:TemplateField>
                                      <%-- Comentario --%>
                                     <asp:TemplateField HeaderText="Comentario" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Comentario" runat="server" onkeypress="return detour(event)" MaxLength="100" width="100%" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Comentario" runat="server" Text="Comentario"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Comentario2" runat="server" Text='<%#Eval("Comentario") %>'></asp:Label>
                                         </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                    <%-- Fecha  --%>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_FechaCreacion" runat="server" onkeypress="return detour(event)" Width="100%"  ForeColor="Black" placeholder="dd/mm/aaaa" ></asp:TextBox>
                                            
                                            <br />
                                            <asp:Label ID="Lbl_FechaCreacion" runat="server" Text="Fecha de Creación"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaCreacion2" runat="server" Text='<%#Eval("FechaIngreso" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>
                                  
                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />


                            </asp:GridView>
                          </div> 

                  </div>     
</asp:Content>
