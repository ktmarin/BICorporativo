using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CapaDatos;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Text;
using System.Configuration;
using System.Collections;
using LogicLyers.Servicios;
using System.Web.Configuration;
using CapaLogica.Servicios;

namespace CapaLogica
{
    public class GestorDatos
    {
        #region VariablesGlobales
        public static string siawindb = string.Empty;
        public static string cemdb = string.Empty;
        public static SqlConnection conexion = new SqlConnection();
        public static SqlParameter Parametro;
        public static ArrayList Parametros;
        public static DataAccess access = new DataAccess();
        public static void Connection(string siawin, string cem)
        {
            siawindb = siawin;
            cemdb = cem;
        }
        #endregion

        public static DataTable Consultar(DataTable DT, string Procedure)
        {
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);
            return DataAccess.GESTOR_CONSULTA_CEM(DT, Procedure);
        }

        public static List<string> Consulta_AjaxList( string Procedure,string value, string campo)
        {
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);

            SqlCommand command = new SqlCommand();
            command.CommandText = Procedure;
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@pValue", value);
            command.Parameters[0].Direction = ParameterDirection.Input;

            return DataAccess.EjecutarList(command, campo);
        }

        public static DataTable BusquedacodigoList()
        {
           
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);
            string sql = @" select TOP 20 sCodigo_Producto,sDescripcion_Inventario,sCodigo_Proveedor,sCodigoMarca, cPrecio_Publico, bMoneda from in04";
            SqlCommand command = new SqlCommand();

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
        public static DataTable Busquedacodigo(string valor)
        {
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);
            string sql = @" select TOP 20 sCodigo_Producto,sDescripcion_Inventario,sCodigo_Proveedor,sCodigoMarca, cPrecio_Publico,
             bMoneda from in04 where sCodigo_Producto like '%" + valor + "%'";
            SqlCommand command = new SqlCommand();
           
            return DataAccess.SIA_DT_Ejecutar(sql,command);
        }



        public static int Consultar2(DataTable DT, string Procedure)
        {
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);
            return DataAccess.GESTOR_MANT_CEM(DT, Procedure);
        }

        public static String Consultar3(DataTable DT, string Procedure)
        {
            UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
            GestorAccess.Conectividad(DB);
            return DataAccess.GESTOR_MANT_CEM2(DT, Procedure);
        }

        public static bool HO00_CambioEstadoContrato(DataTable DT, string Procedure)//string Oferta)
        {
           
            bool resultado = false;
            try
            {

                if (DataAccess.GESTOR_MANT_CEM(DT, Procedure) > 0)
                {
                    resultado = true;
                }

            }
            catch (Exception ex)
            {
                GestorSQLserver.EscribirLog(ex.ToString());
            }
            
            return resultado;
        }

        //public static DataTable GESTOR_CONSULTA_CEM(DataTable DT, string Procedure)
        //{
        //    UserDB DB = new UserDB(WebConfigurationManager.ConnectionStrings["siawindb"].ConnectionString, WebConfigurationManager.ConnectionStrings["CEMDB"].ConnectionString, "dvargas");
        //    GestorAccess.Conectividad(DB);
        //    return DataAccess.GESTOR_CONSULTA_CEM(DT, Procedure);
        //}

     


    }
}