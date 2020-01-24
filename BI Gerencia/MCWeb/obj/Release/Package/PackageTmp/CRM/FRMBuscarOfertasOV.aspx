<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="FRMBuscarOfertasOV.aspx.cs" Inherits="MCWebHogar.CRMVertice.FRMBuscarOfertasOV" %>


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


    
     <br /><br />
             <div class="main container">
              <h2 class="colortitulo">Ofertas Recientes</h2>

                 <div style="text-align:right;">
                     <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click"   CssClass="btn btn-default" >
                        <span class="glyphicon glyphicon-plus"></span>&nbsp;Nuevo
                    </asp:LinkButton>

                 </div>
                
                
             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>
                  
                         <div class="tableresponsive"> 
                            <asp:GridView ID="DataGridOfeta"  Width="100%"  CssClass="table"  runat="server"
                                 DataKeyNames="OfertaMadre" AutoGenerateColumns="False" 
                                ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DataGridOfeta_PreRender" OnRowEditing="DataGridOfeta_RowEditing" OnRowDataBound="DataGridOfeta_RowDataBound" >
                                <Columns>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXTmadre" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_madre" runat="server" Text="Of. Madre"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_madre2" runat="server" Text='<%#Eval("NumeroOferta") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <asp:TextBox ID="TXT_Fecha" runat="server" onkeypress="return detour(event)"  Width="100%"   ForeColor="Black" placeholder="dd/mm/aaaa" ></asp:TextBox>
                                           
                                             <br />
                                            <asp:Label ID="Lbl_Fecha" runat="server" Text="Fecha"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_Fecha2" runat="server" Text='<%# Eval("Fecha", "{0:dd/MM/yyyy}") %>'></asp:Label>
                                       </ItemTemplate>     
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXToferta" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_oferta" runat="server" Text="Oferta"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_oferta2" runat="server" Text='<%#Eval("NOferta") %>'></asp:Label>
                                       </ItemTemplate>
                                           
                                    </asp:TemplateField>
                                   
                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXTArea" runat="server" onkeypress="return detour(event)" Width="100%"  MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Area" runat="server" Text="Descripción Proyecto"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Area2" runat="server" Text='<%#Eval("AreaInstalar") %>'></asp:Label>
                                       </ItemTemplate>    
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXTcliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="49"  ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="LBL_cliente" runat="server" Text="Cliente"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_cliente2" runat="server" Text='<%#Eval("sNombre") %>'></asp:Label>
                                       </ItemTemplate>      
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXTAsesor" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Asesor" runat="server" Text="Asesor"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Asesor2" runat="server" Text='<%#Eval("sDescripcion") %>'></asp:Label>
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
