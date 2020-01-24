using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;
using System.Collections;
using System.Data;
using CapaLogica;
namespace MCWeb
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
              [WebMethod()]
        public static List<Imagenes> Galeria()
        {
            List<Imagenes> listImagenes = new List<Imagenes>();
            DirectoryInfo dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + "ImagenesProductos");
            FileInfo[] fileList = dir.GetFiles("*.*",SearchOption.AllDirectories);

            var fileQuery = from file in fileList
                            where file.Extension == ".jpg"
                            orderby file.Name
                            select file;
            string CodigoProducto = "si";
            if (CodigoProducto != null)
            {
                DataTable dt = new DataTable();
                dt = GestorIN04.CargarListaImagenes(CodigoProducto);
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        string valor = dr["IMName"].ToString().ToLower().Trim();
                        listImagenes.Add(new Imagenes("ImagenesProductos/" + valor.Trim()));
                        
                    }
                }
            }
            //string[] imagenes = { "Chrysanthemum.jpg", "Desert.jpg", "Hydrangeas.jpg", "Koala.jpg", "si_____________1.JPG" };
            //foreach (string imag in imagenes)
            //{
                
            //    listImagenes.Add(new Imagenes("ImagenesProductos/" + imag));
            //}
            //foreach (var file in fileQuery)
            //{
            //    listImagenes.Add(new Imagenes("imagesUp/" + file.Name));
            //}
            return listImagenes;
        }
    }

    public class Imagenes
    {
        public string imagen { get; set; }
        public Imagenes (string sImagen)
        {
            imagen = sImagen;
        }
    }
    }
