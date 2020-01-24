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
using System.Data;
using System.Web.Configuration;
using CapaLogica.Servicios;
using MCWeb.Data;
using Microsoft.Reporting.WebForms;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace MCWeb.Reportes
{
    public partial class FRMREINV04MenuFGP : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //TXTGrupo.Text = MCWeb.Productos.FRMBuscarFamilia.TipoFamilia;
                //TXTProveedor.Text = MCWeb.Productos.FRMBuscarProducto.TipoProvedor;

                if (Argumento == "Familia")
                {
                    TXTGrupo.Text = MCWeb.Productos.FRMBuscarFamilia.TipoFamilia;
                    TXTProveedor.Text = MCWeb.Productos.FRMBuscarFamilia.TipoProvedor;
                }
                else if (Argumento == "Proveedor")
                {
                    TXTGrupo.Text = MCWeb.Productos.FRMBuscarProducto.TipoFamilia;
                    TXTProveedor.Text = MCWeb.Productos.FRMBuscarProducto.TipoProvedor;
                }

            }
        }
        public static string Argumento;
        public static ReportViewer report;
        protected void CMDGenerarInforme_Click(object sender, EventArgs e)
        {
            //teststatic();
            //DSCatalogoProductos DS = new DSCatalogoProductos();
            //DataTable dt = new DataTable();
            //dt = GestorIN04.TableProductosPdf ();

            //foreach (DataRow dr in dt.Rows)
            //{
            //    DSCatalogoProductos.DSProductosRow row = DS.DSProductos.NewDSProductosRow();
            //    row.CodigoProducto = Convert.ToString(dr["sCodigo_Producto"].ToString());
            //    row.Descripcion = Convert.ToString(dr["DescripcionProducto"].ToString());
            //    row.PrecioVenta = Convert.ToDecimal(dr["PrecioVenta"].ToString());
            //    row.Moneda = Convert.ToString(dr["Moneda"].ToString());
            //    row.DatosTecnicos = Convert.ToString(dr["DatosTecnicos"].ToString());
            //    //row.CodigoProducto = Convert.ToString(dr["sCodigo_Producto"].ToString());
            //    DS.DSProductos.AddDSProductosRow(row);

            //}
         
           // ReportViewer1.Visible = true;
           // if (CMBTipoReporte.SelectedValue == "General")
           // {

           //     ReportViewer1.LocalReport.ReportEmbeddedResource = "MCWeb.rptLPGlobalGeneral.rdlc";//rptSALE
           // }
           // else
           // {
           //     ReportViewer1.LocalReport.ReportEmbeddedResource = "MCWeb.rptLPGlobal.rdlc";//rptSALE
           // }
       
           // //ReportViewer1.LocalReport.ReportPath = "report1.rdlc"; 
           // ReportViewer1.LocalReport.DataSources.Clear();
           // var datasource = new ReportDataSource("DataSet1",LPGlobal(TXTGrupo.Text,TXTProveedor.Text));
           // ReportViewer1.LocalReport.DataSources.Add(datasource);
           // ReportViewer1.LocalReport.Refresh();

           // Warning[] warnings;
           // string[] streamids;
           // string mimeType;
           // string encoding;
           // string filenameExtension;
           // byte[] bytes = ReportViewer1.LocalReport.Render(
           //     "PDF", null, out mimeType, out encoding, out filenameExtension,
           //     out streamids, out warnings);
           
           // //  fs.Name = @"C:\output.pdf";
           //string TcadenaEstadoCuenta = @"c:\dsg\boletaaceptacion.pdf";
           //FileStream fs;
           //fs = null;
           // using (fs = new FileStream(TcadenaEstadoCuenta, FileMode.Create))
           // {
           //     fs.Write(bytes, 0, bytes.Length);
           //     fs.Close();
           // }
           // MailMessage msg = new MailMessage();
           // msg.To.Add(new MailAddress("dvargas@euromobilia.com"));
           // msg.From = new MailAddress("dvargas@euromobilia.com");
           // msg.Subject = "boleta aceptacion";
           // SmtpClient clienteSmtp = new SmtpClient("mail.strauss-water.cr");
           // clienteSmtp.Credentials =
           //   new NetworkCredential("servicioalcliente@strauss-water.cr", "strauss");
           // Attachment Data = new Attachment(TcadenaEstadoCuenta, MediaTypeNames.Application.Zip);
           // //Obtengo las propiedades del archivo.
           // System.Net.Mime.ContentDisposition
           // disposition = Data.ContentDisposition;
           // disposition.CreationDate = System.IO.File.GetCreationTime(TcadenaEstadoCuenta);
           // disposition.ModificationDate = System.IO.File.GetLastWriteTime(TcadenaEstadoCuenta);
           // disposition.ReadDate = System.IO.File.GetLastAccessTime(TcadenaEstadoCuenta);
           // //Agrego el archivo al mensaje
           // msg.Attachments.Add(Data);
           // clienteSmtp.EnableSsl = false;
           // clienteSmtp.Port = 26;
           // clienteSmtp.Send(msg);

        }
        public static void teststatic()
        {

            report = new ReportViewer();
            //report.Visible = true;

                report.LocalReport.ReportEmbeddedResource = "MCWeb.rptLPGlobalGeneral.rdlc";//rptSALE
         

            //ReportViewer1.LocalReport.ReportPath = "report1.rdlc"; 
                report.LocalReport.DataSources.Clear();
            var datasource = new ReportDataSource("DataSet1", LPGlobal("",""));
            report.LocalReport.DataSources.Add(datasource);
            report.LocalReport.Refresh();

            Warning[] warnings;
            string[] streamids;
            string mimeType;
            string encoding;
            string filenameExtension;
            byte[] bytes = report.LocalReport.Render(
                "PDF", null, out mimeType, out encoding, out filenameExtension,
                out streamids, out warnings);

            //  fs.Name = @"C:\output.pdf";
            string TcadenaEstadoCuenta = @"c:\dsg\boletaaceptacion.pdf";
            FileStream fs;
            fs = null;
            using (fs = new FileStream(TcadenaEstadoCuenta, FileMode.Create))
            {
                fs.Write(bytes, 0, bytes.Length);
                fs.Close();
            }
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress("dvargas@euromobilia.com"));
            msg.From = new MailAddress("dvargas@euromobilia.com");
            msg.Subject = "boleta aceptacion";
            SmtpClient clienteSmtp = new SmtpClient("mail.strauss-water.cr");
            clienteSmtp.Credentials =
              new NetworkCredential("servicioalcliente@strauss-water.cr", "strauss");
            Attachment Data = new Attachment(TcadenaEstadoCuenta, MediaTypeNames.Application.Zip);
            //Obtengo las propiedades del archivo.
            System.Net.Mime.ContentDisposition
            disposition = Data.ContentDisposition;
            disposition.CreationDate = System.IO.File.GetCreationTime(TcadenaEstadoCuenta);
            disposition.ModificationDate = System.IO.File.GetLastWriteTime(TcadenaEstadoCuenta);
            disposition.ReadDate = System.IO.File.GetLastAccessTime(TcadenaEstadoCuenta);
            //Agrego el archivo al mensaje
            msg.Attachments.Add(Data);
            clienteSmtp.EnableSsl = false;
            clienteSmtp.Port = 26;
            clienteSmtp.Send(msg);
        }
        public static List<ListaGlobalProductos> LPGlobal(string GRUPO, string PROVEEDOR)
        {
            List<ListaGlobalProductos> listImagenes = new List<ListaGlobalProductos>();
            DirectoryInfo dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + "ImagenesProductos");
            FileInfo[] fileList = dir.GetFiles("*.*", SearchOption.AllDirectories);

            var fileQuery = from file in fileList
                            where file.Extension == ".jpg"
                            orderby file.Name
                            select file;
            
                DataTable dt = new DataTable();
                dt = GestorIN04.TableProductosPdf(PROVEEDOR,GRUPO);
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        string valor = dr["CODIMAGEN"].ToString().ToLower().Trim();
                        System.Drawing.Image  image;
                        image = imag(AppDomain.CurrentDomain.BaseDirectory +"/ImagenesProductos/"+valor);
                        byte[] test = imageToByteArray(image);
                        listImagenes.Add(new ListaGlobalProductos(dr["sCodigo_Producto"].ToString().ToLower().Trim(), dr["DescripcionProducto"].ToString().ToLower().Trim(),
                            test, dr["Moneda"].ToString().ToLower().Trim(), Convert.ToDecimal(dr["PrecioVenta"].ToString()),
                            dr["DatosTecnicos"].ToString().ToLower().Trim()
                            ));
                    }
                }
                else
                {
                    //listImagenes.Add(new ListaGlobalProductos("../ImagenesProductos/nodisponible.png"));
                }
            
            return listImagenes;
        }
        public static System.Drawing.Image imag(string file)
        {
            System.Drawing.Image ima = System.Drawing.Image.FromFile(file);
            return ima;
        }

        public static byte[] imageToByteArray(System.Drawing.Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            return ms.ToArray();
        }



        public class ListaGlobalProductos
        {
            public string CodigoProducto { get; set; }
            public string Descripcion { get; set; }
            public string Moneda { get; set; }
            public decimal PrecioVenta { get; set; }
            public string DatosTecnicos { get; set; }

            public Byte[] Imagen { get; set; }


            public ListaGlobalProductos(string sCodigoProducto, string sDescripcion, byte[] sImagen, string sMoneda, decimal sPrecioVenta, string sDatosTecnicos)
            {
                CodigoProducto = sCodigoProducto;
                Descripcion = sDescripcion;
                Imagen = sImagen;
                Moneda = sMoneda;
                DatosTecnicos = sDatosTecnicos;
                PrecioVenta = sPrecioVenta;
            }

        }

        protected void CMDCodigoProducto_Click(object sender, EventArgs e)
        {
            MCWeb.Productos.FRMBuscarProducto.Tipo = "Fami";
            MCWeb.Productos.FRMBuscarFamilia.TipoFamilia = TXTGrupo.Text;
            MCWeb.Productos.FRMBuscarFamilia.TipoProvedor = TXTProveedor.Text;

            Response.Redirect("~/Productos/FRMBuscarFamilia.aspx");
        }

        protected void CMDPrecio_Click(object sender, EventArgs e)
        {
            MCWeb.Productos.FRMBuscarProducto.Tipo = "Prove";
            MCWeb.Productos.FRMBuscarProducto.TipoFamilia = TXTGrupo.Text;
            MCWeb.Productos.FRMBuscarProducto.TipoProvedor = TXTProveedor.Text;

            Response.Redirect("~/Productos/FRMBuscarProducto.aspx");
        }
       
    }
}