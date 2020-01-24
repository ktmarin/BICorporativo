<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" CodeBehind="FRMImportacion.aspx.cs" Inherits="MCWebHogar.CRM.FRMImportacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">


    <script>
        function validar() {
            var id = document.getElementById('<%= TXTIDImportacion.ClientID %>').value;

            if (id.length == 0) {
                error('Debe guardar la importación antes de agregar lineas.');
                return false;
            }
        }
    </script>



     <br /><br /><br />  
      <div id="divCompleto" class="main container">
          <br />
          <ol class="breadcrumb">
                     <li class="breadcrumb-item active">
                         
                          Proyectos 
                     </li>
                     <li class="breadcrumb-item ">
                        <b style="font-size:18px;">Información de Importación</b>
                         <%--<h3 class="colortitulo"> </h3>--%>
                     </li>
                 </ol>

          <%--<h2><asp:Label ID="LBLTituloMenu" CssClass="colortitulo" runat="server" Text="Información de Importación"></asp:Label></h2>--%>


          <div class="row">

              <div class="col-md-4">
                  <div class="row">
                   <div class="col-md-6">
                       
                       <div class="form-group">
                          
                         <h4>
                     
                        <span class="badge" style="padding: 7px; background-color: #006699;"> Oferta <span class="badge" style="background-color: #f2f2f2;">
                             <asp:Label ID="LBL_Oportunidad" CssClass="colortitulo" runat="server" ForeColor="Red" Text="#"></asp:Label></span></span>
                          </h4>
                      </div>

                       <div class="form-group">
                          Proveedor:
                          <asp:TextBox ID="TXT_Proveedor" CssClass="form-control"  runat="server"></asp:TextBox>
                      </div>

                        
                   </div>
                   <div class="col-md-6">
                        <div class="form-group">
                          ID:
                          <asp:TextBox ID="TXTIDImportacion" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                       <div class="form-group">
                          Fecha de Entrega:
                          <asp:TextBox ID="DT_FechaCierre" Enabled="true" runat="server" Width="120px" placeholder="dd/MM/yyyy"></asp:TextBox>
                          <asp:ImageButton ID="imgDT_FechaCierre" Enabled="true" ImageUrl="../images/Calendar_schedule.png" ImageAlign="Bottom" runat="server" />
                           <ajax:CalendarExtender ID="calendario1" PopupButtonID="imgDT_FechaCierre" TargetControlID="DT_FechaCierre" runat="server"  Format="dd/MM/yyyy" />

                      </div>


                       

                   </div>
                      </div>

                  <div class="col-md-12">
                      

                      <%--<div  style="height:200px; overflow:auto; color:Black;padding: 0px 10px 0px 10px;background-color:White;border-color:#CCCCCC;border-width:1px;border-style:None;font-size:9pt;width:100%;border-collapse:collapse;" >--%>
                           <asp:UpdatePanel ID="UpdatePanel12"  runat="server">
                              <ContentTemplate>                        
                                    <asp:CheckBoxList ID="CHKL_Acciones" runat="server" OnSelectedIndexChanged="CHKL_Acciones_SelectedIndexChanged" AutoPostBack="true"></asp:CheckBoxList>
                              </ContentTemplate>
                           </asp:UpdatePanel>
                       <%--</div>--%>


                      
                  </div>
                 

                  
              </div>

               <div class="col-md-8">

                    <asp:UpdatePanel ID="UpdatePanel19" runat="server" >
                                     <ContentTemplate>

                                         <asp:Button ID="CMD_AgregarLinea" runat="server" Text="Agregar Linea" CssClass="btn btn-default" OnClientClick="return validar();" OnClick="CMD_AgregarLinea_Click" />
                                         <br /><br />
                                          <asp:GridView ID="GV_Detalle" runat="server" Font-Size="10pt" Width="100%"  DataKeyNames="ID"
                                                      AutoGenerateColumns="False" ShowHeaderWhenEmpty="true" BackColor="White"
                                                      OnRowDataBound="GV_Detalle_RowDataBound"
                                                      OnRowEditing="GV_Detalle_RowEditing" OnRowUpdating="GV_Detalle_RowUpdating" 
                                                     OnRowCancelingEdit="GV_Detalle_RowCancelingEdit" OnRowDeleting="GV_Detalle_RowDeleting"  >
                                             <Columns>
                                                
                                                <asp:TemplateField HeaderText="Codigo" ItemStyle-HorizontalAlign="Center" >
                                                    <ItemTemplate>
                                                        <asp:Label ID="Lbl_Codigo" runat="server" Text='<%#Eval("Codigo") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TXT_Codigo" runat="server"   MaxLength="50" Text='<%#Eval("Codigo") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="Descripcion" ItemStyle-HorizontalAlign="Center" >
                                                    <ItemTemplate>
                                                        <asp:Label ID="Lbl_Descripcion" runat="server" Text='<%#Eval("Descripcion") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TXT_Descripcion" runat="server" MaxLength="300" Text='<%#Eval("Descripcion") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="Color" ItemStyle-HorizontalAlign="Center" >
                                                    <ItemTemplate>
                                                        <asp:Label ID="Lbl_Color" runat="server" Text='<%#Eval("Color") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TXT_Color" runat="server" MaxLength="50"  Text='<%#Eval("Color") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="Cant." ItemStyle-HorizontalAlign="Center" >
                                                    <ItemTemplate>
                                                        <asp:Label ID="Lbl_Cantidad" runat="server" Text='<%#Eval("Cantidad") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TXT_Cantidad" runat="server" MaxLength="15" onKeyPress="return soloNumerosCP(event,this)" Text='<%#Eval("Cantidad") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="Unidad" ItemStyle-HorizontalAlign="Center" >
                                                    <ItemTemplate>
                                                        <asp:Label ID="Lbl_Unidad" runat="server" Text='<%#Eval("Unidad") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TXT_Unidad" runat="server" MaxLength="50" Text='<%#Eval("Unidad") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                </asp:TemplateField>

                                               <asp:TemplateField ControlStyle-Width="25">
                                                      <ItemTemplate>
                                                           <asp:ImageButton ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" ImageUrl="~/images/editar.gif" Width="5" />
                                                      </ItemTemplate>
                                                     <EditItemTemplate>
                                                            <asp:ImageButton ID="btn_Update" runat="server" Text="Update" CommandName="Update" ImageUrl="~/images/accept-32.png" />
                                                            <asp:ImageButton ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" ImageUrl="~/images/Cancel2-32.png" />
                                                      </EditItemTemplate>
                                                     <ControlStyle Width="25px" />
                                                </asp:TemplateField>
                        
                                                <asp:TemplateField HeaderText="" ControlStyle-Width="25">
                                                        <ItemTemplate>
                                                            <asp:ImageButton ID="lnkDelete" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/deletered_32.png"
                                                               OnClientClick="javascript : return confirm('Esta seguro de que quiere eliminar este registro?');"
                                                                  Text="Delete"></asp:ImageButton>
                                                         </ItemTemplate>
                                                 </asp:TemplateField>

                                             </Columns>
                                        </asp:GridView>

                                     </ContentTemplate>
                                 </asp:UpdatePanel>

                   <br /><br />
                      <div class="form-group">
                          Observaciones:
                          <asp:TextBox ID="TXT_Observaciones" CssClass="form-control"  Rows="5" TextMode="MultiLine" runat="server"></asp:TextBox>
                      </div>

              </div>


          </div>
                       

      </div>

     <div class="footerControles">
                <div class="main container" style="background-color:rgba(0,0,0,.6);border:0;padding: 3px;text-align: center;">
                    <asp:LinkButton ID="CMDRegresar" runat="server" CssClass="btn btn-warning" OnClick="CMDRegresar_Click" >Regresar al proyecto</asp:LinkButton>

                     <asp:LinkButton ID="CMDGuardar" runat="server" CssClass="btn btn-success" OnClick="CMDGuardar_Click">Guardar</asp:LinkButton>

                 </div>
         </div>


</asp:Content>
