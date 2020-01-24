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
    public class GestorIN04
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

        public static DataTable testproductos(string producto)
        {
            DataTable Dt = null;

            SqlConnection conex = new System.Data.SqlClient.SqlConnection("Data Source=192.168.1.3; Initial Catalog=cem28; User ID=sa;Password=");
            try
            {
                Parametros = new ArrayList();
                Parametro = new SqlParameter("producto", SqlDbType.VarChar);
                Parametro.Value = producto;
                Parametros.Add(Parametro);




                if (GestorSQLserver.EjecutarProcedimientoAlmacenado2(Convert.ToString("[testnavegacion]"), Parametros, ref Dt, conex))
                {

                    return Dt;
                }

            }
            catch (Exception ex)
            {
                GestorSQLserver.EscribirLog(ex.ToString());
            }

            Dt = null;
            return Dt;
}
        public static DataTable TableXMLProductos()
        {

            DataTable dt = null;
            try
            {
                
                string error = "";
                Parametros = new ArrayList();
                if(DataAccess.EjecutarProcedimientoAlmacenado2("LP_List_and_Gifts",Parametros,ref dt,conexion,ref error ))   
                
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
        public static DataTable TableProductosPdf(string Proveedor, string Grupo )
        {

            DataTable dt = null;
            try
            {
                string error = "";
                Parametros = new ArrayList();

                Parametro = new SqlParameter("Proveedor", SqlDbType.VarChar);
                Parametro.Value = Proveedor;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("Grupo", SqlDbType.VarChar);
                Parametro.Value = Grupo;
                Parametros.Add(Parametro);


                if (DataAccess.EjecutarProcedimientoAlmacenado2("LP_GlobalWeb1", Parametros, ref dt, conexion,ref error))
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

        public static int Login(string usuario, string contrasena, ref string error2)
        {

            DataTable dt = null;
            int resultado = 0;
            try
            {
                Parametros = new ArrayList();

                Parametro = new SqlParameter("Usuario", SqlDbType.VarChar);
                Parametro.Value = usuario;
                Parametros.Add(Parametro);

                Parametro = new SqlParameter("contrasena", SqlDbType.VarChar);
                Parametro.Value = contrasena;
                Parametros.Add(Parametro);

                string error = "";

                if (DataAccess.EjecutarProcedimientoAlmacenado2("WEB_Login", Parametros, ref dt, conexion,ref error))
                {
                    if (error != "")
                    {
                        error2 = error;
                        GestorSQLserver.EscribirLog(error);
                    }
                    if (dt != null && dt.Rows.Count > 0)
                    {
                        resultado = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                    else
                    {
                        resultado = 0;
                    }
                    return resultado;
                }

            }
            catch (Exception ex)
            {
                return 0;
            }
            return 0;
        }

        public static DataTable NavegacionIN04(string variable)
        {
            string sql = @"SELECT TOP 1  sCodigo_Producto,sDescripcion_Inventario,cPrecio_Publico,
                            bMoneda,bImpuesto,sDatosTecnicos FROM IN04 " + variable;
            SqlCommand command = new SqlCommand();
            return DataAccess.SIA_DT_Ejecutar(sql, command);

        }
        public static DataTable BuscarSaldos(string Producto)
        {

            string sql = @"

SELECT IN00.sCodigo Bodega,IN00.sDescripcion,SALDOS.Saldo,SALDOS.sCodigo_Producto   FROM IN00 
LEFT JOIN 
(
SELECT IN11.sCodigo_Producto,IN11.sCodigo_Bodega,IN11.iSaldo_Mes+IN11.iSaldo_Mes_Anterior Saldo FROM IN11,IN04 
WHERE 
IN11.sCodigo_Producto = IN04.sCodigo_Producto and IN11.iSaldo_Mes+IN11.iSaldo_Mes_Anterior > 0
)
SALDOS ON SALDOS.sCodigo_Bodega = IN00.sCodigo 
WHERE
bPermiteVender = 1
AND
 SALDOS.sCodigo_Producto = @Producto

";
            SqlCommand command = new SqlCommand();

            command.Parameters.AddWithValue("Producto", Producto);

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
        public static DataTable BuscarIN04(string Producto, string sDescripcion_Inventario, string cPrecio_Publico, string sGrupo)
        {
            string sql = @"SELECT TOP 30  sCodigo_Producto,sDescripcion_Inventario,cast(cPrecio_Publico as decimal(18,2))cPrecio_Publico,sGrupo,
                            case bMoneda when 0 then 'Colones' else 'Dolares' end bMoneda FROM IN04 
WHERE sCodigo_Producto LIKE @Producto+'%' and 
sDescripcion_Inventario like @sDescripcion_Inventario+'%' and
CAST(cPrecio_Publico AS DECIMAL(18,2)) LIKE @cPrecio_Publico+'%' and sGrupo LIKE @sGrupo + '%'";
            SqlCommand command = new SqlCommand();
            
            command.Parameters.AddWithValue("Producto", Producto.Replace('*','%'));
            command.Parameters.AddWithValue("sDescripcion_Inventario", sDescripcion_Inventario.Replace('*', '%'));
            command.Parameters.AddWithValue("cPrecio_Publico", cPrecio_Publico.Replace('*', '%'));
            command.Parameters.AddWithValue("sGrupo", sGrupo.Replace('*', '%'));

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }
        public static DataTable BuscarIN01(string sGrupo, string Descripcion)
        {
            string sql = @"SELECT TOP 20 sGrupo, sDescripcion FROM IN01 ";
            SqlCommand command = new SqlCommand();

            //command.Parameters.AddWithValue("Producto", Producto.Replace('*', '%'));
            //command.Parameters.AddWithValue("sDescripcion_Inventario", sDescripcion_Inventario.Replace('*', '%'));
            //command.Parameters.AddWithValue("cPrecio_Publico", cPrecio_Publico.Replace('*', '%'));
            //command.Parameters.AddWithValue("sGrupo", sGrupo.Replace('*', '%'));

            return DataAccess.SIA_DT_Ejecutar(sql, command);
        }

        public static DataTable InsertImagen(string Producto,string usuario)
        {
            string sql = @"
SET ANSI_WARNINGS OFF

DECLARE @Numero int =  ( select ISNULL(Max(NImagen),0)+1 FROM WIM)

INSERT INTO WIM VALUES (@Producto,REPLACE(RTRIM(@Producto),'#','-') +REPLACE(REPLACE(RTRIM(CAST(@Numero AS VARCHAR(10))),' ','_'),'#','-') +'.jpg',@Numero,@usuario, GETDATE() )

select REPLACE(RTRIM(@Producto),'#','-') +  REPLACE(REPLACE(RTRIM(CAST(@Numero AS VARCHAR(10))),' ','_'),'#','-')  +'.jpg' Nombre

";
            SqlCommand command = new SqlCommand();

            command.Parameters.AddWithValue("Producto", Producto);
            command.Parameters.AddWithValue("usuario", usuario);


            return DataAccess.CEM_DT_Ejecutar(sql, command);
        }

        public static DataTable CargarListaImagenes(string Producto)
        {
            string sql = @"

SELECT * FROM WIM WHERE CodigoProducto = @Producto

";
            SqlCommand command = new SqlCommand();

            command.Parameters.AddWithValue("Producto", Producto);

            return DataAccess.CEM_DT_Ejecutar(sql, command);
        }
        public static DataTable WIM_DELETE(int IDLinea, string usuario)
        {
            string sql = @"
begin transaction

BEGIN TRY



INSERT INTO WIMResp 
SELECT * , @usuario, GETDATE()
FROM 
WIM WHERE IDLinea = @IDLinea

DELETE WIM WHERE IDLinea = @IDLinea


COMMIT

END TRY
BEGIN CATCH

ROLLBACK

END CATCH



";
            SqlCommand command = new SqlCommand();

            command.Parameters.AddWithValue("IDLinea", IDLinea);
            command.Parameters.AddWithValue("usuario", usuario);


            return DataAccess.CEM_DT_Ejecutar(sql, command);
        }
    }
}