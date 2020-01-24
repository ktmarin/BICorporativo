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
using System.Data;

namespace MCWeb
{
    public partial class SiteMaster1 : System.Web.UI.MasterPage
    {
        public static string PedidoUsuario;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                
                //UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
                //GestorAccess.Conectividad(DB);
            }
            else
            {
                if (Session["IDUsuario"] == null)
                {

                    Page.RegisterClientScriptBlock("Alerta", "<script>alert('Debe de iniciar una sesión de usuario para poder utilizar la aplicación.');</script>");

                    Session["IDUsuario"] = null;
                    Response.Redirect("~/FRMLogin.aspx");

                }
                else
                {
                    LBLInicioSesion.Text = "" + Session["IDUsuario"].ToString();
                    DataTable dt = new DataTable();
                    dt = GestorFA00.WEB_Pedido_Actual(Session["IDUsuario"].ToString());
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        PedidoUsuario = dt.Rows[0][0].ToString();
                        LBLPedidoUsuario.Text = PedidoUsuario.Trim();
                    }
                    else
                    {
                        PedidoUsuario = "00000000";
                        LBLPedidoUsuario.Text = "00000000";
                    }
                }
              
            }
        }

        [WebMethod()]
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }



        protected void CMDCerraSession_Click(object sender, EventArgs e)
        {
            Session["IDUsuario"] = null;
            Response.Redirect("~/FRMLogin.aspx");
        }
    }
}