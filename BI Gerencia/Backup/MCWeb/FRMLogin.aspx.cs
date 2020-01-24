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
    public partial class FRMLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["IDUsuario"] = null;
                Empresa = "ALTEA DESIGNS";
                UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
                GestorAccess.Conectividad(DB);
                //TXTUsuario.Text = "dvargas";
                //TXTContrasena.Text = "1234";
            }
        }
     
        public static string UserAcceso;
        public static string Empresa;

        protected void CMDAceptar_Click(object sender, EventArgs e)
        {
            string error = "";
            if (GestorIN04.Login(TXTUsuario.Text, TXTContrasena.Text, ref error) > 0)
            {
                if (error.Trim() != "")
                {
                    RegisterClientScriptBlock("Alerta", "<script>alert('Ocurrio un error: '" + error + ");</script>");
                    
                }
                UserAcceso = TXTUsuario.Text;
                Session["IDUsuario"] = TXTUsuario.Text;

                if (Session["IDUsuario"] != null)
                {
                    Response.Redirect("Default.aspx");
                }
            
                //Response.Redirect("Default.aspx");
            }
            else
            {
                Session["IDUsuario"] = null;
                RegisterClientScriptBlock("Alerta", "<script>alert('Usuario o password invalido');</script>");

            }
        }

    }
}