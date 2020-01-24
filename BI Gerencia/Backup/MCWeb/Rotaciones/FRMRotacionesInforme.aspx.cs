using System;
using System;
using System.Collections.Generic;
using System.Collections.Generic;
using System.Data;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Linq;
using System.Web;
using System.Web;
using System.Web.UI;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using CapaLogica;
using Microsoft.Reporting.WebForms;

namespace MCWeb.Rotaciones
{
    public partial class FRMRotacionesInforme : System.Web.UI.Page
    {
        public static string TCodProveedor;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //DataTable dt = new DataTable();
                //dt = (DataTable)Session["RptProductosProveedor"];
                ReportViewer1.Visible = true;
                ReportViewer1.LocalReport.EnableExternalImages = true;
                ReportViewer1.LocalReport.ReportEmbeddedResource = "MCWeb.Rotaciones.Reportes.rptReporteRotacionesProveedor.rdlc";//rptSALE 
                ReportViewer1.LocalReport.DataSources.Clear();
                System.Threading.Thread.Sleep(3000);
                ReportViewer1.LocalReport.Refresh();
                //dt.Rows.Add("-ML60959-24.jpg", "http://www.euromobilia.com/AlteaOnline/", "100");

                var datasource = new ReportDataSource("DataSet1", (DataTable)Session["RptProductosProveedor"]);
                ReportViewer1.LocalReport.DataSources.Add(datasource);
               
            }
            System.Threading.Thread.Sleep(3000);
            ReportViewer1.LocalReport.Refresh();
        }
        public static List<DT_Rotacion_ProveedorProductos> RPT_Rotacion_ProveedorProductos(DataTable dt)
        {

            List<DT_Rotacion_ProveedorProductos> Lista = new List<DT_Rotacion_ProveedorProductos>();
            //if (dt != null && dt.Rows.Count > 0)
            //{
            //    foreach (DataRow dr in dt.Rows)
            //    {
            //        Lista.Add(new DT_Rotacion_ProveedorProductos(
            //            dr["sCodigo_Producto"].ToString().ToLower().Trim(),
            //            dr["sDescripcion_Inventario"].ToString().ToLower().Trim(),
            //            Convert.ToDecimal(dr["VentaNeta"].ToString())
            //            ));
            //    }
            //}
            //else
            //{
            //    //listImagenes.Add(new ListaGlobalProductos("../ImagenesProductos/nodisponible.png"));
            //}

            return Lista;
        }
        public class DT_Rotacion_ProveedorProductos
        {
            public string sCodigo_Producto { get; set; }
            public string sDescripcion_Inventario { get; set; }
            public decimal VentaNeta { get; set; }
            public decimal CostoNeto { get; set; }
            public decimal UtilNeta { get; set; }
            public decimal Vendido { get; set; }
            public decimal Stock { get; set; }
            public decimal Stock_Min { get; set; }
            public decimal Transito { get; set; }
            public decimal Promedio { get; set; }

            //public DT_Rotacion_ProveedorProductos(
            //    string ssCodigo_Producto, string ssDescripcion_Inventario, decimal sVentaNeta, decimal sCostoNeto,
            //    decimal sUtilNeta, decimal sVendido, decimal sStock, decimal sStock_Min,
            //    decimal sTransito, decimal sPromedio)
            //{
            //    sCodigo_Producto = ssCodigo_Producto;
            //    sDescripcion_Inventario = ssDescripcion_Inventario;
            //    VentaNeta = sVentaNeta;
            //    CostoNeto = sCostoNeto;
            //    UtilNeta = sUtilNeta;
            //    Vendido = sVendido;
            //    Stock = sStock;
            //    Stock_Min = sStock_Min;
            //    Transito = sTransito;
            //    Promedio = sPromedio;

            //}
        }
    }
}