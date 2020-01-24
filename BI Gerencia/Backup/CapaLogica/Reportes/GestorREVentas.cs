using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using CapaDatos;
using System.ComponentModel;
using System.Text;
using System.Configuration;
using System.Collections;
using LogicLyers.Servicios;

namespace CapaLogica.Reportes
{
    public class GestorREVentas
    {

        public static string siawindb = string.Empty;
        public static string cemdb = string.Empty;
        public static SqlConnection conexion = new SqlConnection();
        public static SqlParameter Parametro;
        public static ArrayList Parametros;

        public static void Connection(string siawin, string cem)
        {
            siawindb = siawin;
            cemdb = cem;
        }
        public static DataTable VentasVendedorResumido(DateTime FechaDesde,DateTime FechaHasta)
        {
            string sql = @"


Select sVendedor sVendedor, max(sNombre) sNombre,TotalGeneral 
FROM
( Select 
FA00.sVendedorAplicado as sVendedor,
Max(CC20.sDescripcion) as sNombre,
sum((FA00.cMonto_Total_Precio - FA00.cMonto_Total_Impuesto) * FA00.cDolar) TotalGeneral
FROM FA00,CC20,CC01
Where (CAST(FA00.dFecha AS DATE)) >=  @FechaDesde
and (CAST(FA00.dFecha AS DATE)) <=  @FechaHasta
AND FA00.sFactura > ''
And FA00.sTipoFactura <> 'AN'
And FA00.sCodigo_Cliente = CC01.sCodigo
AND FA00.sVendedorAplicado = CC20.sCodigo
Group by FA00.sVendedorAplicado
UNION ALL

Select 
FA00.sVendedorAplicado as sVendedor,
Max(CC20.sDescripcion) as sNombre,
-SUM((IN13.cMonto_Total - IN13.cMonto_Impuesto) * IN13.cDolar)TotalGeneral
FROM IN13,FA00,CC20,CC01
WHERE IN13.sCodigo_Movimiento = '05'
AND IN13.sNumero_Documento = FA00.sPedido
AND cast(IN13.dFecha_Movimiento as date) >=@FechaDesde
AND cast(IN13.dFecha_Movimiento as date) <= @FechaHasta
AND IN13.bConfirmado > 0
AND IN13.sCodigo_Cliente = CC01.sCodigo
AND FA00.sVendedorAplicado = CC20.sCodigo
Group by FA00.sVendedorAplicado
) Vista
Group by sVendedor,TotalGeneral

";
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("FechaDesde", FechaDesde);
            command.Parameters.AddWithValue("FechaHasta", FechaHasta);

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
    }
}