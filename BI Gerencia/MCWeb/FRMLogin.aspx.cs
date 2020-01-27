using CapaLogica;
using CapaLogica.Servicios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCWebHogar.CRMVertice
{
    public partial class FRMLogin : System.Web.UI.Page
    {

     
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["IDUsuario"] = null;
            Session["Empresa"] = "Euromobilia";
            string datos = Request.ServerVariables["REMOTE_ADDR"];

            if (!IsPostBack)
            {

            }
            else
            {
                //---------------------------------BLOQUEO SEGURIDAD PARA EVITAR ATAQUES EN EL POSTBACK ------------
                string nombre = Request.QueryString["UNDB"];//"dvargas";
                string pwd = Request.QueryString["PWDB"]; //"1234";


                if (nombre != null)
                {
                    string error = "";
                    string IP = Convert.ToString(Request.UserHostAddress[0]); //Request.ServerVariables["REMOTE_ADDR"];

                    if (GestorIN04.Login2(nombre, pwd, IP, ref error) > 0)
                    {
                        //-------------------------Clase 1 validacion de permisos ----------
                        if (ClaseControles.Permiso("CRM ALTEA", "FRMLOGIN", "Ingreso", nombre) <= 0)
                            {
                                if (error.Trim() != "")
                                {
                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ServerControlScript", "alert('Ocurrio un error.');", true);

                                }

                 

                                Session.Add("UserId", nombre);
                                if (Session["UserId"] != null)
                                {
                                    Response.Redirect("CRM/FRMInicio.aspx", true);
                                }
                            }
                    }
                    else
                    {
                       // Session["UserId"] = null;
                        Session.Remove("UserId");

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ServerControlScript", "alert('Acceso denegado!');", true);

                    }
                }
            }
            }
         //--------------------------------------------------FIN DE BLOQUEO DE ATAQUES------------------------

        protected void btn_login_Click(object sender, EventArgs e)
        {
            //UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            //GestorAccess.Conectividad(DB);
            
                    
                        
            string nombre = Request.Form["UserName2"];//"dvargas";
            string pwd = Request.Form["Password"]; //"1234";
            if (ClaseControles.Permiso("Acceso", "BI Gerencia", "FrmLogin", nombre) <= 0)
            {
                string script = "alert('No tiene accesos para ingresar a la plataforma');";

                ScriptManager.RegisterStartupScript(this, this.GetType(), "asdasdasd", script, true);
                return;
            }
            //nombre = "dvargas";
            //pwd = "252525";
            string IP = Request.ServerVariables["REMOTE_ADDR"];
            string error = "";


       
            if (GestorIN04.Login2(nombre, pwd, IP, ref error) > 0)
            {
                if (error.Trim() != "")
                {
                    string script = "mostraralertifyerror('No tiene accesos para ingresar a la plataforma');";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ServerControlScript", script, true);
                    return;
                }

                DataTable user = GestorIN04.UserName(nombre);
                    if (user != null && user.Rows.Count > 0)
                    {
                        string NombreUsuario = user.Rows[0].ItemArray[0].ToString().Trim();
                        string userid = user.Rows[0].ItemArray[1].ToString().Trim();
                        string CodVendedor = user.Rows[0].ItemArray[2].ToString();
                        string NombreVendedor = user.Rows[0].ItemArray[3].ToString().Trim();

                        Session.Add("NombreUsuario", NombreUsuario);
                        Session.Add("UserId", userid);
                        Session.Add("CodVendedor", CodVendedor);
                        Session.Add("NombreVendedor", NombreVendedor);
                    }
                    Session.Add("UserName", GestorIN04.nombreU(nombre, pwd, IP, ref error));
                    if (Session["UserId"] != null)
                    {
                        Response.Redirect("CRM/frmPanel.aspx", false);
                    }
                //}
            }
            else
            {
               // Session["IDUsuario"] = null;
                Session.Remove("UserId");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ServerControlScript", "alert('Usuario o password invalido!');", true);

            }
        }
    }
}