using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaLogica;
using System.Data;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;

namespace MCWeb.Rotaciones
{
    public partial class FRMRotacionesMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProveedores("","");
                DT_Mes2.SelectedValue = DateTime.Now.Month.ToString();
            }

        }

        private void CargarProveedores(string CodProveedor,string NombreProveedor)
        {
            GestorDataDT DT = new GestorDataDT();
            DataTable Result = new DataTable();
            DT.DT1.Rows.Add("@CodProveedor", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@NombreProveedor", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@MesInicial", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@AnoInicial", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@MesFinal", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@AnoFinal", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@UnidNetas", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@TipoSentencia", "CargarProveedores", SqlDbType.VarChar);
            Result = GestorDatos.Consultar(DT.DT1, "WEB_0001");
            DTG_Proveedores.DataSource = Result;
            DTG_Proveedores.DataBind();

        }
        private void ProductosProveedor(string CodProveedor, string NombreProveedor)
        {



            GestorDataDT DT = new GestorDataDT();
            DataTable Result = new DataTable();
            DT.DT1.Rows.Add("@CodProveedor", CodProveedor, SqlDbType.VarChar);
            DT.DT1.Rows.Add("@NombreProveedor", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@MesInicial", DT_Mes1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoInicial", DT_Anio1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@MesFinal", DT_Mes2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoFinal", DT_Anio2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@UnidNetas", "0", SqlDbType.Int);
            DT.DT1.Rows.Add("@TipoSentencia", "GraficoProveedor", SqlDbType.VarChar);
            Result = GestorDatos.Consultar(DT.DT1, "WEB_0001");
            

            //Series serieLinea = new Series("SerieVenta");

            //serieLinea.YValueMembers = "VentaNeta";

            //serieLinea.XValueMember = "Fecha";

            //serieLinea.ChartType = SeriesChartType.Bar;

            //Chart1.Series.Add(serieLinea);
            //Chart1.Series["Mes"].XValueMember = "Fecha";
            //Chart1.Series["Mes"].YValueMembers = "VentaNeta";
            //Chart1.Series["VentaNeta"].Points.Clear();
            Chart1.DataSource = null;
            DataView data = new DataView(Result);
            Chart1.Series["VentaNeta"].Points.DataBind(data, "FechaNombre", "VentaNeta", "");
            Chart1.Series["CostoNeto"].Points.DataBind(data, "FechaNombre", "CostoNeto", "");
            //Chart1.Series["Vendido"].Points.DataBind(data, "FechaNombre", "Vendido", "");
            //Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            //Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;

            //Chart1.DataSource = Result;       
            //Chart1.DataBind();


            


            DT = new GestorDataDT();
            Result = new DataTable();
            DT.DT1.Rows.Add("@CodProveedor", CodProveedor, SqlDbType.VarChar);
            DT.DT1.Rows.Add("@NombreProveedor", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@MesInicial", DT_Mes1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoInicial", DT_Anio1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@MesFinal", DT_Mes2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoFinal", DT_Anio2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@UnidNetas", "0", SqlDbType.Int);
            DT.DT1.Rows.Add("@TipoSentencia", "ProductosProveedor", SqlDbType.VarChar);
            Result = GestorDatos.Consultar(DT.DT1, "WEB_0001");

            DTG_Productos.DataSource = Result;
            DTG_Productos.DataBind();

  




        }

        private void ProductosProveedorInforme(string CodProveedor, string NombreProveedor)
        {
            GestorDataDT DT = new GestorDataDT();
            DataTable Result = new DataTable();
            DT.DT1.Rows.Add("@CodProveedor", CodProveedor, SqlDbType.VarChar);
            DT.DT1.Rows.Add("@NombreProveedor", "", SqlDbType.VarChar);
            DT.DT1.Rows.Add("@MesInicial", DT_Mes1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoInicial", DT_Anio1.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@MesFinal", DT_Mes2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@AnoFinal", DT_Anio2.SelectedValue, SqlDbType.Int);
            DT.DT1.Rows.Add("@UnidNetas", "0", SqlDbType.Int);
            DT.DT1.Rows.Add("@TipoSentencia", "ProductosProveedor", SqlDbType.VarChar);
            Result = GestorDatos.Consultar(DT.DT1, "WEB_0001");
            Session["RptProductosProveedor"] = Result;

            string script = "window.open('/Rotaciones/FRMRotacionesInforme.aspx');";





           ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "openwindow", script, true);
           //Response.Redirect("~/Rotaciones/FRMRotacionesInforme.aspx");


        }

        protected void DTG_Proveedores_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in DTG_Proveedores.Rows)
            {
                if (row.RowIndex == DTG_Proveedores.SelectedIndex)
                {

                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Haga click sobre el proveedor que quiere revisar.";
                }
            }
       
           
        }

        protected void DTG_Proveedores_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(DTG_Proveedores, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Haga click sobre el proveedor que quiere revisar.";
    
                
                //Label1.Text = "You selected " + row.Cells[0].Text + ".";
            }
        }

        protected void DTG_Proveedores_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           
            int IDLinea = DTG_Proveedores.SelectedIndex;
            if (IDLinea <= 0)
            {
                ProductosProveedor(DTG_Proveedores.Rows[e.NewSelectedIndex].Cells[0].Text, "");
                LBLCodProveedor.Text = DTG_Proveedores.Rows[e.NewSelectedIndex].Cells[0].Text.Trim();
                LBLNombreProveedor.Text = DTG_Proveedores.Rows[e.NewSelectedIndex].Cells[1].Text.Trim();
            }

        }

        protected void CMDCerraSession_Click(object sender, EventArgs e)
        {
            //ProductosProveedorInforme(LBLCodProveedor.Text,"");

        }

        protected void DTG_Productos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DTG_Productos.PageIndex = e.NewPageIndex;
            //LoadGridOrder();

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "registerorderevent", "RegisterEditOrderEvent();", true);
        }
        protected void CMDBuscarC_Click(object sender, EventArgs e)
        {
      

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "popupclose", "$('#TXTFiltroCliente').focus();", true);
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string supplierId = Convert.ToString(GridView1.DataKeys[e.NewSelectedIndex].Value);

            string companyName = GridView1.Rows[e.NewSelectedIndex].Cells[1].Text;

            string Telefono = GridView1.Rows[e.NewSelectedIndex].Cells[3].Text;


            string script = @"$(function(){{
                                SupplierSelected('{0}','{1}','{2}');
                            }});"; //se define {{ para poder usar el string.Format()

            script = string.Format(script, supplierId, companyName, Telefono);

            ScriptManager.RegisterStartupScript(Page, typeof(Page), "popupclose", script, true);
        }

    }

}