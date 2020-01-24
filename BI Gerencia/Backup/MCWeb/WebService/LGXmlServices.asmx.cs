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
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;



namespace MCWeb.WebService
{
    /// <summary>
    /// Descripción breve de LGXmlServices
    /// </summary>
    [WebService(Namespace = "http://192.168.1.121:8080/Service/LGXmlServices.asmx")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
     [System.Web.Script.Services.ScriptService]
    public class LGXmlServices : System.Web.Services.WebService
    {

        [WebMethod]


        public XmlDocument Productos()
        {
            String[] transaction,nodeNames = new String[] { "Date", "ID_Customer", "Transaction_Type", "Amount" };
           

            XmlDocument xmldoc = new XmlDocument();
            XmlNode xmlRoot, xmlParent, xmlNode;
            //StreamReader reader = new StreamReader(@"c:\xmlfile.txt");
            //xmldoc.Load(reader);

            xmlRoot = xmldoc.CreateElement("Transactions");
            xmldoc.AppendChild(xmlRoot);


            List<String[]> STList = new List<String[]>();
            List<ListaGlobalProductos> transa = new List<ListaGlobalProductos>();
            transa = LPGlobal();

           
            foreach (ListaGlobalProductos i in transa)
            {
                string[] array = { i.CodigoProducto,i.Descripcion,i.Moneda,Convert.ToString(i.PrecioVenta) };
                STList.Add(array);
            }
          

            for (int i = 0; i < transa.Count; i++)
            {

                transaction = STList[i];
                xmlParent = xmldoc.CreateElement("Transaction");
                xmlRoot.AppendChild(xmlParent);

                for (int j = 0; j < nodeNames.Length; j++)
                {
                    xmlNode = xmldoc.CreateElement(nodeNames[j]);
                    xmlParent.AppendChild(xmlNode);
                    xmlNode.InnerText = transaction[j];
                }
            }
           
           
            return xmldoc;


        }

        

        public static List<ListaGlobalProductos> LPGlobal()
        {
            List<ListaGlobalProductos> listImagenes = new List<ListaGlobalProductos>();
            DirectoryInfo dir = new DirectoryInfo(AppDomain.CurrentDomain.BaseDirectory + "ImagenesProductos");
            FileInfo[] fileList = dir.GetFiles("*.*", SearchOption.AllDirectories);

            var fileQuery = from file in fileList
                            where file.Extension == ".jpg"
                            orderby file.Name
                            select file;

            DataTable dt = new DataTable();
            dt = GestorIN04.TableProductosPdf("","");
            if (dt != null && dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    string valor = dr["CODIMAGEN"].ToString().ToLower().Trim();
                    System.Drawing.Image image;
                    image = imag(AppDomain.CurrentDomain.BaseDirectory + "/ImagenesProductos/" + valor);
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
        private static System.Drawing.Image imag(string file)
        {
            System.Drawing.Image ima = System.Drawing.Image.FromFile(file);
            return ima;
        }

        private static byte[] imageToByteArray(System.Drawing.Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
            return ms.ToArray();
        }
       
    
    
    }
}
