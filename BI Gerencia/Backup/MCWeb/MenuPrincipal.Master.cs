using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaLogica;
using CapaLogica.Servicios;
using System.Web.Configuration;
using System.Web.Services;

namespace MCWeb
{
    // alert('Se ha producido un error al traer las imágenes'); para poner error en scrip de imagenes
    public partial class MenuPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
                //GestorIN04.Connection(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString);
                //DataAccess.Conexion(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString);
                GestorAccess.Conectividad(DB);
            }
        }
        [WebMethod()]
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }
    }
}