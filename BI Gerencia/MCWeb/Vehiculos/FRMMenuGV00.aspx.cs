using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MCWebHogar.Vehiculos
{
    public partial class FRMMenuGV00 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            DataTable dt = new DataTable();

            dt.Columns.Add("Solicitud");
            dt.Columns.Add("Fecha");
            dt.Columns.Add("Empresa");
            dt.Columns.Add("Departamento");
            dt.Columns.Add("Usuario");
            dt.Columns.Add("Comentarios");


            DTG_Solicitudes.DataSource = dt;
            DTG_Solicitudes.DataBind();


        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Vehiculos/FRMMenuGV00Add.aspx", true);                 
        }
    }
}