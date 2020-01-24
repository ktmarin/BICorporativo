using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;

namespace MCWebHogar
{
    public class HttpImageHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            int id = Convert.ToInt32(context.Request.Params["IDNota"]);

            Imagenes imagen = ImagenesDAL.GetImagenById(id);

            context.Response.Clear();
            context.Response.AddHeader("content-disposition", string.Format("attachment;filename={0}", imagen.Nombre));

            switch (Path.GetExtension(imagen.Nombre).ToLower())
            {
                case ".jpg":
                    context.Response.ContentType = "image/jpg";
                    break;
                case ".gif":
                    context.Response.ContentType = "image/gif";
                    break;
                case ".png":
                    context.Response.ContentType = "image/png";
                    break;
            }

            context.Response.BinaryWrite(imagen.Imagen);
            context.Response.End();
        }

        public bool IsReusable
        {
            get { return false; }
        }
    }
}