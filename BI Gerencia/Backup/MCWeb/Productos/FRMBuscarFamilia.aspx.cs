using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogica;

namespace MCWeb.Productos
{
    public partial class FRMBuscarFamilia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Buscar();
        }
        public static string  TipoFamilia ;
        public static string  TipoProvedor;

        private void Buscar()
        {
            GridView1.DataSource = GestorIN04.BuscarIN01("", "");
            GridView1.DataBind();
        }
        private void Seleccion()
        {
              GridViewRow item = GridView1.SelectedRow as GridViewRow;
              if (item != null)
              {
                 MCWeb.Reportes.FRMREINV04MenuFGP.Argumento = "Familia";
                 TipoFamilia = Convert.ToString(item.Cells[0].Text);
                 Response.Redirect("../Reportes/FRMREINV04MenuFGP.aspx");
              }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Seleccion();
        }
    }
}