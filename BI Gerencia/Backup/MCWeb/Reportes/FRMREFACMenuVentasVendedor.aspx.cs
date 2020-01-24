using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;
using CapaLogica;
using CapaLogica.Reportes;
using System.Data;
using System.Web.Configuration;
using CapaLogica.Servicios;
using MCWeb.Data;
using Microsoft.Reporting.WebForms;


namespace MCWeb.Reportes
{
    public partial class FRMREINV04MenuFGP : System.Web.UI.Page
    {

        protected void Page_Load2(object sender, EventArgs e)
        {
          
        }

        protected void TXTProveedor2_TextChanged(object sender, EventArgs e)
        {
          
        }
        public DateTime FechaDesdeUno;
        public static List<ReporteVentasVendedorResumido> LPReporteVentasVendedorResumido(DateTime FechaDesde,DateTime FechaHasta)
        {
           
            List<ReporteVentasVendedorResumido> listImagenes = new List<ReporteVentasVendedorResumido>();
            DataTable dt = new DataTable();

            dt = GestorREVentas.VentasVendedorResumido(FechaDesde.Date, FechaHasta.Date);
            if (dt != null && dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    listImagenes.Add(new ReporteVentasVendedorResumido(
                        dr["sVendedor"].ToString().ToLower().Trim(),
                        dr["sNombre"].ToString().ToLower().Trim(),
                        Convert.ToDecimal(dr["TotalGeneral"].ToString())
                        ));
                }
            }
            else
            {
                //listImagenes.Add(new ListaGlobalProductos("../ImagenesProductos/nodisponible.png"));
            }

            return listImagenes;
        }
        public static List<ReporteVentasVendedorResumidoEncabezado> LPReporteVentasVendedorResumidoEncabezado()
        {
            List<ReporteVentasVendedorResumidoEncabezado> listImagenes = new List<ReporteVentasVendedorResumidoEncabezado>();
            DataTable dt = new DataTable();
            dt = GestorREVentas.VentasVendedorResumido(Convert.ToDateTime("1900-01-01"), Convert.ToDateTime("3000-01-01"));
            if (dt != null && dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    listImagenes.Add(new ReporteVentasVendedorResumidoEncabezado("25-01-1900", "01-01-3000", "Resumido", FRMLogin.UserAcceso.ToString(),FRMLogin.Empresa));
                }
            }
            else
            {
                //listImagenes.Add(new ListaGlobalProductos("../ImagenesProductos/nodisponible.png"));
            }

            return listImagenes;
        }
        public class ReporteVentasVendedorResumido
        {
            public string Codigo { get; set; }
            public string Nombre { get; set; }
            public decimal TotalVendedor { get; set; }

            public ReporteVentasVendedorResumido(string sCodigo, string sNombre, decimal sTotalVendedor)
            {
                Codigo = sCodigo;
                Nombre = sNombre;
                TotalVendedor = sTotalVendedor;
            }

        }
        public class ReporteVentasVendedorResumidoEncabezado
        {
            public string Desde { get; set; }
            public string Hasta { get; set; }
            public string Formato { get; set; }
            public string generadopor { get; set; }
            public string Empresa { get; set; }

            public ReporteVentasVendedorResumidoEncabezado(string sDesde, string sHasta, string sFormato, string sgeneradopor,string sEmpresa)
            {
                Desde = sDesde;
                Hasta = sHasta;
                Formato = sFormato;
                generadopor = sgeneradopor;
                Empresa = sEmpresa;


            }

        }

        protected void CMDGenerarInforme23_Click(object sender, EventArgs e)
        {
          
            ReportViewer12.Visible = true;
            if (CMBTipoReporte2.SelectedValue == "General")
            {

                ReportViewer12.LocalReport.ReportEmbeddedResource = "MCWeb.Reportes.rpt.rptVentasVendorResumido.rdlc";//rptSALE

            }
            else
            {
                ReportViewer12.LocalReport.ReportEmbeddedResource = "MCWeb.Reportes.rpt.rptVentasVendorResumido.rdlc";//rptSALE

            }

            //ReportViewer1.LocalReport.ReportPath = "report1.rdlc"; 
            ReportViewer12.LocalReport.DataSources.Clear();
            var datasource = new ReportDataSource("DataSet1", LPReporteVentasVendedorResumido(Convert.ToDateTime(DateFechaDesde.SelectedDate), Convert.ToDateTime(DateFechaHasta.SelectedDate)));
            ReportViewer12.LocalReport.DataSources.Add(datasource);
            var datasource2 = new ReportDataSource("DataSet2", LPReporteVentasVendedorResumidoEncabezado());
            ReportViewer12.LocalReport.DataSources.Add(datasource2);

            ReportViewer12.LocalReport.Refresh();
        }

       
    }
}