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
            return DataAccess.GESTOR_CONSULTA_CEM(DT, Procedure);
        }



    }
}