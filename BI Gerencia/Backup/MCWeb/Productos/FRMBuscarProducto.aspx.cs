using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogica;
namespace MCWeb.Productos
{
    public partial class FRMBuscarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Codigo = "";
            Descripcion = "";
            if (FRMIMV02Menu.CProductos == 1)
            {
                Redireccion = "../Productos/FRMIMV02Menu.aspx";
            }
            else
            {
                Redireccion = "../Productos/FRMINV04Menu.aspx";
            }
            Buscar();
        }
        public string  Redireccion;
        protected void CMDAceptar_Click(object sender, EventArgs e)

        {
         }
        private void Buscar()
        {
            GridView1.DataSource = GestorIN04.BuscarIN04(TXTCodigoProducto.Text , TXTDescripcionInventario.Text,TXTPrecioVenta.Text ,TXTGrupo.Text);
            GridView1.DataBind();
      //      GridViewRow Rows = GridView1.SelectedRow;
      //      if (Rows.RowIndex == 0)
      //      {
      //          //Rows[0].Visible = false;
      //          // Hide all the conotrols.
      //          foreach (Control ctrl in Rows.Controls )
      //          {
      //              ctrl.Visible = false;
      //          }
      //          // Now add a control and use the user-provided string in the EmptyDataText property if supplied, otherwise use a default.
      //          TableCell cell = new TableCell();
      //          cell.ColumnSpan = GridView1.Columns.Count;
      //          if (GridView1.EmptyDataText.Length  > 0)
          
      //{
      //              cell.Text = GridView1.EmptyDataText;
      //          }
      //          else
      //          {
      //              cell.Text = String.Format("No records were found using filter \"{0}\".", "ass");
      //          }
      //          GridView1.Controls.Add(cell);
      //          //Rows[0].Controls.Add(cell);

           // }
     
        }

        protected void TXTCodigoProducto_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void TXTDescripcionInventario_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }
        public static string Codigo;
        public static string Descripcion;

        public static string TipoProvedor;
        public static string TipoFamilia;
        public static string Tipo;
       
        private void Seleccion()
        {
            GridViewRow item = GridView1.SelectedRow as GridViewRow;
            if (item != null)
            {

                if (Tipo == "Prove")
                {
                    MCWeb.Reportes.FRMREINV04MenuFGP.Argumento = "Proveedor";
                    TipoProvedor = Convert.ToString(item.Cells[0].Text);
                    
                    Redireccion = "../Reportes/FRMREINV04MenuFGP.aspx";
                }
                //else if (Tipo == "Prove")
                //    {
                //        FRMBuscarProducto.TipoProvedor  = Convert.ToString(item.Cells[0].Text);

                //        Redireccion = "../Reportes/FRMREINV04MenuFGP.aspx";
                //    }


                Codigo = Convert.ToString(item.Cells [0].Text);
                Descripcion = Convert.ToString(item.Cells[1].Text);
                Response.Redirect(Redireccion);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Seleccion();
        }

        protected void TXTPrecioVenta_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void TXTGrupo_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void CMDAceptar_Click1(object sender, EventArgs e)
        {

        }
    }
}