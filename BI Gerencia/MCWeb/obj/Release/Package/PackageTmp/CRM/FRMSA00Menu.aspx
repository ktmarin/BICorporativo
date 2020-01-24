<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMSA00Menu.aspx.cs" Inherits="MCWebHogar.CRM.FRMSA00Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
      <style>
        div.ajax__calendar_days table tr td{padding-right: 0px;}
        div.ajax__calendar_body{width: 240px;height:260px;}
        div.ajax__calendar_container{width: 240px;height:260px;}
        .table{ 
             overflow-x: auto;
        }

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
            // alert("prueba");
             document.getElementById("openPopDescargas").click();
             //alert("prueba2");
             return false;
         }

       </script>


     <br /><br /><br />

            <%--<div id="divCompleto" class="container">--%>
            <%--<div id="divCompleto" class="container" style="color: rgba(0,0,0,.6); overflow:hidden;">--%>

         <div class=" container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">
              <h2 class="colortitulo">SAC - Lista de Casos </h2>




  <div class="btn-group">
  

  <button type="button" class="btn btn-danger dropdown-toggle"
   data-toggle="dropdown">

    <span class="glyphicon glyphicon-plus"> PLUS</span>
      
    <span class="sr-only">Desplegar menú</span>
    </button>

  <ul class="dropdown-menu" role="menu">
    <li><a href="../CRM/FRMSA00MenuAdd.aspx">Nuevo  Caso</a></li>
    <li><a onclick="abrirPopDescargas();">Descargas</a></li>

    <%--<li class="divider"></li>--%>
    <%--<li><a href="#">Acción #4</a></li>--%>
  </ul>
</div>

           <br />  

            
             <%--    <div style="text-align:right;">
                   <asp:LinkButton ID="LinkButton15" runat="server" OnClick="Button1_Click"  CssClass="btn btn-default" > <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo </asp:LinkButton>
                  </div>

                <br />

                       <asp:UpdatePanel ID="UpdatePanel26" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                       <div style="text-align:right;">
                       <asp:LinkButton ID="LinkButton16" runat="server" CssClass="btn btn-default"  OnClientClick="abrirPopDescargas();">
                       <span class="icon-download"></span>&nbsp;Descargas
                       </asp:LinkButton>

                                </ContentTemplate>
                                    
                                </asp:UpdatePanel>--%>

                   <br />
             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>
                  
                         <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Casos"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="IDCaso" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Casos_PreRender" OnRowEditing="DTG_Casos_RowEditing" OnRowDataBound="DTG_Casos_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="IDCaso" HeaderText=""  Visible="false"  />
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXT_IDCaso" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_IDCaso" runat="server" Text="# Caso"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_IDCaso2" runat="server" Text='<%#Eval("IDCaso") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_FechaSolicitud" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_FechaSolicitud" runat="server" Text="Fecha Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaSolicitud2" runat="server" Text='<%#Eval("FechaSolicitud" , "{0:dd-MM-yyyy}") %>' ></asp:Label>
                                       </ItemTemplate>                                           
                                    </asp:TemplateField>   
                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_FechaCierre" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_FechaCierre" runat="server" Text="Fecha Cierre"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaCierre2" runat="server" Text='<%#Eval("FechaCierre" , "{0:dd-MM-yyyy}") %>' ></asp:Label>
                                       </ItemTemplate>                                           
                                    </asp:TemplateField>   
                                    
                                                                     
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_NombreCliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_NombreCliente" runat="server" Text="Nombre de Cliente"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreCliente2" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>      
                                                                  
                                <%--<asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_NombreContacto" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_NombreContacto" runat="server" Text="Nombre del Contacto"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreContacto2" runat="server" Text='<%#Eval("NombreContacto") %>'></asp:Label>
                                       </ItemTemplate>     
                                                                                
                                    </asp:TemplateField>--%>

                                             <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_EstadoSolicitud" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_EstadoSolicitud" runat="server" Text="Estado Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_EstadoSolicitud2" runat="server" Text='<%#Eval("EstadoSolicitud") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_DiasT" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_DiasT" runat="server" Text="Dias Transcurridos"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_DiasT2" runat="server" Text='<%#Eval("DiasT") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>


                                  <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Aperturado" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Aperturado" runat="server" Text="Aperturado por"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Aperturado" runat="server" Text='<%#Eval("QuienIngreso") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>




                                       <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Asignado" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Asignado" runat="server" Text="Asignado a"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Asignado2" runat="server" Text='<%#Eval("Asignado") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>




                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                          </div>
                            

                  </div>   
    
    
  <%---------------------------------------popup descargas----------------------------------%>  
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
                           

    <%----------------------------------------------fin popup descargas--------------------------------------------------------------------%>
    
    
    
    
    
    
    
      
</asp:Content>
