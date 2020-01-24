using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LogicLyers;
using CapaLogica;
using CapaLogica.Entidades.FAC01 ;


namespace MCWeb.Facturacion
{
    public partial class FRMFAC00Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            else
            {
                ////Ultimo();
            }
        }
        private void EliminarProducto()
        {
            int lin = GridView1.SelectedIndex;
            GridViewRow row = GridView1.SelectedRow as GridViewRow;

            if (row != null)
            {
                string linea = row.Cells[1].Text;
                string usuario = Session["IDUsuario"].ToString();
                string producto = Convert.ToString(row.Cells[3].Text);

                GestorFA00.WEB_DELETE_IN04_Pedido(usuario,TXTsPedido.Text, producto, Convert.ToInt32(linea));

                Buscar();
            }

        }
        private void SeleccionarProducto()
        {
          
                int lin = GridView1.SelectedIndex;
                GridViewRow row = GridView1.SelectedRow as GridViewRow;

                if (row != null)
                {
                    TXTLinea.Text = row.Cells[1].Text.Trim();
                    TXTCodigoBodega.Text = row.Cells[2].Text.Trim();
                    TXTCodigoProducto.Text = row.Cells[3].Text.Trim();
                    TXTCantidadProducto.Text = row.Cells[4].Text.Trim();
                    TXTDescripcionProducto.Text = row.Cells[5].Text.Trim();
                    TXTPrecioUnitario.Text = row.Cells[6].Text.Trim();
                    string usuario = Session["IDUsuario"].ToString();
                    string producto = Convert.ToString(row.Cells[3].Text);


                    //Buscar();
                
            }

        }
        private void UpdateProducto()
        {

            if (TXTLinea.Text.Trim() != "")
            {
                FAC01 man = new FAC01();
                int criterio = 0;
                try
                {
                    criterio = 1;
                    man.iLinea  =Convert.ToInt32(TXTLinea.Text);
                    man.sBodega = TXTCodigoBodega.Text;
                    man.sCodigo_Producto = TXTCodigoProducto.Text;
                    criterio = 2;
                    man.cCantidad = Convert.ToDecimal(TXTCantidadProducto.Text);
                   man.sDescripcion = TXTDescripcionProducto.Text;
                   man.sPedido = TXTsPedido.Text;
                    criterio = 3;
                    man.cPrecio_Venta = Convert.ToDecimal(TXTPrecioUnitario.Text);
                    man.sQuien_Ingreso = Session["IDUsuario"].ToString();
                    criterio = 4;
                    GestorFA01.UPDATEFAC01(man);
                }
                catch (Exception ex)
                {
                    switch (criterio)
                    {
                        case 1:
                         RegisterClientScriptBlock("Alerta", "<script>alert('No se reconoce la linea a actualizar');</script>");
                             TXTLinea.Focus();
                         break;
                        case 2:
                         RegisterClientScriptBlock("Alerta", "<script>alert('La Cantidad tiene un formato invalido');</script>");
                         TXTCantidadProducto.Focus();
                         break;
                        case 3:
                         RegisterClientScriptBlock("Alerta", "<script>alert('El Precio de Venta tiene un formato invalido');</script>");
                         TXTPrecioUnitario.Focus();
                         break;
                        case 4:
                         RegisterClientScriptBlock("Alerta", "<script>alert('Ocurrio un error al actualizar el producto.');</script>");
                         TXTPrecioUnitario.Focus();
                         break;
                            
                    }
                    return;
                }


                Buscar();
            }

        }
        private void Buscar()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00("AND sPedido = '" + TXTsPedido.Text + "' ORDER BY sPedido DESC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            else
            {
                Primero();
            }

        }
        private void Primero()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00(" ORDER BY FA00.sPedido ASC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }


        }
        private void Navegar(DataTable dt)
        {
            TXTLinea.Text = "";
            TXTCodigoBodega.Text = "";
            TXTCodigoProducto.Text = "";
            TXTCantidadProducto.Text = "";
            TXTDescripcionProducto.Text = "";
            TXTPrecioUnitario.Text = "";
            foreach (DataRow dr in dt.Rows)
            {
                TXTsCodigo_Cliente.Text = Convert.ToString(dr["sCodigo_Cliente"]).Trim();
                TXTsNombre_Cliente.Text = Convert.ToString(dr["sNombre_Cliente"]).Trim();
                TXTsBodega.Text = Convert.ToString(dr["sBodega"]).Trim();
                TXTsPedido.Text = Convert.ToString(dr["sPedido"]).Trim();
                TXTsDireccion_1.Text = Convert.ToString(dr["sDireccion_1"]).Trim();
                TXTsFactura.Text = Convert.ToString(dr["sFactura"]).Trim();
                TXTsTelefono.Text = Convert.ToString(dr["sTelefono"]).Trim();
                TXTsCedula.Text = Convert.ToString(dr["sCedula"]).Trim();
                TXTcDescuento.Text = Convert.ToString(dr["cDescuento"]).Trim();
                TXTdFecha2.SelectedDate= Convert.ToDateTime(dr["dFecha"]);
                TXTdVencimiento2.SelectedDate = Convert.ToDateTime(dr["dVencimiento"]);
                TXTiPlazo.Text = Convert.ToString(dr["iPlazo"]).Trim();
                TXTsVendedor.Text = Convert.ToString(dr["sCodigo"]).Trim();
                TXTsVendedorDescripcion.Text = Convert.ToString(dr["sDescripcion"]).Trim();
                //TXTSubTotal.Text = Convert.ToString(dr["cMonto_Total_Gravado"]).Trim();
                TXTDescuento.Text = Convert.ToString(dr["cMonto_Total_Descuento"]).Trim();
                TXTImpuesto.Text = Convert.ToString(dr["cMonto_Total_Impuesto"]).Trim();
                TXTTotalFactura.Text = Convert.ToString(dr["cMonto_Total_Precio"]).Trim();
                TXTSubTotal.Text  = Convert.ToString(dr["TotalGravado"]).Trim();
                TXTImpuesto.Text = Convert.ToString(dr["Impuesto"]).Trim();
                TXTDescuento.Text = Convert.ToString(dr["Descuento"]).Trim();
                TXTTotalFactura.Text = Convert.ToString(dr["TotalFactura"]).Trim();

                CMBiTipo_Moneda.SelectedIndex = Convert.ToInt32(dr["iTipo_Moneda"]);

                DataTable Lista = new DataTable();
                Lista = GestorFA00.ProductosenPedidos(TXTsPedido.Text);
                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }
            ////decimal subtotal = 0;
            ////decimal Impuesto = 0;
            ////decimal Total = 0;

         
            //foreach (GridViewRow row in GridView1.Rows)
            //{

           

            //    subtotal = subtotal + Convert.ToDecimal(row.Cells[7].Text);

            //    Total = Total + (Convert.ToDecimal(row.Cells[7].Text) * Convert.ToDecimal(row.Cells[8].Text ));

            //    //Impuesto = Impuesto + (Convert.ToDecimal(row.Cells[7].Text) * (Convert.ToDecimal(row.Cells[7].Text) - 1));



            //}
            //TXTSubTotal.Text = subtotal.ToString("N2");
          

        }
        private void Atras()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00("AND sPedido < '" + TXTsPedido.Text + "' ORDER BY FA00.sPedido DESC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            else
            {
                Primero();
            }

        }
        private void Adelante()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00("AND sPedido > '" + TXTsPedido.Text + "' ORDER BY FA00.sPedido ASC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            else
            {
                Ultimo();
            }
        }
        private void Ultimo()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00(" ORDER BY FA00.sPedido DESC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }

        }

        protected void CMDPrimero_Click(object sender, EventArgs e)
        {
            Primero();
        }

        protected void CMDAtras_Click(object sender, EventArgs e)
        {
            Atras();
        }

        protected void CMDAdelante_Click(object sender, EventArgs e)
        {
            Adelante();
        }

        protected void CMDUltimo_Click(object sender, EventArgs e)
        {
            Ultimo();
        }

        protected void CMDBuscar_Click(object sender, EventArgs e)
        {
            //Response.Redirect("~/Facturacion/FRMCC01MenuBuscar.aspx");
            Response.Redirect("~/Facturacion/FRMFAC00MenuBuscar.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SeleccionarProducto();
        }

        protected void CMDEditarPedido_Click(object sender, EventArgs e)
        {
            GestorFA00.WEB_Editar_Pedido(FRMLogin.UserAcceso, TXTsPedido.Text);
            //ResolveUrl("~/Facturacion/FRMFAC00Menu.aspx");
            Response.Redirect("~/Facturacion/FRMFAC00Menu.aspx");
            
            //DataTable dt = new DataTable();
            //dt = GestorFA00.WEB_Pedido_Actual(Session["IDUsuario"].ToString());LinBodegaProductoCantidadDescripción del ProductoPrecio Unitario Total  DataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDataboundDatabound
            //if (dt != null && dt.Rows.Count > 0)
            //{
            //    SiteMaster1.PedidoUsuario = dt.Rows[0][0].ToString();
            //    //LBLPedidoUsuario.Text = PedidoUsuario.Trim();
            //}
            //else
            //{
            //    SiteMaster1.PedidoUsuario = "00000000";
            //    //LBLPedidoUsuario.Text = "00000000";
            //}
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
        }

        protected void CMDUpdateProducto_Click(object sender, EventArgs e)
        {
            UpdateProducto();
        }

        protected void CMDEliminarProducto_Click(object sender, EventArgs e)
        {
            EliminarProducto();
        }
    }
}