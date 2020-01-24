<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCRM.Master" AutoEventWireup="true" EnableSessionState="True" EnableEventValidation="false" CodeBehind="FRMFIC00MenuAdd.aspx.cs" Inherits="MCWebHogar.CRM.FRMFIC00MenuAdd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />


    <script src="../Scripts/jquery.mCustomScrollbar.concat.min.js"></script>
    <link href="../Styles/jquery.mCustomScrollbar.css" rel="stylesheet" />



     

    <meta name="viewport" content="width=device-width" />


    <script type="text/javascript">

        $(document).ready(function () {
            //setearFecha();
            //setearCostos();
        });

        function KeyPressed(e) {
            //Get the Key Code
            //alert('test1');
            var code = (e.keyCode ? e.keyCode : e.which);
            if (code == 13) { //Enter keycode
                $("[id*='CMD_BuscarVentaDirecta']").click();


            }
        }


     

        //function detour(e) {
        //    //alert('si');
        //    var code = (e.keyCode ? e.keyCode : e.which);
        //    if (code == 13) { //Enter keycode
        //        //alert('listo2');
        //        //$('CMD_BuscarFacturas').click();
        //        //alert('listO3');
        //        $("[id*='CMD_BuscarFacturas']").click();
        //        //alert('listo4');
        //        //document.getElementById('CMD_BuscarFacturas').click();
        //        //document.getElementById("CMD_BuscarFacturas").click();
        //        //alert('listo5');
        //    }
        //}

   


        function openpopclientes() {

            document.getElementById('btn_popClientes').click();
        }

        function closepopclientes() {

            document.getElementById('btn_popClientes').click();

        }

        function closepopfactura() {

            document.getElementById('btn_closePopFactura').click();


            return false;
        }

        function abrirPopFactura() {
       
            document.getElementById("openPopFactura").click();

            return false;
        }





        function openPopAdjunto() {


            document.getElementById("btn_popAdjunto").click();

            return false;
        }

        function closePopAdjunto() {
            // $('#popAdjunto').dialog('close');

            return false;
        }


        function cerrarPopNotas() {

            document.getElementById("Content_BTNCerrar").click();
            //$("[id*='BTNCerrar']").click();
        }
   

      
        function alertar(msj) {
            //alert(msj);
            document.getElementById('lblmsj').innerHTML = msj;
            document.getElementById('fade').style.display = 'block';
            document.getElementById('popmsj').style.display = 'block';
            $("#divCompleto").addClass("bloqueo");

            return false;
        }

        $("[src*=plus]").live("click", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "../images/minus.png");
        });
        $("[src*=minus]").live("click", function () {
            $(this).attr("src", "../images/plus.png");
            $(this).closest("tr").next().remove();
        });




    </script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

                    <h3><asp:Label ID="lbltitulo" runat="server" Text="Modificación clientes"></asp:Label>
         <asp:HiddenField ID="TXT_Contacto" runat="server"  /> 
         </h3>

    <script type="text/javascript">

        $(function () {
            $('#cerrarp').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });
            $('#cerrar2').click(function () {
                $("#divCompleto").removeClass("bloqueo");
            });

        });

       

    </script>


     <div class=" container" style="background-color: rgba(251,251,251,.6); overflow:hidden;">

          


     <%--<div id="divCompleto" class="container" style="color: rgba(0,0,0,.6); overflow:hidden;">--%>
        <%--  </div> --%>

           
         
        <div id="Info" class="rowsPanel panel panel-primary">

            <table class="trans_table" style="background-color: rgba(251,251,251,.6); overflow:hidden;">
                <tr>
                    <td colspan="5">
                        <h2>
                            <asp:Label ID="Label1" runat="server" Text="Ficha del Cliente"></asp:Label>
            

                        </h2>
                    </td>

                    <td align="right">
                      <%--  <h4>
                            <span class="badge" style="padding: 7px; background-color: #006699;">Caso <span class="badge" style="background-color: #f2f2f2;">
                                <asp:Label ID="LBL_Caso" CssClass="colortitulo" runat="server" ForeColor="Red" Text="#"></asp:Label></span></span>
                        </h4>--%>
                    </td>
                    <td align="right">
                        <asp:TextBox ID="TXT_UsuarioCreo" runat="server" Enabled="false" Visible="false"></asp:TextBox>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:HiddenField ID="TXT_IDCaso" runat="server" Value="" />

                                 

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </td>
                </tr>
            </table>

         

            <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapseExample">
                Informaci&oacute;n General:
                <span class="icon-chevron-small-down rightBar"></span>
            </div>

<%-----------------------------------------Inicio Colapse 1 info caso---------------------------------------------------------------------%>
            <div class="panel-body">
                <div class="shadowrow collapse in" id="collapse1">
                    <div class="well">


                        <div class="row">
                            <div class="col-md-4">

                            <asp:UpdatePanel ID="UpdatePanel26" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                            
                                <%--<asp:LinkButton ID="lnkbuscaCliente" runat="server" CssClass="btn btn-default" OnClick="lnkbuscaCliente_Click">
                                <span class="glyphicon glyphicon-search"></span>&nbsp; Buscar Cliente:
                                </asp:LinkButton>--%>
                                <%--<asp:TextBox ID="TextBox1" class="form-control" Enabled="false" Width="100%" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>--%>
                                
                                               
                                   
                               <div class="form-group">
                                    <label for="TXT_NombreCliente">Nombre Cliente:</label>
                                    <asp:TextBox ID="TXT_NombreCliente" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                                <div class="form-group">
                                    <label for="TXT_Edad">Edad:</label>
                                    <asp:TextBox ID="TXT_Edad" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                    <label for="TXT_FechaNaci">Fecha Nacimiento:</label>
                                    <asp:TextBox ID="TXT_FechaNaci" runat="server" class="form-control" MaxLength="50" onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                     <asp:Label ID="TXT_FechaNaci2" runat="server"  DbType="Datetime" PropertyName="Text" ></asp:Label>
                                </div>

                                                                 
                                <div class="form-group">
                                    <label for="TXT_CorreoElectronico">Correo Electronico:</label>
                                    <asp:TextBox ID="TXT_CorreoElectronico" class="form-control" runat="server" MaxLength="150"
                                        onkeydown="return (event.keyCode!=13);"></asp:TextBox>
                                </div>
                                             
                                
                                 <div class="form-group">
                                    <label for="TXT_Celular">Celular:</label>
                                    <asp:TextBox ID="TXT_Celular" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>
                                
                                              
                                                                     
                                </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>


                      <%----------------------------------------------------%>


                            
                      <div class="col-md-4">

                          <asp:UpdatePanel ID="Upfich" runat="server" UpdateMode="Conditional">
                         <ContentTemplate>
                               
                                <div class="form-group">
                                    <label for="TXT_Provincia">Provincia:</label>
                                    <asp:TextBox ID="TXT_Provincia" class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                                <div class="form-group">
                                    <label for="TXT_Canton">Canton:</label>
                                    <asp:TextBox ID="TXT_Canton" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                                <div class="form-group">
                                    <label for="TXT_Distrito">Distrito:</label>
                                    <asp:TextBox ID="TXT_Distrito" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                                  <div class="form-group">
                                    <label for="TXT_ingresomin"> Ingreso Min:</label>
                                    <asp:TextBox ID="TXT_ingresomin" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                               <div class="form-group">
                                    <label for="TXT_ingresomax"> Ingreso Max:</label>
                                    <asp:TextBox ID="TXT_ingresomax" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>

                        </ContentTemplate>
                        </asp:UpdatePanel>






                          <br />

                      
                          </div>



                         <%--   ------------------------------------------------%>
                      <div class="col-md-4">

                          <asp:UpdatePanel ID="Upfich1" runat="server" UpdateMode="Conditional">
                         <ContentTemplate>
                              

                                  <div class="form-group">
                                    <label for="TXT_Tiket"> Ticket Promedio:</label>
                                    <asp:TextBox ID="TXT_Tiket" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>
                                         
                                
                                   <div class="form-group">
                                    <label for="TXT_empresa"> Empresa de Trabajo:</label>
                                    <asp:TextBox ID="TXT_empresa" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>      
                                
                                
                          <div class="form-group">
                                    <label for="TXT_compraTotal"> Total de Compras:</label>
                                    <asp:TextBox ID="TXT_compraTotal" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                </div>   

                                   <div class="form-group">
                                    <label for="TXT_TotalFACT"> Total Facturas:</label>
                                    <asp:TextBox ID="TXT_TotalFACT" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                  </div>  
                                
                         
                                  <div class="form-group">
                                    <label for="TXT_PromedioVentas"> Promedio de Ventas:</label>
                                    <asp:TextBox ID="TXT_PromedioVentas" Class="form-control" runat="server" MaxLength="99" onkeydown="return (event.keyCode!=13);"></asp:TextBox>

                                  </div>  

                         
                        </ContentTemplate>
                        </asp:UpdatePanel>


                         <asp:UpdatePanel ID="Updpopup" runat="server">
                         <ContentTemplate>
                              
                          <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-default" OnClientClick="abrirPopFactura()">
                          <span class="glyphicon glyphicon-search"></span>&nbsp; Buscar factura:
                          </asp:LinkButton>



                        </ContentTemplate>
                        </asp:UpdatePanel>



                         </div>


                                </div>


                      
                                

                                <br />

                        
                    </div>


                </div>
            </div>

        </div>



<%-------------------------------------------------fin panel costos-------------------------------------------------%>

       <%-- <div class="panel panel-default">
            <div class="panel-body">--%>
                <div class=" footerControles">
                    <div class =" main container" style="background-color: rgba(0,0,0,.6); border: 0; padding: 3px; text-align: center; overflow:hidden;">

                <table class="trans_table">
                    <tr>
                        <td align="center">

                            <%-- <asp:Button ID="CMD_NuevoCaso" runat="server" Text="Nuevo" OnClick="CMD_NuevoCaso_Click" OnClientClick="return nuevo();" CssClass="btn btn-primary" />--%>

                            
                             <asp:UpdatePanel ID="UpdatePanel25" runat="server" UpdateMode="Conditional">
                             <ContentTemplate>
                            <%--<asp:Button ID="CMD_Guardar" runat="server" Text="Guardar" OnClick="CMD_Guardar_Click" OnClientClick="return validar();" CssClass="btn btn-success" />--%>
                                                  
                            <%--<asp:Button ID="CMD_Salir" runat="server" Text="Salir" ToolTip="Regresar al listado" OnClick="CMD_Salir_Click" CssClass="btn btn-default active" />--%>


                           </ContentTemplate>
                         </asp:UpdatePanel>

                 <asp:Label ID="LBL_OpcionCliente" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_OpcionContacto" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_CodCliente" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>
                 <asp:Label ID="LBL_CodClienteEntrega" runat="server" Text="" Width="1" ForeColor="White"> </asp:Label>

                        </td>
                    </tr>
                </table>

                    </div>
                </div>

       
        <br />
   



    <!-- base semi-transparente -->
    <div id="fade" class="overlay" onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none'"></div>
    <!-- fin base semi-transparente -->


    <div id="popmsj" class="popupnotificacion">
        <a title="Cerrar" class="close" id="cerrarp" href="javascript:void(0)" onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">X</a>
        <h4><b>&#161;Notificaci&oacute;n&#33;</b></h4>
        <div style="text-align: center;">
            <label id="lblmsj" style="font-weight: 200;"></label>
            <br />
            <a title="Cerrar" class="closeok" id="cerrar2" href="javascript:void(0)"
                onclick="document.getElementById('popmsj').style.display='none';document.getElementById('fade').style.display='none';">Aceptar</a>
        </div>

    </div>




    <%------------------------------------Inicio popop facturA------------------------------------------------------%>

      <%--<button type="button" id="btn_closePopFactura" data-toggle="modal" data-target="#PopFactura" style="visibility: hidden;">open</button>--%>
      <button type="button" id="openPopFactura" data-toggle="modal" data-target="#PopFactura" style="visibility: hidden;">open</button>


    <div class="modal fade" id="PopFactura" tabindex="-1" role="dialog" aria-labelledby="popPopFactura" aria-hidden="true">

        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">

                    <h3 class="modal-title" id="exampleModalLabelFACT">Seleccione Factura o cliente</h3>

                </div>
                <div class="modal-body">
                    

                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                     <div style="display:none;">
                         
                    <asp:Button ID="CMD_BuscarFacturas"  runat="server" Text="Buscar Facturas"  CssClass="btn btn-secondary" OnClick="CMD_BuscarFacturas_Click" />
                     </div>
<%----------------------------------------------------INICIO GRID FACTURAS----------------------------------%>
  <div style="height:300px; overflow:auto">
                          <asp:GridView ID="DTG_Fac" Width="100%" CssClass="table"
                                        ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                        runat="server" 
                          DataKeyNames="sfactura,cedula,sNombre_Cliente,sTelefono,Correo,Sdireccion,Provincia,Canton,Distrito,Empresatrabajo,IngresoMin,IngresoMax,VentaTotal,PromedioVentas,TotalFact,Tiket,edad,FechaNacimiento" AutoGenerateColumns="False"
                                        Font-Size="10" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="2" OnPreRender="DTG_Fac_PreRender" OnRowEditing="DTG_Fac_RowEditing" OnRowDataBound="DTG_Fac_RowDataBound"  OnSelectedIndexChanging="DTG_Fac_SelectedIndexChanging">
                                        <Columns>

                                                                            

                                            <asp:BoundField DataField="sPedido" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="Provincia" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="Canton" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="Distrito" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="Empresatrabajo" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="IngresoMin" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="IngresoMax" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="VentaTotal" HeaderText="" Visible="false" />
                                             <asp:BoundField DataField="PromedioVentas" HeaderText="" Visible="false" />
                                            <asp:BoundField DataField="TotalFact" HeaderText="" Visible="false" />
                                            <asp:BoundField DataField="Tiket" HeaderText="" Visible="false" />
                                            <asp:BoundField DataField="edad" HeaderText="" Visible="false" />
                                            <asp:BoundField DataField="FechaNacimiento" HeaderText=""  Visible="false" />
                                            <asp:BoundField DataField="Correo" HeaderText="" Visible="false" />
                                           
                                          


                                               <asp:TemplateField HeaderText="Cedula" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <asp:TextBox ID="TXT_cedula" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Lbl_cedula" runat="server" Text="# Cedula"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_cedula2" runat="server" Text='<%#Eval("cedula") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>






                                            <asp:TemplateField HeaderText="cliente" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <asp:TextBox ID="TXT_sNombre_Cliente" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Lbl_sNombre_Cliente" runat="server" Text="Nombre de Cliente"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_sNombre_Cliente2" runat="server" Text='<%#Eval("sNombre_Cliente") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                       

                                            <asp:TemplateField HeaderText="fact" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <asp:TextBox ID="TXT_sFactura" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Lbl_sFactura" runat="server" Text="# Factura"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_sFactura2" runat="server" Text='<%#Eval("sFactura") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="fecha" ItemStyle-HorizontalAlign="Center"  ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                    <asp:TextBox ID="TXT_dFecha" runat="server" onkeypress="return detour(event)" Width="100%" MaxLength="99" ForeColor="Black" placeholder="Buscar..."></asp:TextBox>
                                                    <br />
                                                    <asp:Label ID="Lbl_dFecha" runat="server" Text="Fecha"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Lbl_dFecha2" runat="server" Text='<%#Eval("dFecha" , "{0:dd-MM-yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                     

                                           

                                       
                                      
                                     
                                      <asp:TemplateField HeaderText="Elegir Fact" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                      <ItemTemplate>
                                      <asp:Button ID="verButton" runat="server"  
                                      CommandName = "Select" 
                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                      Text="Elegir" CssClass="btn btn-success btn-xs"   />
                                      </ItemTemplate>
                                      </asp:TemplateField>


                                      <asp:TemplateField HeaderText="Ver Fact" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                      <ItemTemplate>
                                      <asp:Button ID="VerDetalle" runat="server"  
                                      CommandName = "edit" 
                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                      Text="Detalle" CssClass="btn btn-danger btn-xs"   />
                                      </ItemTemplate>
                                      </asp:TemplateField>

                                        </Columns>

                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                                                    
                              
                               
                            </asp:GridView>


                    
                           </div> 
<%-----------------------------------------------------FIN GRID FACTURA----------------------------------------------%>

<%---------------------------------------------INICIO GRID DETALLE FAC------------------------------------------%>
                  <div  class="row"> 

                        
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional" >
                <ContentTemplate>
                     <div style="display:none;">
                         
                    <asp:Button ID="Button3"  runat="server" Text="Buscar Facturas"  CssClass="btn btn-secondary" OnClick="CMD_BuscarFacturas_Click" />
                     </div>

                    <div style="height:auto; overflow:auto">
                          <asp:GridView ID="DTG_DetFACT" Width="100%" CssClass="table"
                                        ShowHeaderWhenEmpty="true" EmptyDataText="Sin registros."
                                        runat="server" DataKeyNames="sfactura,scodigo_producto,sdescripcion" AutoGenerateColumns="False"
                                        Font-Size="10" BackColor="White" BorderColor="#DAD9D8" BorderStyle="None"
                                        BorderWidth="1px" CellPadding="2" OnPreRender="DTG_DetFACT_PreRender" OnRowEditing="DTG_DetFACT_RowEditing" OnRowDataBound="DTG_DetFACT_RowDataBound" OnSelectedIndexChanging="DTG_DetFACT_SelectedIndexChanging">
                         
                                        <Columns>

                                      
                                             
                                      

                                            <asp:BoundField DataField="sPedido" HeaderText="" Visible="false" />

                                       

                                            <asp:TemplateField Visible="false" HeaderText="" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                   
                                                    <asp:Label ID="Label2" runat="server" Text="# Factura"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("sFactura") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>



                                            

                                            <asp:TemplateField HeaderText="fecha" Visible="false" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                   
                                                    <asp:Label ID="Label4" runat="server" Text="Fecha"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("dFecha" , "{0:dd-MM-yyyy}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                     

                                            <asp:TemplateField HeaderText="ITEM" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                   
                                                    <asp:Label ID="Lbl_codigoProduct" runat="server" Text="ITEM"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("scodigo_producto") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Descripcion Producto" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                  
                                                    <asp:Label ID="Lbl_DescProduct" runat="server" Text="Descripcion del Producto"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("sdescripcion") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="Unidades" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                   
                                                    <asp:Label ID="Lbl_Unidades" runat="server" Text="Cantidad"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label8" runat="server" Text='<%#Eval("ccantidad") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Unidades" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                                <HeaderTemplate>
                                                   
                                                    <asp:Label ID="Label9" runat="server" Text="Descripcion"></asp:Label>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label10" runat="server" Text='<%#Eval("sNotas") %>'></asp:Label>
                                                </ItemTemplate>

                                            </asp:TemplateField>
                                                     
                                            
                                                   
                             <%--         <asp:TemplateField HeaderText="Elegir Item" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs">
                                      <ItemTemplate>
                                      <asp:Button ID="verButtonItem" runat="server"  
                                      CommandName = "Select" 
                                      CommandArgument="<%# ((GridViewRow)Container).RowIndex %>" 
                                      Text="Elegir" CssClass="btn btn-success btn-xs"   />
                                      </ItemTemplate>
                                      </asp:TemplateField>  --%>                   

                                        </Columns>

                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#000000" />
                                        <SelectedRowStyle BackColor="#E6E6E6" Font-Bold="True" ForeColor="Black" />
                                                    
                              
                               
                               
                            </asp:GridView>


                    
                           </div> 
                  <%-- <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>

                        </ContentTemplate>
                  
                            

                        <Triggers>
                                              <asp:AsyncPostBackTrigger ControlID="CMD_BuscarFacturas"
                                                                    EventName="Click" /> 
                         <%--    <asp:AsyncPostBackTrigger ControlID="Sel"
                                                                    EventName="Click" />                 
                                <asp:PostBackTrigger ControlID="CMD_BuscarFacturas"  />--%>
                                                            </Triggers>
                
                    

                    </asp:UpdatePanel>

                    </div>
<%---------------------------------------------------FIN GRID DETALLE------------------------------------------------------%>

     

                         </ContentTemplate>
                  
                            

                       <Triggers>
                       <asp:AsyncPostBackTrigger ControlID="CMD_BuscarFacturas"
                       EventName="Click" />
                       </Triggers>
                
                    

                </asp:UpdatePanel>
                </div>



                <div class="modal-footer">

                    <asp:Button ID="Button1" runat="server" Text="Cerrar" data-dismiss="modal" CssClass="btn btn-secondary" />

                </div>

            </div>
        </div>

    </div>
    
    <%------------------------------------fin popop FACTURA----------------------------------------------------




    <%------------------------------inicio popop notas--------------------------------------------%>

                           
<%-----------------------------------------------fin popop notas-------------------------------------------------------------------%>




<%------------------------inicio popop adjuntos--------------------------------------%>



<%-----------------------------------------fin popop Adjuntos-------------------------------------------%>


 </div>

    
</asp:Content>
