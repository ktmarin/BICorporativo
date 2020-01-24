using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using LogicLyers;
using CapaLogica;
namespace MCWeb.Facturacion
{
    public partial class FRMCotizarMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

               
            }
        }

        private void Primero()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00(" ORDER BY sPedido ASC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            

        }
        private void Navegar(DataTable dt)
        {
            foreach (DataRow dr in dt.Rows)
            {
                TXTsCodigo_Cliente.Text = Convert.ToString(dr["sCodigo_Cliente"]).Trim();
                TXTsNombre_Cliente.Text = Convert.ToString(dr["sNombre_Cliente"]).Trim();
                TXTsPedido.Text = Convert.ToString(dr["sPedido"]).Trim();
                TXTsDireccion1.Text = Convert.ToString(dr["sDireccion_1"]).Trim();
                TXTsFactura.Text = Convert.ToString(dr["sFactura"]).Trim();
                TXTsTelefono.Text = Convert.ToString(dr["sTelefono"]).Trim();
                TXTsCedula.Text = Convert.ToString(dr["sCedula"]).Trim();
                TXTcDescuento.Text = Convert.ToString(dr["cDescuento"]).Trim();
                TXTdFecha.Text = Convert.ToString(dr["dFecha"]).Trim();
                TXTdVencimiento.Text = Convert.ToString(dr["dVencimiento"]).Trim();
                TXTiPlazo.Text = Convert.ToString(dr["iPlazo"]).Trim();
                TXTsVendedor.Text = Convert.ToString(dr["sCodigo"]).Trim();
                TXTsVendedorDescripcion.Text = Convert.ToString(dr["sDescripcion"]).Trim();
                TXTSubTotal.Text = Convert.ToString(dr["cMonto_Total_Gravado"]).Trim();
                TXTDescuento.Text = Convert.ToString(dr["cMonto_Total_Descuento"]).Trim();
                TXTImpuesto.Text = Convert.ToString(dr["cMonto_Total_Impuesto"]).Trim();
                TXTTotalFactura.Text = Convert.ToString(dr["cMonto_Total_Precio"]).Trim();

                DataTable Lista = new DataTable();
                Lista = GestorFA00.ProductosenPedidos(TXTsPedido.Text);
                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }

        }
        private void Atras()
        {
            DataTable dt = new DataTable();
            dt = GestorFA00.NavegacionFA00( "AND sPedido < '"+ TXTsPedido.Text+ "' ORDER BY sPedido DESC");
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
            dt = GestorFA00.NavegacionFA00("AND sPedido > '" + TXTsPedido.Text + "' ORDER BY sPedido ASC");
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
            dt = GestorFA00.NavegacionFA00(" ORDER BY sPedido DESC");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
 
        }

        protected void CMDUltimo_Click(object sender, EventArgs e)
        {
            Ultimo();
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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void CMDBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}