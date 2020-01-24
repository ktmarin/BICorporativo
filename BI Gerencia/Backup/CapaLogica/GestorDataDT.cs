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
    }
}