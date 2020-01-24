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
//using System;

//using System.Data;

//using System.Configuration;

//using System.Web.Security;

//using System.Web.UI;

//using System.Web.UI.WebControls;

//using System.Web.UI.WebControls.WebParts;

//using System.Web.UI.HtmlControls;
using System.Net;
using System.Diagnostics;
using System.Data;
using System.Collections;
using Microsoft.VisualBasic;
using System.Collections.Generic;
using System;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;
using System.Xml;
using System.Xml.Serialization;
using CapaLogica.Servicios;

namespace MCWeb.Productos
{
    public partial class FRMIMV02Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CProductos = 0;
            if (!IsPostBack)
            {
                //UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
                ////GestorIN04.Connection(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString);
                ////DataAccess.Conexion(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString);
                //GestorAccess.Conectividad(DB);
            }
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

        protected void CMDBuscar_Click(object sender, EventArgs e)
        {

            CProductos = 1;
            sCProductos = "~/Productos/FRMIMV02Menu.aspx";
            Response.Redirect("/Productos/FRMBuscarProducto.aspx");
        }

        public static int CProductos;
        public static string  sCProductos;

        private static FileUpload load;
        private static string NombreImagen;

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
                        System.Drawing.Image currentImage;
                        try
                        {
                            currentImage = System.Drawing.Image.FromFile(dir.FullName + "" + s.ToString());
                        }
                        catch (Exception ex)
                        {
                            currentImage = System.Drawing.Image.FromFile(dir.FullName + "" + "nodisponible.png");
                        }

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
                    //dlPictures.DataSource = pics;
                    //dlPictures.DataBind();
                    GridView1.DataSource = GetData(GestorIN04.CargarListaImagenes(TXTItem.Text));
                    GridView1.DataBind();

                }
                else
                {
                    GridView1.DataSource = GetData(GestorIN04.CargarListaImagenes(TXTItem.Text));
                    GridView1.DataBind();
                }
            }
            catch (Exception EX)
            {
                // MessageBox.Show(EX.Message);
            }
        }


        public DataTable GetData(DataTable lista)
        {
            // This method creates a DataTable with four rows.  Each row has the
            // following schema:
            //   PictureID      int
            //   PictureURL     string
            //   Title          string
            //   DateAdded      datetime
            DataTable dts = new DataTable();
            // define the table's schema
            dts.Columns.Add(new DataColumn("IDLinea", typeof(int)));
            dts.Columns.Add(new DataColumn("Imagen", typeof(string)));
            dts.Columns.Add(new DataColumn("GImagen", typeof(string)));
            //dt.Columns.Add(new DataColumn("DateAdded", typeof(DateTime)));
            // Create the four records
            foreach (DataRow row in lista.Rows)
            {

                DataRow dr = dts.NewRow();
                dr["IDLinea"] = Convert.ToInt32(row["IDLinea"].ToString());
                dr["GImagen"] = ResolveUrl("~/ImagenesProductos/" + row["IMName"].ToString());
                dr["Imagen"] = Convert.ToString(row["IMName"].ToString());
                dts.Rows.Add(dr);
            }



            //DataRow dr = dt.NewRow();
            //dr["PictureID"] = 1;
            //dr["PictureURL"] = ResolveUrl("~/DisplayingImages/Images/Blue hills.jpg");
            //dr["Title"] = "Blue Hills";
            //dr["DateAdded"] = new DateTime(2005, 1, 15);
            //dt.Rows.Add(dr);
            //dr = dt.NewRow();
            //dr["PictureID"] = 2;
            //dr["PictureURL"] = ResolveUrl("~/DisplayingImages/Images/Sunset.jpg");
            //dr["Title"] = "Sunset";
            //dr["DateAdded"] = new DateTime(2005, 1, 21);
            //dt.Rows.Add(dr);
            //dr = dt.NewRow();
            //dr["PictureID"] = 3;
            //dr["PictureURL"] =
            //  ResolveUrl("~/DisplayingImages/Images/Water lilies.jpg");
            //dr["Title"] = "Water Lilies";
            //dr["DateAdded"] = new DateTime(2005, 2, 1);
            //dt.Rows.Add(dr);
            //dr = dt.NewRow();
            //dr["PictureID"] = 4;
            //dr["PictureURL"] = ResolveUrl("~/DisplayingImages/Images/Winter.jpg");
            //dr["Title"] = "Winter";
            //dr["DateAdded"] = new DateTime(2005, 2, 18);
            //dt.Rows.Add(dr);
            return dts;
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
        #region Pruebas

        //         if (load.PostedFile != null && !string.IsNullOrEmpty(load.PostedFile.FileName)) { 
        // int MaxSize = load.PostedFile.ContentLength;

        // //--------------------------
        // // set up request...
        // string LocFile = load.PostedFile.FileName;
        //System.Net.FtpWebRequest clsRequest = (System.Net.FtpWebRequest)System.Net.WebRequest.Create("ftp://www.designvq.com/cnc");//ftp://ventaporcatalogos.freeiz.com/ALTEA

        //clsRequest.Credentials = new System.Net.NetworkCredential("gabita1010", "Gabita011009@");//a3429297     Ariane512
        //clsRequest.Method = System.Net.WebRequestMethods.Ftp.UploadFile;

        //FtpWebResponse ftlresponse = clsRequest.GetResponse() as FtpWebResponse;




        //Stream respstrem = ftlresponse.GetResponseStream();


        //// read in file...


        //// byte[] bFile = System.IO.File.ReadAllBytes(load.PostedFile.FileName);

        //byte[] bFile = System.IO.File.ReadAllBytes(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" + Nombreasignado);

        //// upload file...
        //System.IO.Stream clsStream = clsRequest.GetRequestStream();


        //clsStream.Write(bFile, 0, bFile.Length);
        //clsStream.Close();
        //clsStream.Dispose();


        //--------------------------


        //} else {

        //}

        //Settings required to establish a connection with the server
        //this.ftpRequest = (FtpWebRequest)FtpWebRequest.Create(new Uri("ftp://ventaporcatalogos.freeiz.com/Altea"));
        //this.ftpRequest.Method = WebRequestMethods.Ftp.UploadFile;
        //this.ftpRequest.Proxy = null;
        //this.ftpRequest.UseBinary = true;
        //this.ftpRequest.Credentials = new NetworkCredential("a3429297", "Ariane512");

        ////Selection of file to be uploaded
        //FileInfo ff = new FileInfo("File Local Path With File Name");//e.g.: c:\\Test.txt

        //byte[] fileContents = new byte[load.FileBytes.Length ];

        //using (FileStream fr = ff.OpenRead()) //will destroy the object immediately after being used
        //{
        //    fr.Read(fileContents, 0, Convert.ToInt32(ff.Length));
        //}

        //using (Stream writer = ftpRequest.GetRequestStream())
        //{
        //    writer.Write(fileContents, 0, fileContents.Length);
        //}

        //this.ftpResponse = (FtpWebResponse)this.ftpRequest.GetResponse(); //Gets the FtpWebResponse of the uploading operation
        //Response.Write(this.ftpResponse.StatusDescription); //Display response
        #endregion
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

                //Subir(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" +
                //    Nombreasignado, Nombreasignado);
                //UploadFTP("", AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" +
                 //   Nombreasignado, "ALTEA/" + Nombreasignado);
                //UploadFTPXML("", AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\" +
                //  Nombreasignado, "ALTEA/" + Nombreasignado);

            }
            CargardeImagenes();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            EliminarProducto();

        }
        private void EliminarProducto()
        {
            int lin = GridView1.SelectedIndex;
            GridViewRow row = GridView1.SelectedRow as GridViewRow;

            if (row != null)
            {
                string linea = Convert.ToString(row.Cells[0].Text);
                GestorIN04.WIM_DELETE(Convert.ToInt32(linea),FRMLogin.UserAcceso );
                CargardeImagenes();
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        FtpWebRequest ftpRequest;
        FtpWebResponse ftpResponse;
        public void Subir(string file, string NombreArchivo)
        {

            try
            {
                //Settings required to establish a connection with the server
                Uri relative = new System.Uri("ALTEA/" + NombreArchivo, UriKind.Relative);
                Uri absolete = new System.Uri("ftp://ventaporcatalogos.freeiz.com/");
                this.ftpRequest = (FtpWebRequest)FtpWebRequest.Create(new Uri(absolete, relative));//
                this.ftpRequest.Method = WebRequestMethods.Ftp.UploadFile;
                this.ftpRequest.Proxy = null;
                this.ftpRequest.UseBinary = true;
                this.ftpRequest.Credentials = new NetworkCredential("a3429297", "Ariane512");//a3429297   Ariane512Ariane512

                //Selection of file to be uploaded
                FileInfo ff = new FileInfo(file);//e.g.: c:\\Test.txt
                byte[] fileContents = new byte[ff.Length];

                //using (FileStream fr = ff.OpenRead()) //will destroy the object immediately after being used
                //{
                //    fr.Read(fileContents, 0, Convert.ToInt32(ff.Length));
                //}


                using (Stream writer = ftpRequest.GetRequestStream())
                {
                    writer.Write(fileContents, 0, fileContents.Length);
                }

                this.ftpResponse = (FtpWebResponse)this.ftpRequest.GetResponse(); //Gets the FtpWebResponse of the uploading operation
                Response.Write(this.ftpResponse.StatusDescription); //Display response

                DataTable dt = new System.Data.DataTable();
                dt = GestorIN04.TableXMLProductos();
                dt.TableName = "Productos";

                StreamWriter serial;
                serial = new System.IO.StreamWriter("testxml.xml");
                XmlSerializer witer = new XmlSerializer(dt.GetType());
                witer.Serialize(serial, dt);
                serial.Close();
                dt.Clear();



                //Stream writer2 = ftpRequest.GetRequestStream();
                //{
                //    writer2.Write(serial, 0, serial.BaseStream.Length);
                //}


                //archivo = dt.x



            }
            catch (WebException webex)
            {
                // this.Message = webex.ToString();
            }
        }
        public void UploadFTP(string RemotePath, string FilePath, string file)
        {

            FileStream fs = new FileStream(FilePath, FileMode.Open, FileAccess.Read, FileShare.Read);





            using ((fs))
            {

                //Dim url As String = Path.Combine(RemotePath, Path.GetFileName(FilePath))

                //Creo el objeto ftp
                //ftp;
                //ftp = new FtpWebRequest();
                Uri files = new System.Uri(file, UriKind.Relative);
                Uri web = new Uri("ftp://ventaporcatalogos.freeiz.com/");
                FtpWebRequest ftp = (FtpWebRequest)FtpWebRequest.Create(new Uri(web, files));

                //= FtpWebRequest.Create ("ventaporcatalogos.freeiz.com");

                // Fijo las credenciales, usuario y contraseña
                ftp.Credentials = new NetworkCredential("a3429297", "Ariane512");

                //Le digo que no mantenga la conexión activa al terminar.
                ftp.KeepAlive = false;

                // Indicamos que la operación es subir un archivo...
                ftp.Method = WebRequestMethods.Ftp.UploadFile;

                // … en modo binario … (podria ser como ASCII)
                ftp.UseBinary = true;

                //Indicamos la longitud total de lo que vamos a enviar.
                ftp.ContentLength = fs.Length;


                // Desactivo cualquier posible proxy http.
                // Ojo pues de saltar este paso podría usar 
                // un proxy configurado en iexplorer
                ftp.Proxy = null;

                //Pongo el stream al inicio
                fs.Position = 0;


                // Configuro el buffer a 2 KBytes
                Int16 buffLength = 2048;
                byte[] buff = new byte[buffLength + 1];
                int contentLen = 0;


                // obtener el stream del socket sobre el que se va a escribir.
                Stream strm = ftp.GetRequestStream();


                using ((strm))
                {

                    /// Leer del buffer 2kb cada vez
                    contentLen = fs.Read(buff, 0, buffLength);

                    //// mientras haya datos en el buffer ….

                    while ((contentLen != 0))
                    {
                        // escribir en el stream de conexión
                        strm.Write(buff, 0, contentLen);

                        //el contenido del stream del fichero
                        contentLen = fs.Read(buff, 0, buffLength);

                    }

                }
                strm.Close();

            }

        }
        public void UploadFTPXML(string RemotePath, string FilePath, string file)
        {


            // Configuro el buffer a 2 KBytes
            Int16 buffLength = 2048;
            byte[] buff = new byte[buffLength + 1];
            int contentLen = 0;

            DataTable dt = new System.Data.DataTable();
            dt = GestorIN04.TableXMLProductos();
            dt.TableName = "Productos";
            dt.WriteXml(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\testXML.xml");
            FileStream fs2 = new FileStream(AppDomain.CurrentDomain.BaseDirectory + @"ImagenesProductos\testXML.xml", FileMode.Open, FileAccess.Read, FileShare.Read);

            Uri files2 = new System.Uri("ALTEA/testXML.xml", UriKind.Relative);
            Uri web2 = new Uri("ftp://ventaporcatalogos.freeiz.com/");
            FtpWebRequest ftp2 = (FtpWebRequest)FtpWebRequest.Create(new Uri(web2, files2));

            //= FtpWebRequest.Create ("ventaporcatalogos.freeiz.com");

            // Fijo las credenciales, usuario y contraseña
            ftp2.Credentials = new NetworkCredential("a3429297", "Ariane512");

            //Le digo que no mantenga la conexión activa al terminar.
            ftp2.KeepAlive = false;

            // Indicamos que la operación es subir un archivo...
            ftp2.Method = WebRequestMethods.Ftp.UploadFile;

            // … en modo binario … (podria ser como ASCII)
            ftp2.UseBinary = true;

            //Indicamos la longitud total de lo que vamos a enviar.
            ftp2.ContentLength = fs2.Length;


            // Desactivo cualquier posible proxy http.
            // Ojo pues de saltar este paso podría usar 
            // un proxy configurado en iexplorer
            ftp2.Proxy = null;

            //Pongo el stream al inicio
            fs2.Position = 0;

            Stream strm2 = ftp2.GetRequestStream();
            using ((strm2))
            {

                /// Leer del buffer 2kb cada vez
                contentLen = fs2.Read(buff, 0, buffLength);

                //// mientras haya datos en el buffer ….

                while ((contentLen != 0))
                {
                    // escribir en el stream de conexión
                    strm2.Write(buff, 0, contentLen);

                    //el contenido del stream del fichero
                    contentLen = fs2.Read(buff, 0, buffLength);

                }

            }
            strm2.Close();
            fs2.Close();


        }
    }
}