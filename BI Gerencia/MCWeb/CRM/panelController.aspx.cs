using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MCWebHogar.CRM
{
    public partial class panelController : System.Web.UI.Page
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
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_TODOS", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Usuario", Session["UserId"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);

                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "ACCESO_ADMIN", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Usuario", Session["UserId"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);

                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                default:
                    break;
            }

        }
    }
}