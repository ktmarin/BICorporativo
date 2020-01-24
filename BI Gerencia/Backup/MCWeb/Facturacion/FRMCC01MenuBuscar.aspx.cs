using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogica;

namespace MCWeb.Facturacion
{
    public partial class FRMCC01MenuBuscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void CMDBuscar_Click(object sender, EventArgs e)
        {
            Buscar();
        }
        private void Buscar()
        {
            GridView1.DataSource = GestorFA00.CC01_BuscarClientes(TXTCodigoCliente.Text);
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}