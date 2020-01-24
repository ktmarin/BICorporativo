<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="FRMET01.aspx.cs" Inherits="MCWebHogar.CRM.Encuestas.FRMET01" %>
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

        

              <h2 class="colortitulo">SAC - Encuestas Calificaciones</h2>
        <h5>
            Si desea aperturar un caso, precione doble click sobre la celda
        </h5>

<%--    <td align="right">
                        <h4>
                            <span class="badge" style="padding: 7px; background-color: #006699;"><span class="badge" style="background-color: #f2f2f2;">
                               <asp:Label ID="LBL_Leg" CssClass="colortitulo" runat="server" ForeColor="Red" Text="Si desea aperturar un caso, precione doble click sobre la celda"></asp:Label> 
                        </h4>
                    </td>--%>
            
                <%-- <div style="text-align:right;">
                   <asp:LinkButton ID="LinkButton15" runat="server" OnClick="Button1_Click"  CssClass="btn btn-default" >  
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton>
                  </div>--%>

        <asp:LinkButton ID="CMD_Excel" runat="server" CssClass="btn btn-danger" OnClick="CMD_Excel_Click">
        Descargar&nbsp;<span class="icon-download"></span>
        </asp:LinkButton>

                   <br />
         <br />


             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>

            

                  
                         <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Pedidos"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="sFactura,nombrecliente,pregunta5" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Pedidos_PreRender" OnRowEditing="DTG_Pedidos_RowEditing" OnRowDataBound="DTG_Pedidos_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="sPedido" HeaderText=""  Visible="false"  />

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXT_sPedido" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sPedido" runat="server" Text="# Factura"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_sPedido2" runat="server" Text='<%#Eval("sFactura") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_cliente" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_cliente" runat="server" Text="# Cliente"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_cliente2" runat="server" Text='<%#Eval("nombrecliente") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_dFecha" runat="server" onkeypress="return detour(event)" Width="100%"  MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_dFecha" runat="server" Text="Fecha"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_dFecha2" runat="server"  Text='<%#Eval("fecha" , "{0:dd-MM-yyyy}") %>'></asp:Label>
                                       </ItemTemplate>    
                                    </asp:TemplateField>

                                   

                                      <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Asesor" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Asesor" runat="server" Text="Asesor"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Asesor" runat="server" Text='<%#Eval("Asesor") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>


                                      <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Tienda" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Tienda" runat="server" Text="Tienda"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Tienda" runat="server" Text='<%#Eval("Tienda") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_calificacion" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="49"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_calificacion" runat="server" Text="Calificación"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_calificacion2" runat="server" Text='<%#Eval("pregunta1") %>'></asp:Label>
                                       </ItemTemplate>      
                                    </asp:TemplateField>



                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_p5" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_p5" runat="server" Text="Comentario"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_p5" runat="server" Text='<%#Eval("pregunta5") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>
                                    
                               <%--     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_calificacion" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_calificacion" runat="server" Text="Calificación"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_calificacion2" runat="server" Text='<%#Eval("sNombre_Cliente") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>--%>
                                   
                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                          </div>
                            

                  </div>     

</asp:Content>
