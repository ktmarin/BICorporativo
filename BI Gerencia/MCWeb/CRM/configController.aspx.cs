﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;


namespace MCWebHogar.CRM
{
    public partial class configController : System.Web.UI.Page
    {
        DataSet dt = new DataSet();
        CapaLogica.GestorDataDT gestor ;
        DataTable Result = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request.Form["option"])
            {
                case "init":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_TODOS", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Usuario", Session["UserId"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);

                    gestor = new CapaLogica.GestorDataDT();
                    Result = new DataTable();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_ESTADO", SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    
                    gestor = new CapaLogica.GestorDataDT();
                    Result = new DataTable();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_BIG02", SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);

                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "edit":
                        gestor = new CapaLogica.GestorDataDT();
                        gestor.DT1.Rows.Add("@TipoSolicitud", "SelectInf", SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                        Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                        dt.Tables.Add(Result);
                        Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "save":
                        gestor = new CapaLogica.GestorDataDT();
                        gestor.DT1.Rows.Add("@TipoSolicitud", "INSERT", SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@EnlaceBI", Request.Form["link"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Categoria", Request.Form["categoria"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Seccion", Request.Form["seccion"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Estado", Request.Form["estado"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Empresa", Request.Form["empresa"], SqlDbType.VarChar);

                        Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                        dt.Tables.Add(Result);
                        Response.Write(Result.Rows[0][0].ToString());
                    break;
                case "search":
                        gestor = new CapaLogica.GestorDataDT();
                        gestor.DT1.Rows.Add("@TipoSolicitud", "SelectFiltro", SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Categoria", Request.Form["categoria"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Seccion", Request.Form["seccion"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Estado", Request.Form["estado"], SqlDbType.VarChar);
                        Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                        dt.Tables.Add(Result);
                        Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "delete":
                        gestor = new CapaLogica.GestorDataDT();
                        gestor.DT1.Rows.Add("@TipoSolicitud", "DELETE", SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                        Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                        dt.Tables.Add(Result);
                        Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "update":
                     gestor = new CapaLogica.GestorDataDT();
                        gestor.DT1.Rows.Add("@TipoSolicitud", "UPDATE", SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@EnlaceBI", Request.Form["link"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Categoria", Request.Form["categoria"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Seccion", Request.Form["seccion"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Estado", Request.Form["estado"], SqlDbType.VarChar);
                        gestor.DT1.Rows.Add("@Empresa", Request.Form["empresa"], SqlDbType.VarChar);
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