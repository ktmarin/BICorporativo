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
    public partial class usuarioController : System.Web.UI.Page
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet dt = new DataSet();
            CapaLogica.GestorDataDT gestor;
            DataTable Result = new DataTable();
            string[] imagen=new string[1];
            byte[] array;

            switch (Request.Form["option"])
            {
                case "init":
                    //Select listado usuarios
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_TODOS", SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);

                    //Cargar estados
                    gestor = new CapaLogica.GestorDataDT();
                    Result = new DataTable();
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_ESTADO", SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);

                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);


                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "edit":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SelectUsuario", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);

                    //Carga empresas
                    gestor = new CapaLogica.GestorDataDT();
                    Result = new DataTable();
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_EMP", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);

                    //Carga empresas x usuario
                    gestor = new CapaLogica.GestorDataDT();
                    Result = new DataTable();
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_EMPU", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);

                    //Carga accesos x usuario
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECT_BIG04A", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);

                    
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "save":
                    imagen = Request.Form["file"].Split(',');
                    array = Convert.FromBase64String(imagen[1]);
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "INSERT", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);//Nombre de parametros en archivo js
                    gestor.DT1.Rows.Add("@Usuario", Request.Form["usuario"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Clave", Request.Form["clave"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Telefono", Request.Form["tel"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Correo", Request.Form["correo"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Empresa", Request.Form["empresa"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Foto", array, SqlDbType.Image);

                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(Result.Rows[0][0].ToString());
                    //Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));

                    break;
                case "search":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SelectFiltro", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);//Nombre de parametros en archivo js
                    gestor.DT1.Rows.Add("@Usuario", Request.Form["usuario"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Correo", Request.Form["correo"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Empresa", Request.Form["empresa"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "delete":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "DELETE", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "update":

                    imagen = Request.Form["file"].Split(',');
                    array = Convert.FromBase64String(imagen[1]);
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "UPDATE", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Nombre", Request.Form["nombre"], SqlDbType.VarChar);//Nombre de parametros en archivo js
                    gestor.DT1.Rows.Add("@Usuario", Request.Form["usuario"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Clave", Request.Form["clave"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Telefono", Request.Form["tel"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Correo", Request.Form["correo"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Empresa", Request.Form["empresa"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Departamento", Request.Form["departamento"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Foto", "", SqlDbType.Image, array);

                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "insertCompany":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "INSERT_BIG03", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Empresa", Request.Form["company"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "deleteCompany":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "DELETE_BIG03", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Empresa", Request.Form["company"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG00_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "cargarD":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "SELECTAD", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["usuario"], SqlDbType.VarChar);
                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "insertAccess":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "INSERT_BIG04", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@IdInforme", Request.Form["access"], SqlDbType.VarChar);

                    Result = CapaLogica.GestorDatos.Consultar(gestor.DT1, "BIG01_Comandos");
                    dt.Tables.Add(Result);
                    Response.Write(JsonConvert.SerializeObject(dt, Formatting.Indented));
                    break;
                case "deleteAccess":
                    gestor = new CapaLogica.GestorDataDT();
                    gestor.DT1.Rows.Add("@TipoSolicitud", "DELETE_BIG04", SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@Id", Request.Form["id"], SqlDbType.VarChar);
                    gestor.DT1.Rows.Add("@IdInforme", Request.Form["access"], SqlDbType.VarChar);
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