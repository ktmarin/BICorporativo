﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.Services;


namespace MCWeb
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            string[] imagenes = { "basel1.jpg", "basel2.jpg", "basel3.jpg", "basel5.jpg" };
            foreach (string imag in imagenes)
            {
                listImagenes.Add(new Imagenes("ImagenesProductos/" + imag));
            }
            //foreach (var file in fileQuery)
            //{
            //    listImagenes.Add(new Imagenes("imagesUp/" + file.Name));
            //}
            return listImagenes;
        }
        public class Imagenes
        {
            public string imagen { get; set; }
            public Imagenes(string sImagen)
            {
                imagen = sImagen;
            }
        }
         }
}
