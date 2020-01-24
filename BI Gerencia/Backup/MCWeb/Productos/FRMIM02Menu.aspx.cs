using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Windows.Forms;
using CapaLogica;
using System.Data;
using System.Web.Configuration;
namespace MCWeb.Productos
{
    public partial class FRMIM02Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CProductos = 0;
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
          
            if (this.FileUpload1.HasFile)
            {
                this.FileUpload1.SaveAs(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" +
                    this.FileUpload1.FileName);
                PicImagenCargada.ImageUrl = ("~/ImagenesProductos/") + FileUpload1.FileName;
                NombreImagen = FileUpload1.FileName;
                load = FileUpload1;

            }
            if (FRMBuscarProducto.Codigo != null && FRMBuscarProducto.Codigo.Trim() != "")
            {
                Navegar(GestorIN04.NavegacionIN04(" where sCodigo_Producto = '" + FRMBuscarProducto.Codigo + "' ORDER BY sCodigo_Producto DESC "));
            }
            else
            {
                Navegar(GestorIN04.NavegacionIN04(" ORDER BY sCodigo_Producto DESC "));
            }
            CProductos = 0;

            if (!IsPostBack)
            {
                DirectoryInfo dirInfo = new DirectoryInfo(Server.MapPath("~/ImagenesProductos"));
                FileInfo[] fileInfo = dirInfo.GetFiles("*.*", SearchOption.AllDirectories);
            }
            CargardeImagenes();
        }
        private void Navegar(DataTable dt)
        {
            if (dt != null && dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                   TXTItem.Text = dr["sCodigo_Producto"].ToString();
                   TXTDescripcion.Text = dr["sDescripcion_Inventario"].ToString();
                }
            }
        }
        protected void TXTDescripcion_TextChanged(object sender, EventArgs e)
        {

        }
        private void CargardeImagenes()
        {
            // Modify these numbers for the thumbnail size you want
            try
            {
                const int maxWidth = 200;
                const int maxHeight = 200;

                ArrayList pics = new ArrayList();
                string html;
                int imgHeight;
                int imgWidth;
                DataTable dt = new DataTable();
                dt = GestorIN04.CargarListaImagenes(TXTItem.Text);
                ArrayList array = new ArrayList();
                string[] imagenes = { "basel1.jpg", "basel2.jpg", "basel3.jpg", "basel5.jpg" };
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        array.Add(dr["IMName"].ToString());
                    }


                    DirectoryInfo dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\");
                    foreach (string s in array)//Directory.GetFiles("~/ImagenesProductos", "*.jpg"))//Server.MapPath("")
                    {
                        System.Drawing.Image currentImage = System.Drawing.Image.FromFile(dir.FullName + "" + s.ToString());

                        imgHeight = currentImage.Height;
                        imgWidth = currentImage.Width;
                        if ((imgWidth > maxWidth) || (imgHeight > maxHeight))
                        {
                            int deltaWidth = imgWidth - maxWidth;
                            int deltaHeight = imgHeight - maxHeight;
                            double scaleFactor;

                            if (deltaHeight > deltaWidth)
                            {
                                scaleFactor = Convert.ToDouble(maxHeight) / imgHeight;
                            }
                            else
                            {
                                scaleFactor = Convert.ToDouble(maxWidth) / imgWidth;
                            }

                            imgWidth = Convert.ToInt32(imgWidth * scaleFactor);
                            imgHeight = Convert.ToInt32(imgHeight * scaleFactor);
                        }

                        if ((imgHeight != currentImage.Height) || (imgWidth != currentImage.Width))
                        {
                            html = "<a href=\"~/Productos/viewimage.aspx?img=" + Path.GetFileName(s.ToString()) + "\">" + "<img border=\"2\"  src=\"getthumb.aspx?img=" + Path.GetFileName(s.ToString()) + "&w=" + imgWidth.ToString() + "&h=" + imgHeight.ToString() + "\" " + "height=\"" + imgHeight + "\" width=\"" + imgWidth + "\">" + "</a>";

                            PicImagenCargada.ImageUrl = ("~/ImagenesProductos/") + Path.GetFileName(s.ToString());
                        }
                        else
                        {
                            PicImagenCargada.ImageUrl = ("~/ImagenesProductos/") + Path.GetFileName(s.ToString());
                            html = "<a href=\"~/Productos/viewimage.aspx?img=" + Path.GetFileName(s.ToString()) + "\">" + "<img border=\"2\" src=\"getthumb.aspx?img=" + Path.GetFileName(s.ToString()) + "\" " + "height=\"" + imgHeight.ToString() + "\" width=\"" + imgWidth.ToString() + "\">" + "</a>";
                        }

                        pics.Add(html);
                        currentImage.Dispose();
                    }
                    dlPictures.DataSource = pics;
                    dlPictures.DataBind();
                }
            }
            catch (Exception EX)
            {
                MessageBox.Show(EX.Message);
            }
        }
        private static string NombreImagen;
        protected void CMDExaminar_Click(object sender, EventArgs e)
        {
            FileUpload load = new FileUpload();
            OpenFileDialog open = new OpenFileDialog();
            open.Filter = "Archivo JPG|*.jpg PNG|*. PNG";
            if (open.ShowDialog() == DialogResult.OK)
            {
        
                if (load.HasFile)
                {

                    string filename = Path.GetFileName(Path.GetFileName(load.FileName));
                    load.SaveAs(Server.MapPath("~/ImagenesProductos/") + filename);
                    PicImagenCargada.ImageUrl = ("~/ImagenesProductos/") + filename;

                }
            }
        }
        private static FileUpload load;
        protected void CMDIncluir_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt = GestorIN04.InsertImagen(TXTItem.Text, FRMLogin.UserAcceso);
            string Nombreasignado = "";
            if (dt != null && dt.Rows.Count > 0)             
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Nombreasignado = dr["Nombre"].ToString();
                }
            }
         
            if (load.HasFile)
            {
                this.FileUpload1.SaveAs(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" +
                    Nombreasignado);
            }
            CargardeImagenes();
        }
       
        public static int  CProductos;
        protected void CMDBuscar_Click(object sender, EventArgs e)
        {
            CProductos = 1;
            Response.Redirect("/Productos/FRMBuscarProducto.aspx");
        }

        protected void dlPictures_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void dlPictures_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            string item = "";
            item = e.Item.DataItem.ToString();

            DataListItem item2 = default(DataListItem);
            if (dlPictures.Items.Count > 0)
            {
                item2 = dlPictures.SelectedItem;
                int valor = dlPictures.SelectedIndex;
                if (valor > 0)
                {
                    item = dlPictures.Items[valor].ToString();

                    MessageBox.Show("");
                }
            }
        }
    }
}