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
using CapaLogica.Entidades.FAC01 ;

namespace CapaLogica
{
    public class GestorFA01
    {
        public static string siawindb = string.Empty;
        public static string cemdb = string.Empty;

        public static SqlConnection conexion = new SqlConnection();
        public static SqlParameter Parametro;
        public static ArrayList Parametros;
        public static DataTable UPDATEFAC01(FAC01 man)
        {
            string sql = @"
UPDATE FA01 SET
sDescripcion = @sDescripcion,
cCantidad = @cCantidad,
cPrecio_Venta = @cPrecio_Venta,
sQuien_Modifico = @sQuien_Modifico,
dFecha_Modifico = getdate()
WHERE 
iLinea = @iLinea 
AND sPedido = @sPedido
AND sCodigo_Producto = @sCodigo_Producto
";
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("sCodigo_Producto", man.sCodigo_Producto);
            command.Parameters.AddWithValue("sPedido", man.sPedido);
            command.Parameters.AddWithValue("iLinea", man.iLinea);
            command.Parameters.AddWithValue("sDescripcion", man.sDescripcion);
            command.Parameters.AddWithValue("cCantidad", man.cCantidad);
            command.Parameters.AddWithValue("cPrecio_Venta", man.cPrecio_Venta);
            command.Parameters.AddWithValue("sBodega", man.sBodega);
            command.Parameters.AddWithValue("sQuien_Modifico", man.sQuien_Ingreso);

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }

    }
}