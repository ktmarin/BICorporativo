using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace CapaLogica
{
    public class GestorDataDT
    {
        private DataTable DT = new DataTable();

        public GestorDataDT()
        {
            DT.Columns.Add("Variable");
            DT.Columns.Add("Valor");
            DT.Columns.Add("TipoValor");
            DT.Columns.Add("IMAGEN");
            DT.Columns["Imagen"].DataType = typeof(byte[]);
        }
        public DataTable DT1
        {
            get { return DT; }
            set { DT = value; }
        }

        public string FechaFormato(string Fecha)
        {
            try
            {
                char[] delimit = new char[] { '/' };
                string Dia = "";
                string Mes = "";
                string Anio = "";
                int Conteo = 0;
                foreach (string ParteFecha in Fecha.Replace('-', '/').Split(delimit))
                {
                    Conteo = Conteo + 1;
                    if (Conteo == 1)
                    {
                        Dia = ParteFecha.Trim();
                    }
                    else if (Conteo == 2)
                    {
                        Mes = ParteFecha.Trim();
                    }
                    else if (Conteo == 3)
                    {
                        Anio = ParteFecha.Trim();
                    }
                }

                string FechaFinal = "";
                Anio = Anio.Substring(0, 4);
                FechaFinal = Anio + "-" + Mes + "-" + Dia;
                return FechaFinal;
            }
            catch
            {
                return "Formato de fecha Invalida!";
            }
        }
    }
}