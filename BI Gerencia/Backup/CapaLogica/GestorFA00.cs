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


namespace CapaLogica
{
    public class GestorFA00
    {
        public static string siawindb = string.Empty;
        public static string cemdb = string.Empty;

        public static SqlConnection conexion = new SqlConnection();
        //public static BaseDatos db = new BaseDatos();
        public static SqlParameter Parametro;
        public static ArrayList Parametros;

        public static void Connection(string siawin, string cem)
        {
            siawindb = siawin;
            cemdb = cem;
        }
        public static DataTable NavegacionFA00(string variable)
        {
            string sql = @"
SELECT TOP 1 *
FROM CC20 (nolock),FA00
left join 
(
SELECT 
CAST(ISNULL(SUM(cCantidad * cPrecio_Venta),0) AS DECIMAL(18,2))  TotalGravado,
--
CAST(ISNULL(SUM( (cCantidad * cPrecio_Venta) * case when cImpuesto_Venta = 0 then 1 else cImpuesto_Venta end
 - 
 (cCantidad * cPrecio_Venta) ),0)AS DECIMAL(18,2)) Impuesto,
  
 CAST(ISNULL(SUM((cCantidad * cPrecio_Venta) * case when cDescuento = 0 then 0 else cDescuento end),0)AS DECIMAL(18,2))
  Descuento,
 
 CAST(ISNULL(SUM(cCantidad * cPrecio_Venta)  
 +
SUM( (cCantidad * cPrecio_Venta) * case when cImpuesto_Venta = 0 then 1 else cImpuesto_Venta end -  (cCantidad * cPrecio_Venta) ) 
- 
 SUM((cCantidad * cPrecio_Venta) * case when cDescuento = 0 then 0 else cDescuento end),0)AS DECIMAL(18,2))
 
  TotalFactura,
  sPedido Pedido2
  
FROM fa01 -- WHERE sPedido = '00000216'
GROUP BY sPedido 
)
Totales ON Totales.Pedido2 = fa00.sPedido 
WHERE 
FA00.sVendedor = CC20.sCodigo " + variable;
            SqlCommand command = new SqlCommand();

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
        public static DataTable ProductosenPedidos(string pedido)
        {
            string sql = @"

SELECT iLinea, sPedido,sCodigo_Producto,cCantidad,CAST(cPrecio_Venta AS DECIMAL(18,2))cPrecio_Venta,sBodega ,sDescripcion ,
Cast(cCantidad * cPrecio_Venta as DECIMAL(18,2)) Total, FA01.cImpuesto_Venta ,fa01.cDescuento * 100 cDescuento2
FROM FA01 
WHERE sPedido = @pedido



";
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("pedido", pedido);

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
        public static DataTable CC01_BuscarClientes(string sCodigo_Cliente)
        {
            string sql = @"

SELECT top 100 * FROM CC01 WHERE sCodigo like @sCodigo_Cliente + '%'



";
            SqlCommand command = new SqlCommand();
            command.Parameters.AddWithValue("sCodigo_Cliente", sCodigo_Cliente.Replace('*','%'));

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }


        public static DataTable WEB_Editar_Pedido(string Usuario, string Pedido)
        {

            DataTable dt = null;
            try
            {
                string error = "";
                Parametros = new ArrayList();

                Parametro = new SqlParameter("Pedido", SqlDbType.VarChar);
                Parametro.Value = Pedido;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("Usuario ", SqlDbType.VarChar);
                Parametro.Value = Usuario;
                Parametros.Add(Parametro);


                if (DataAccess.EjecutarProcedimientoAlmacenado2("WEB_Editar_Pedido", Parametros, ref dt, conexion, ref error))
                {
                    if (error != "")
                    {
                        GestorSQLserver.EscribirLog(error);
                    }
                    return dt;
                }

            }
            catch (Exception ex)
            {
                return dt;
            }
            return dt;
        }

        public static DataTable WEB_Pedido_Actual(string Usuario)
        {

            DataTable dt = null;
            try
            {
                string error = "";
                Parametros = new ArrayList();

                Parametro = new SqlParameter("Usuario ", SqlDbType.VarChar);
                Parametro.Value = Usuario;
                Parametros.Add(Parametro);


                if (DataAccess.EjecutarProcedimientoAlmacenado2("WEB_Pedido_Actual", Parametros, ref dt, conexion, ref error))
                {
                    if (error != "")
                    {
                        GestorSQLserver.EscribirLog(error);
                    }
                    return dt;
                }

            }
            catch (Exception ex)
            {
                return dt;
            }
            return dt;
        }

        public static DataTable WEB_INSERT_IN04_Producto(string Usuario, string ConsecutivoPedidos, string sCodigo_Producto, decimal Cantidad)
        {

            DataTable dt = null;
            try
            {
                string error = "";
                Parametros = new ArrayList();

                Parametro = new SqlParameter("ConsecutivoPedidos ", SqlDbType.VarChar);
                Parametro.Value = ConsecutivoPedidos;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("Cantidad", SqlDbType.VarChar);
                Parametro.Value = Cantidad;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("sCodigo_Producto ", SqlDbType.VarChar);
                Parametro.Value = sCodigo_Producto;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("Usuario ", SqlDbType.VarChar);
                Parametro.Value = Usuario;
                Parametros.Add(Parametro);


                if (DataAccess.EjecutarProcedimientoAlmacenado2("WEB_INSERT_IN04_Producto", Parametros, ref dt, conexion, ref error))
                {
                    if (error != "")
                    {
                        GestorSQLserver.EscribirLog(error);
                    }
                    return dt;
                }

            }
            catch (Exception ex)
            {
                return dt;
            }
            return dt;
        }

        public static DataTable WEB_DELETE_IN04_Pedido(string Usuario, string ConsecutivoPedidos, string sCodigo_Producto, int IDLinea)
        {

            DataTable dt = null;
            try
            {
                string error = "";
                Parametros = new ArrayList();

                Parametro = new SqlParameter("ConsecutivoPedidos", SqlDbType.VarChar);
                Parametro.Value = ConsecutivoPedidos;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("sCodigo_Producto", SqlDbType.VarChar);
                Parametro.Value = sCodigo_Producto;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("Usuario", SqlDbType.VarChar);
                Parametro.Value = Usuario;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("IDLinea", SqlDbType.VarChar);
                Parametro.Value = IDLinea;
                Parametros.Add(Parametro);


                if (DataAccess.EjecutarProcedimientoAlmacenado2("WEB_DELETE_IN04_Pedido", Parametros, ref dt, conexion, ref error))
                {
                    if (error != "")
                    {
                        GestorSQLserver.EscribirLog(error);
                    }
                    return dt;
                }

            }
            catch (Exception ex)
            {
                return dt;
            }
            return dt;
        }


    }
}