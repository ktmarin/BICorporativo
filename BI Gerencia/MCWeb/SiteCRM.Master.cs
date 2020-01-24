using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCWebHogar
{
    public partial class SiteCRM : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                lblUsuario.Text =Session["UserId"].ToString();
            }
  
        }

        protected void LnkSalir_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("/FRMLogin.aspx");
        }
    }
}

