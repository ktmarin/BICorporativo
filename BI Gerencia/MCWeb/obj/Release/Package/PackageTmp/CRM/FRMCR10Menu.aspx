<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMCR10Menu.aspx.cs" EnableEventValidation="false"  Inherits="MCWebHogar.CRMVertice.FRMCR10Menu" %>
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
             if (key == 13) {
                 doclick();
             }
         }
       </script>


     <br /><br /><br />
             <div class="main container">
              <h2 class="colortitulo">Contactos Recientes</h2>

            
                 <div style="text-align:right;">
                   <asp:LinkButton ID="LinkButton15" runat="server" OnClick="Button1_Click"   CssClass="btn btn-default" >
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton>
                  </div>
                   <br />
             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>
                  
                         <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Contacto"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="IDContacto" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Contacto_PreRender" OnRowEditing="DTG_Contacto_RowEditing" OnRowDataBound="DTG_Contacto_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="IDContacto" HeaderText=""  Visible="false"  />

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXT_NombreContacto" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_NombreContacto" runat="server" Text="Nombre Contacto"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreContacto2" runat="server" Text='<%#Eval("NombreContacto") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Telefono" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Telefono" runat="server" Text="Telefono"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_Telefono2" runat="server" Text='<%#Eval("Telefono") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Correo" runat="server" onkeypress="return detour(event)" Width="100%"  MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Correo" runat="server" Text="Correo electrónico"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Correo2" runat="server" Text='<%#Eval("Correo") %>'></asp:Label>
                                       </ItemTemplate>    
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Departamento" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="49"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Departamento" runat="server" Text="Departamento"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Departamento2" runat="server" Text='<%#Eval("Departamento") %>'></asp:Label>
                                       </ItemTemplate>      
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_NombreCliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_NombreCliente" runat="server" Text="Nombre de Empresa"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreCliente2" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
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
