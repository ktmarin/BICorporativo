<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMSUG.aspx.cs" Inherits="MCWebHogar.CRM.FRMSUG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    
    <br />
    <br />
    <div class="main container">
        <br />
        <br />
        <br />
        <div class="row">

              

            <div class="col-md-4">
         
                    <div class="form-group">
                                    <label for="CMB_tienda">Tienda:</label>
                                    <asp:DropDownList ID="CMB_tienda" class="form-control" runat="server">

                                        <asp:ListItem Value="Seleccione">Seleccione</asp:ListItem>
                                        <asp:ListItem Value="Altea Design Escazú">Altea Design Escazú</asp:ListItem>
                                        <asp:ListItem Value="Altea Design Heredia">Altea Design Heredia</asp:ListItem>
                                        <asp:ListItem Value="Altea Outlet San Sebastián">Altea Outlet San Sebastián</asp:ListItem>
                                        <asp:ListItem Value="Altea Design Tibás">Altea Design Tibás</asp:ListItem>
                                

                                    </asp:DropDownList>
                                </div>


                 <label for="TXT_TR"> TIEMPO DE REPOSICION</label>
                 <asp:TextBox ID="TXT_TR" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

            </div>


            <div class="col-md-4">
                
                
            <asp:Label ID="Label1" runat="server" Text="Fecha de Inicio"></asp:Label>
            <input type="date" class="form-control" id="fechainicio" runat="server"/> 

            <asp:Label ID="Label2" runat="server" Text="Fecha de Fin"></asp:Label>
            <input type="date" class="form-control" id="fechaFin" runat="server"/> 


            </div>


            <div class="col-md-4">
                <br />
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Generar" OnClick="Button1_Click" />
            </div>
        </div>
        <br />
        <br />
        <ul id="myTab"class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#home"> Tienda </a></li>
          <%--<li><a data-toggle="tab" href="#sal">Heredia</a></li>--%>
        </ul>
         <div class="tab-content">
             <div id="home"   class="tab-pane fade  in active" >
                  <div class="row">
                      <br />
                      <br />

                    <%--<div class="table-responsive" style="height:400px; overflow-y:auto">
                        <asp:GridView ID="GridView1" CssClass ="table" runat="server" BorderStyle="None"  Height="80px" Width="991px" AutoGenerateColumns="true">
                         
                    </asp:GridView>
                    </div>--%>


                          <div style="height:300px; overflow:auto">
                          <asp:GridView ID="GridView1" Width="100%" CssClass="table"
                                        ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                        runat="server" DataKeyNames="" AutoGenerateColumns="False"
                                        Font-Size="10" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="2" OnPreRender="GridView1_PreRender" OnRowEditing="GridView1_RowEditing" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>

                                      

                                      

                                            <%--<asp:BoundField DataField="sPedido" HeaderText="" Visible="false" />--%>

                                       

                                            <asp:TemplateField HeaderText="CodigoProducto" ItemStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <asp:TextBox ID="TXT_Producto" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Lbl_Producto" runat="server" Text="# ITEM"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_Producto2" runat="server" Text='<%#Eval("ITEM") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Descripcion" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_Descripcion" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_Descripcion" runat="server" Text="Descripcion"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_Descripcion2" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                     

                                            <asp:TemplateField HeaderText="UltimaCompra" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_UltimaCompra" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_UltimaCompra" runat="server" Text="UltimaCompra"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_UltimaCompra2" runat="server" Text='<%#Eval("UltCompra" , "{0:dd-MM-yyyy}") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                                <asp:TemplateField HeaderText="UNDingresadas" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_UNDingresadas" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_UNDingresadas" runat="server" Text="UNDingresadas"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_UNDingresadas2" runat="server" Text='<%#Eval("UNDingresadas") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            
                                                <asp:TemplateField HeaderText="SaldoCEDI" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_SaldoCEDI" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_SaldoCEDI" runat="server" Text="SaldoCEDI"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_SaldoCEDI2" runat="server" Text='<%#Eval("SaldoCEDI") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>



                                               <asp:TemplateField HeaderText="SaldoInvTienda" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_SaldoInvTienda" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_SaldoInvTienda" runat="server" Text="SaldoInvTienda"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_SaldoInvTienda2" runat="server" Text='<%#Eval("SaldoInvTienda") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="UnidadesVendidas" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_UnidadesVendidas" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_UnidadesVendidas" runat="server" Text="UnidadesVendidas"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_UnidadesVendidas2" runat="server" Text='<%#Eval("UNDVendidas") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                                <asp:TemplateField HeaderText="AVGMensual" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_AVGMensual" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_AVGMensual" runat="server" Text="AVGMensual"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_AVGMensual2" runat="server" Text='<%#Eval("AVGMensual") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                       
                                       
                                              <asp:TemplateField HeaderText="AVGDiario" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_AVGDiario" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_AVGDiario" runat="server" Text="AVGDiario"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_AVGDiario2" runat="server" Text='<%#Eval("AVGDiario") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                      
                                     
                                                  <asp:TemplateField HeaderText="CMD" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_CMD" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_CMD" runat="server" Text="CMD"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_CMD2" runat="server" Text='<%#Eval("CMD") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                            
                                                  <asp:TemplateField HeaderText="CMXD" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_CMXD" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_CMXD" runat="server" Text="CMD"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_CMXD2" runat="server" Text='<%#Eval("CMXD") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                                <asp:TemplateField HeaderText="TR" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_TR" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_TR" runat="server" Text="TR"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_TR2" runat="server" Text='<%#Eval("TR") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                                  <asp:TemplateField HeaderText="INVMINSTS" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_INVMINSTS" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_INVMINSTS" runat="server" Text="INVMINSTS"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_INVMINSTS2" runat="server" Text='<%#Eval("INVMINSTS") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                                <asp:TemplateField HeaderText="PUNTOR" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_PUNTOR" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_PUNTOR" runat="server" Text="PUNTOR"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_PUNTOR2" runat="server" Text='<%#Eval("PUNTOR") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="INVMXP" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_INVMXP" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_INVMXP" runat="server" Text="INVMXP"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_INVMXP2" runat="server" Text='<%#Eval("INVMXP") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                               <asp:TemplateField HeaderText="SUGERIDO" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <%--<asp:TextBox ID="TXT_SUGERIDO" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                                    <br />
                                                    <asp:Label ID="Lbl_SUGERIDO" runat="server" Text="SUGERIDO"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_SUGERIDO2" runat="server" Text='<%#Eval("SUGERIDO") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                        </Columns>

                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                                                    
                              
                               
                            </asp:GridView>


                    
                           </div> 



                       <br />
                        <br />
                      <%--<asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Descargar sugerido" OnClick="Button2_Click" />--%>

                         <asp:LinkButton ID="CMD_Excel" runat="server" CssClass="btn btn-success" OnClick="CMD_Excel_click">
                          Descargar a Excel&nbsp;<span class="icon-download"></span>
                         </asp:LinkButton>


                </div>
             </div>
             <div id="sal"  class="tab-pane fade">
                 <br />
                 <br />
                 <div class="table-responsive" style="height:400px; overflow-y:auto">
                    <asp:GridView ID="GridView4" runat="server" CssClass ="table"  Height="80px" Width="991px" AutoGenerateColumns="true">
                         
                    </asp:GridView>
                </div>
                 <br />
                 <br />
                 <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Text="Enviar sugerido" OnClick="Button3_Click" />
            </div>
        <br />
        <br />
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js></script>




</asp:Content>


