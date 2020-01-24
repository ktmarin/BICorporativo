using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MCWebHogar.CRM
{
    public partial class frmUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("../FRMLogin.aspx");
            }

            if (!Page.IsPostBack)
            {
                CapaLogica.GestorDataDT DT2;

                DataTable Result = new DataTable();

                DT2 = new CapaLogica.GestorDataDT();

                DT2.DT1.Rows.Add("@TipoSolicitud", "SELECT_TODOS", SqlDbType.VarChar);


                Result = CapaLogica.GestorDatos.Consultar(DT2.DT1, "BIG00_Comandos");

                if (Result != null && Result.Rows.Count > 0)
                {
                    if (Result.Rows[0][0].ToString().Trim() == "ERROR")
                    {

                    }
                    else
                    {
                     
                    }
                }
                //CMB_MES
            }
        }
        #region Usuario
        protected void buscarUsuario(string usuario)
        {
            CapaLogica.GestorDataDT DT2;

            DataTable Result = new DataTable();

            DT2 = new CapaLogica.GestorDataDT();
            DT2.DT1.Rows.Add("@TipoSolicitud", "SELECT", SqlDbType.VarChar);

            DT2.DT1.Rows.Add("@Usuario", usuario, SqlDbType.VarChar);

            Result = CapaLogica.GestorDatos.Consultar(DT2.DT1, "BIG00_Comandos");

            if (Result != null && Result.Rows.Count > 0)
            {
                if (Result.Rows[0][0].ToString().Trim() == "ERROR")
                {

                }
                else
                {
                    //DTG_Reserva.DataSource = Result;
                    //DTG_Reserva.DataBind();
                    //UpdatePanel1.Update();
                    //prodReserva = "";
                }
            }
            else
            {
                Result = null;
                //DTG_Reserva.DataSource = Result;
                //DTG_Reserva.DataBind();
                //UpdatePanel1.Update();
                //prodReserva = "";

            }

        }
        protected void gdvUsuarios_RowEditing(object sender, GridViewEditEventArgs e)
        {

            //string usuario = gdvUsuarios.DataKeys[e.NewEditIndex].Value.ToString();
            // prodReserva = a;
            //buscarUsuario(usuario);
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "ServerControlScript", "abrirPopReserva();", true);
        }
        protected void gdvUsuarios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                if ((e.Row.RowState & DataControlRowState.Edit) != DataControlRowState.Edit)
                {
                    //string sad = e.Row.RowIndex.ToString();
                    //e.Row.Attributes["ondblclick"] = Page.ClientScript.GetPostBackClientHyperlink(gdvUsuarios, "Edit$" + e.Row.RowIndex);
                    //e.Row.Attributes["style"] = "cursor:pointer";
                    //e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#ECEBDF'");
                    //e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#fff'");


                }
                else if (e.Row.RowState == DataControlRowState.Edit)
                {
                    string sad = e.Row.RowIndex.ToString();
                }
            }
        }
        #endregion
     
    }
}