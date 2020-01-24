using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Configuration;

namespace MCWebHogar
{
     public static class ImagenesDAL
    {
        
        public static void GuardarImagen(string nombrearchivo, int length, byte[] imagen)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CEMDB"].ToString()))
            {
                conn.Open();

                string query = @"INSERT INTO Imagenes (nombre, length, imagen)
                                 VALUES (@name, @length, @imagen)";
                
                SqlCommand cmd = new SqlCommand(query, conn);
                
                cmd.Parameters.AddWithValue("@name", nombrearchivo);
                cmd.Parameters.AddWithValue("@length", length);

                SqlParameter imageParam = cmd.Parameters.Add("@imagen", System.Data.SqlDbType.Image);
                imageParam.Value = imagen;

                cmd.ExecuteNonQuery();

            }

        }

        public static List<Imagenes> GetImagenList()
        {
            List<Imagenes> lista = new List<Imagenes>();

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CEMDB"].ToString()))
            {
                conn.Open();

                string query = @"SELECT Id, Nombre, Length  
                                    FROM Imagenes";

                SqlCommand cmd = new SqlCommand(query, conn);

                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Imagenes img = new Imagenes(
                                            Convert.ToInt32(reader["Id"]),
                                            Convert.ToString(reader["nombre"]),
                                            Convert.ToInt32(reader["length"]));
                    lista.Add(img);
                }

            }

            return lista;

        }

        public static Imagenes GetImagenById(int Id)
        {
            Imagenes img = null;

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CEMDB"].ToString()))
            {
                conn.Open();

                string query = @"SELECT IDNota, NombreImagen, IMName, Imagen
                                FROM Imagenes
                                WHERE Id = @id";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", Id);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    img = new Imagenes(
                                    Convert.ToInt32(reader["IDNota"]),
                                    Convert.ToString(reader["NombreImagen"]),
                                    Convert.ToInt32(reader["IMName"]));

                    img.Imagen = (byte[])reader["Imagen"];

                }

            }

            return img;

        }

    }


    public class Imagenes
    {
        public Imagenes(int id, string nombre, int length)
        {
            this.Id = id;
            this.Nombre = nombre;
            this.Length = length;
        }
        public int Id { get; set; }
        public int Length { get; set; }
        public string Nombre { get; set; }

        public byte[] Imagen { get; set; }
    }

    
}