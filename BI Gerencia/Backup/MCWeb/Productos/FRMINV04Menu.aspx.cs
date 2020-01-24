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

namespace MCWeb.Productos
{
    public partial class FRMINV04Menu : System.Web.UI.Page
    {
        public static int CProductos;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               if (FRMBuscarProducto.Codigo != null && FRMBuscarProducto.Codigo.Trim() != "")
                {
                    Navegar(GestorIN04.NavegacionIN04(" where sCodigo_Producto = '" + FRMBuscarProducto.Codigo + "' ORDER BY sCodigo_Producto DESC "));
                }
                else
                {
                    Navegar(GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto DESC "));
                }
                CProductos = 0;
            }
        }
          [WebMethod()]
        public static List<Imagenes> Galeria()
        {
            List<Imagenes> listImagenes = new List<Imagenes>();
            DirectoryInfo dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + "ImagenesProductos");
            FileInfo[] fileList = dir.GetFiles("*.*", SearchOption.AllDirectories);

            var fileQuery = from file in fileList
                            where file.Extension == ".jpg"
                            orderby file.Name
                            select file;
            if (CodigoProducto != null)
            {
                DataTable dt = new DataTable();
                dt = GestorIN04.CargarListaImagenes(CodigoProducto);
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        string valor = dr["IMName"].ToString().ToLower().Trim();
                        listImagenes.Add(new Imagenes("../ImagenesProductos/" + valor.Trim()));
                    }
                }
                else
                {
                    listImagenes.Add(new Imagenes("../ImagenesProductos/nodisponible.png"));
                }
            }
            return listImagenes;
        }
        public class ListaGlobalProductos
        {
            public string CodigoProducto { get; set; }
            public ListaGlobalProductos(string sCodigoProducto)
        {
            CodigoProducto = sCodigoProducto;
        }
            
        }
        private Image imag(string file)
        {
            Image ima = new Image();
            ima.ImageUrl = file;
            return ima;
        }
        public class Imagenes
        {
            public string imagen { get; set; }
            public Imagenes(string sImagen)
            {
                imagen = sImagen;
            }
        }
        public static string CodigoProducto;
        private void Navegar(DataTable dt)
        {
            if (dt != null && dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    CodigoProducto = Convert.ToString(dr["sCodigo_Producto"].ToString());
                    TXTItem.Text = Convert.ToString(dr["sCodigo_Producto"].ToString());
                    TXTDescripcion.Text = Convert.ToString(dr["sDescripcion_Inventario"].ToString());
                    TXTPrecioPublico.Text = Convert.ToDecimal(dr["cPrecio_Publico"].ToString()).ToString("N2");
                    TXTDatosTecnicos.Text = Convert.ToString(dr["sDatosTecnicos"].ToString());
                    //CMBImpuesto.SelectedIndex = Convert.ToInt32(dr["bImpuesto"].ToString());
                    CMDMoneda.SelectedIndex = Convert.ToInt32(dr["bMoneda"].ToString());
                    DataTable saldos = new DataTable();
                    saldos = GestorIN04.BuscarSaldos(TXTItem.Text);
                    GridView1.DataSource = saldos;
                    GridView1.DataBind();


                }
            }
        }
        protected void CMDBuscar_Click(object sender, EventArgs e)
        {

            CProductos = 1;
            Response.Redirect("/Productos/FRMBuscarProducto.aspx");
        }

        protected void CMDPrimero_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto ASC ");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
        }

        protected void CMDUltimo_Click(object sender, EventArgs e)
        {

            Navegar(GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto DESC "));
        }

        protected void CMDAtras_Click(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            dt = GestorIN04.NavegacionIN04("WHERE sCodigo_Producto < '" + TXTItem.Text + "' ORDER BY sCodigo_Producto DESC ");
            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }
            else
            {
                DataTable dt2 = new DataTable();
                dt2 = GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto ASC ");
                if (dt2 != null && dt2.Rows.Count > 0)
                {
                    Navegar(dt2);
                }
            }
        }

        protected void CMDAdelante_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = GestorIN04.NavegacionIN04("WHERE sCodigo_Producto > '" + TXTItem.Text + "' ORDER BY sCodigo_Producto ASC ");
            //dt = GestorIN04.testproductos(TXTItem.Text);

            if (dt != null && dt.Rows.Count > 0)
            {
                Navegar(dt);
            }

            else
            {
                DataTable dt2 = new DataTable();
                dt2 = GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto DESC ");
                if (dt2 != null && dt2.Rows.Count > 0)
                {
                    Navegar(dt2);
                }
            }
        }

        protected void CMDComprar_Click(object sender, EventArgs e)
        {
            decimal cantidad = 0;
            try
            {
                cantidad = Convert.ToDecimal(TXTCantidad.Text);
            }catch
            {
                cantidad = 1;
            }
            GestorFA00.WEB_INSERT_IN04_Producto(Session["IDUsuario"].ToString(), SiteMaster1.PedidoUsuario, TXTItem.Text,cantidad);
        }
    }
}