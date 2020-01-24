<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMMenuGV00.aspx.cs" Inherits="MCWebHogar.Vehiculos.FRMMenuGV00" MasterPageFile="~/SiteGestVehicular.Master"  %>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>--%>
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

        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';

            //$("#Content_CMD_Guardar").click(function () {
            //    $("#divCompleto").addClass("bloqueo container body-content");
            //});

            return false;
        }

        function openmodalmodificarcliente() {
            document.getElementById('fade').style.display = 'block';
            document.getElementById('FormModificarCliente').style.display = 'block';
            return false;
        }



    </script>

         <!-- base semi-transparente -->
        <div id="fade" class="overlay" onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none'"></div>
	    <!-- fin base semi-transparente -->
        <div id="popmsj" class="popupnotificacion">
	       <a  title="Cerrar" class="close" id="cerrarp" href = "javascript:void(0)" onclick = "document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
		        <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
		       <label id="lblmsj" style="font-weight:200;"></label>                  
		</div>  
        
         <br /><br /><br />
             <div class="main container">
             
                    <div style="text-align: left center ; background-image:url(../images/Tool-Box-48.png); height:65px; background-position:left;  background-repeat:no-repeat; padding-top:1px; padding-left:55px;" >

                        
                 <%-- <asp:Image ID="aa" ImageUrl="~/images/Tool-Box-48.png" runat="server" />--%>
                         <h2 class="colortitulo">Solicitud de Mantenimiento</h2>

                  </div>
                  <div style="text-align:left;">
                   
                   <asp:LinkButton ID="LinkButton15" runat="server" CssClass="btn btn-default" OnClick="LinkButton15_Click" > <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo </asp:LinkButton>
                  </div>
              <br />

             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" />
                  
                        <%-- <div class="tableresponsive">  --%>

<%--                  OnPreRender="DTG_Clientes_PreRender"
                                 OnRowEditing="DTG_Clientes_RowEditing" 
                                 OnRowDataBound="DTG_Clientes_RowDataBound"--%>


                            <asp:GridView ID="DTG_Solicitudes"  CssClass="table"  runat="server"
                                 DataKeyNames="sCodigo" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" 
                                  ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 >
                                <Columns>

                                     <asp:BoundField DataField="sCodigo" HeaderText="sCodigo"  Visible="false"  />

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Creacion" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="15"  ForeColor="Black" placeholder="dd/mm/aaaa" ></asp:TextBox>
                                        
                                             <br />
                                            <asp:Label ID="Lbl_FechaCreacion" runat="server" Text="Fecha Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaCreacion2" runat="server" Text='<%#Eval("FechaCreacion" , "{0:dd/MM/yyyy}") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                          
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_sCedula_Juridica" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sCedula_Juridica" runat="server" Text="Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sCedula_Juridica2" runat="server" Text='<%#Eval("sCedula_Juridica") %>'></asp:Label>
                                       </ItemTemplate>    
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_sNombre" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="30" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sNombre" runat="server" Text="Nombre de la empresa"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_sNombre2" runat="server" Text='<%#Eval("sNombre") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                              

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_sTelefono" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sTelefono" runat="server" Text="Departamento"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sTelefono2" runat="server" Text='<%#Eval("sTelefono") %>'></asp:Label>
                                       </ItemTemplate>      
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_sDireccion_E_Mail" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sDireccion_E_Mail" runat="server" Text="Usuario Solicita"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sDireccion_E_Mail2" runat="server" Text='<%#Eval("sDireccion_E_Mail") %>'></asp:Label>
                                       </ItemTemplate>
                                            
                                    </asp:TemplateField>
                                     
                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Propietario" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="30"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Propietario" runat="server" Text="Comentarios"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Propietario2" runat="server" Text='<%#Eval("Propietario") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="visible-lg" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_sComodin30" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="20"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_sComodin30" runat="server" Text="Estado"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_sComodin302" runat="server" Text='<%#Eval("sComodin30") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                        </div>
                            

                 <%-- </div>   --%>  



</asp:Content>