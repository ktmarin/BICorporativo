<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableSessionState="True" EnableEventValidation="false" CodeBehind="FRMSA01.aspx.cs" Inherits="MCWebHogar.CRM.FRMSA01" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <meta name="viewport" content="width=device-width" />


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




        function activarloading() {

            //document.getElementById('fade2').style.height = document.getElementsByTagName('body').style.height ;
   
            document.getElementById('MenuMuestreados').style.display = 'block';
            document.getElementById('MenuMuestreo').style.display = 'block';


        }


        function desactivarloading() {

         
            document.getElementById('MenuMuestreados').style.display = 'block';
            document.getElementById('MenuMuestreo').style.display = 'block';


            return false;
        }



    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

     

    <script type="text/javascript">

   
    </script>


    <br />
    <br />
    <br />

    
                                

         <div class="container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">
        <%--  </div> --%>

                 
<%----------------------------------Inicio Panel 1 muestreo------------------------------------------------------------------------------%>

       <h3><asp:Label ID="lbltitulo" runat="server" Text="SAC - Control de Calidad - Muestreo"></asp:Label>
         </h3>       

   <div id ="MenuMuestreo" class="rowsPanel panel panel-primary">
              
    
          
             <div class="panel-heading" data-toggle="collapse" data-target="#collapse1">
                Muestreo<span class="icon-chevron-small-down rightBar"></span> :</div>



            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse1">
                    <div class="well">
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>

                                 <asp:LinkButton ID="LinkButton15" runat="server" OnClick="Button1_Click"  CssClass="btn btn-danger btn-group-sm" > 
                                 <span class="glyphicon glyphicon-plus"></span>&nbsp;Generar Muestreo </asp:LinkButton>

                                <br />
                                <br />
                             
                                

                                <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Muestra"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="IDCaso" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Muestra_PreRender" OnRowEditing="DTG_Muestra_RowEditing" OnRowDataBound="DTG_Muestra_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="IDCaso" HeaderText=""  Visible="false"  />
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                            <%--<asp:TextBox ID="TXT_IDCaso" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_IDCaso" runat="server" Text="# Caso"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_IDCaso2" runat="server" Text='<%#Eval("IDCaso") %>'></asp:Label>

                                     
                                       </ItemTemplate>     
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_FechaSolicitud" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                       
                                            <asp:Label ID="Lbl_FechaSolicitud" runat="server" Text="Fecha Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaSolicitud2" runat="server" Text='<%#Eval("FechaSolicitud" , "{0:dd-MM-yyyy}") %>' ></asp:Label>
                                       </ItemTemplate>                                           
                                    </asp:TemplateField>                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_NombreCliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_NombreCliente" runat="server" Text="Nombre de Cliente"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreCliente2" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>    
                                    
                                     
                                                                  
                             

                                             <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                        <HeaderTemplate>
                                             <%--<asp:TextBox ID="TXT_EstadoSolicitud" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>--%>
                                             <br />
                                            <asp:Label ID="Lbl_EstadoSolicitud" runat="server" Text="Estado Solicitud"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_EstadoSolicitud2" runat="server" Text='<%#Eval("EstadoSolicitud") %>'></asp:Label>
                                   
                                        </ItemTemplate>                                            
                                        </asp:TemplateField>

                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>



                            </div>
                          </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>

<%-----------------------------------Fin panel 1 muestreo--------------------------------------------------------------------------------%>

            

<%-----------------------------------Inicio panel 2 muestreados-------------------------------------------------------------%>
               
           





              <div id="MenuMuestreados" class="rowsPanel panel panel-primary">

             <div class="panel-heading" data-toggle="collapse" data-target="#collapse2">
                Casos Muestreados<span class="icon-chevron-small-down rightBar"></span> :</div>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse2">
                    <div class="well">



                      
                        <br />

          

                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                         <ContentTemplate>

                             <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" Visible="false" OnClick="Btn_Buscar_Click"/>
                                          

                                 <div class="tableresponsive">  
                            <asp:GridView ID="DTG_Muestreados"  Width="100%"  CssClass="table" 
                                 ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                 runat="server" DataKeyNames="IDCaso" AutoGenerateColumns="False" 
                                 Font-Size="9"  BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                 BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Muestreados_PreRender" OnRowEditing="DTG_Muestreados_RowEditing" OnRowDataBound="DTG_Muestreados_RowDataBound" >
                                <Columns>

                                     <asp:BoundField DataField="IDCaso" HeaderText=""  Visible="false"  />
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center">
                                        <HeaderTemplate>
                                           <asp:TextBox ID="TXT_IDCaso" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99"  ForeColor="Black" placeholder="Buscar..." ></asp:TextBox>                                           <br />
                                            <asp:Label ID="Lbl_IDCaso" runat="server" Text="# Caso"></asp:Label>
                                        </HeaderTemplate>
                                       <ItemTemplate>
                                            <asp:Label ID="Lbl_IDCaso2" runat="server" Text='<%#Eval("IDCaso") %>'></asp:Label>

                                     
                                       </ItemTemplate>     
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-md" HeaderStyle-CssClass="hidden-md">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_FechaSolicitud" runat="server" onkeypress="return detour(event)"  Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_FechaSolicitud" runat="server" Text="Fecha Muestra"></asp:Label>
                                        </HeaderTemplate>
                                         <ItemTemplate>
                                            <asp:Label ID="Lbl_FechaSolicitud2" runat="server" Text='<%#Eval("FechaIngreso" , "{0:dd-MM-yyyy}") %>' ></asp:Label>
                                       </ItemTemplate>                                           
                                    </asp:TemplateField>                                    
                                     <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-md" HeaderStyle-CssClass="visible-lg">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_NombreCliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_NombreCliente" runat="server" Text="Nombre de Cliente"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_NombreCliente2" runat="server" Text='<%#Eval("NombreCliente") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>    
                                    
                                     
                                                                  
                                 
                                             <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-md" HeaderStyle-CssClass="hidden-md">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_Estatus" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_Estatus" runat="server" Text="Estatus"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_Estatus2" runat="server" Text='<%#Eval("EstatusSatisf") %>'></asp:Label>
                                   
                                        </ItemTemplate>                                            
                                        </asp:TemplateField>

                                     

                                    <asp:TemplateField HeaderText="" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-md" HeaderStyle-CssClass="hidden-md">
                                        <HeaderTemplate>
                                             <asp:TextBox ID="TXT_TipoSac" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                             <br />
                                            <asp:Label ID="Lbl_TipoSac" runat="server" Text="Tipo SAC"></asp:Label>
                                        </HeaderTemplate>
                                          <ItemTemplate>
                                            <asp:Label ID="Lbl_TipoSac2" runat="server" Text='<%#Eval("TipoSac") %>'></asp:Label>
                                       </ItemTemplate>                                            
                                    </asp:TemplateField>

                                   
                                </Columns>

                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <RowStyle ForeColor="#000000" />
                                <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />

                            </asp:GridView>
                            </div>

                           

                        </ContentTemplate>
                      </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>
         
<%------------------------------------Fin panel 2 muestreados------------------------------------------------------------------%>
        


        <br />

       <br />
   

    
</asp:Content>

