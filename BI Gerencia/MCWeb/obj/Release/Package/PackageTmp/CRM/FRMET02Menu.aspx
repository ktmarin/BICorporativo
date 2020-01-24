<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="FRMET02Menu.aspx.cs" Inherits="MCWebHogar.CRM.Encuestas.FRMET02Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
         <style>
        div.ajax__calendar_days table tr td{padding-right: 0px;}
        div.ajax__calendar_body{width: 240px;height:260px;}
        div.ajax__calendar_container{width: 240px;height:260px;}
        thead tr th {
            text-align:center;
        }
        
    </style>

     <script type="text/javascript">


         function doclick() {
             __doPostBack('Btn_Buscar', '');
         }

         function detour(e) {
             var key = window.Event ? e.which : e.keyCode
             if (key == 13) {
                 doclick();
             }
         }


         function abrirPopDescargas() {
             //alert("prueba");
             document.getElementById("openPopDescargas").click();
             //alert("prueba2");
             return false;
         }


         function mostraralertifywarning(msj) {
             alertify.notify(msj, 'warning', 5, null);
         }

         function mostraralertifysuccess(msj) {
             alertify.notify(msj, 'success', 5, null);
         }

         function mostraralertifyerror(msj) {
             alertify.notify(msj, 'error', 5, null);
         }

       </script>


     <br />
    <br />
    <br />
    <div class=" container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">
             <%--<div class="main container">--%>
              <h2 class="colortitulo">SAC - Resultados de Encuestas CJ</h2>

            
                 <div style="text-align:right;">
                   <%--<asp:LinkButton ID="LinkButton15" runat="server" OnClick="Button1_Click"  CssClass="btn btn-default" >  
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton>--%>

             
                       <asp:UpdatePanel ID="UpdatePanel26" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                       <div style="text-align:left;">
                       <asp:LinkButton ID="LinkButton16" runat="server" CssClass="btn btn-danger"  OnClientClick="abrirPopDescargas();">
                       <span class="icon-download"></span>&nbsp;Descargas
                       </asp:LinkButton>

                                </ContentTemplate>
                                    
                                </asp:UpdatePanel>

                  </div>
                   <br />

             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>
                  
                         <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Pedidos"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="sPedido" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 text-align ="Center"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Pedidos_PreRender" OnRowEditing="DTG_Pedidos_RowEditing" OnRowDataBound="DTG_Pedidos_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="sPedido" HeaderText=""  Visible="false"  />

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <%--<asp:TextBox ID="TXT_sPedido" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_sPedido" runat="server" Text="# Pedido"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sPedido2" runat="server" Text='<%#Eval("sPedido") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_sFactura" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_sFactura" runat="server" Text="# Factura"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_sFactura2" runat="server" Text='<%#Eval("sFactura") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_dFecha" runat="server" onkeypress="return detour(event)" Width="100%"  MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_dFecha" runat="server" Text="Fecha" ></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_dFecha2" runat="server"  Text='<%#Eval("dFecha" , "{0:dd-MM-yyyy}") %>'></asp:Label>
                                       </ItemTemplate>    
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_sNombre_Cliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_sNombre_Cliente" runat="server" Text="Nombre de Cliente"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sNombre_Cliente2" runat="server" Text='<%#Eval("sNombre_Cliente") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_sCodigo_Cliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="49"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_sCodigo_Cliente" runat="server" Text="Quien Ingreso" ></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sCodigo_Cliente2" runat="server" Text='<%#Eval("Usuario") %>'></asp:Label>
                                       </ItemTemplate>      
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_respuesta" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_respuesta" runat="server" Text="¿Qué recomendaría usted para mejorar nuestro servicio?" ></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_respuesta2" runat="server" Text='<%#Eval("Respuesta") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>

                                  
                                    
                                   
                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                          </div>
                            

                  </div>     



    
     <button type="button" id="openPopDescargas" data-toggle="modal" data-target="#Pop_Descargas" style="visibility:hidden;">open</button>


     <div class="modal fade" id="Pop_Descargas" tabindex="-1" role="dialog" aria-labelledby="popDescarga" aria-hidden="true">
                                            
              
     <div class="modal-dialog modal- btn-group-sm">
     <div class="modal-content">
     <div class="modal-header">

       <h4 class="modal-title">Descargar</h4>            
          </div>        
                  
              <div class="modal-body">   
                     
                       
                  <table class="trans_table" >
                       <tr >
                       <td colspan="3" align="center" >
                               
                           
                           
                          <asp:LinkButton ID="CMD_Excel" runat="server" CssClass="btn btn-primary" OnClick="CMD_Excel_Click">
                          Top Excel&nbsp;<span class="icon-download"></span>
                           </asp:LinkButton>

                           <asp:LinkButton ID="CMD_Excel2" runat="server" CssClass="btn btn-primary" OnClick="CMD_Excel2_Click">
                            BD a Excel&nbsp;<span class="icon-download"></span>
                           </asp:LinkButton>                                          

                       </td>
                       </tr>
                       </table> 
      
                      
 
          </div>
          <div class="modal-footer">
                            
         <asp:Button ID="BTNCerrar" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

          </div>
           </div>
             </div>
                                           

            </div>
                           

          







</asp:Content>
