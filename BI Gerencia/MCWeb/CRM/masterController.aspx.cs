using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace MCWebHogar.CRM
{
    public partial class masterController : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dt = new DataSet(); 
            CapaLogica.GestorDataDT gestor;
            DataTable Result = new DataTable();
            switch (Request.Form["option"])
            {
                case "init":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_USUARIO", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Usuario", Session["UserId"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));

                    break;

                default:
                    break;
            }
        }
    }
}