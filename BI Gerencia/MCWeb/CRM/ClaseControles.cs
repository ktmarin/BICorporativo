using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace MCWebHogar.CRMVertice
{
    public class ClaseControles
    {

        public bool Resultado = true;


      
        public static int Permiso(string tipo, string Modulo, string Formulario , string usuario)
        {
            CapaLogica.GestorDataDT DT;
            DataTable dt = new DataTable();

            dt = new DataTable();
            DT = new CapaLogica.GestorDataDT();
            DT.DT1.Rows.Add("@usuario", usuario , SqlDbType.VarChar);
            DT.DT1.Rows.Add("@Modulo", Modulo , SqlDbType.VarChar);
            DT.DT1.Rows.Add("@formulario", Formulario, SqlDbType.VarChar);
            DT.DT1.Rows.Add("@tipo", tipo, SqlDbType.VarChar);
            
            dt = CapaLogica.GestorDatos.Consultar(DT.DT1, "PER00_TipoOpcion");
            
            if (dt != null && dt.Rows.Count > 0)
            {
                if (Convert.ToInt32(dt.Rows[0][0].ToString()) > 0)
                {
                    return 1;
                }
            }
            else
            {
                return 0;
            }
            return 0;
        }

        public static StringBuilder HmtlTable(DataTable dt, String LblMoneda)
        {
            string tab = "\t";

            StringBuilder sb = new StringBuilder();

            //sb.AppendLine("<html>");
            //sb.AppendLine(tab + "<body>");
            sb.AppendLine(tab + tab + "<table style='empty-cells: show;border: 1px solid #cbcbcb;border-collapse: collapse;border-spacing: 0;" +
                "#cbcbcb;border-width: 0 0 0 1px;font-size: inherit;"
                    + "margin: 0;overflow: visible;padding: .5em 1em;'>");

            // headers.
            sb.Append(tab + tab + tab + "<thead style='    background-color: #e0e0e0;color: #000;text-align: left;vertical-align: bottom;'>");
            sb.Append(tab + tab + tab + "<tr>");

            foreach (DataColumn dc in dt.Columns)
            {
                sb.AppendFormat("<th style='border:1px solid black'>{0}</td>", dc.ColumnName);
            }

            sb.AppendLine("</tr>");
            sb.AppendLine("</thead>");
            // data rows
            foreach (DataRow dr in dt.Rows)
            {
                sb.Append(tab + tab + tab + "<tr>");

                foreach (DataColumn dc in dt.Columns)
                {
                    string cellValue = "";
                    switch (dr[dc].GetType().Name)
                    {
                        case "Decimal":
                            if (dc.ToString() == "Porcentaje")
                            {
                                cellValue = dr[dc] != null ? dr[dc].ToString() : "";
                                sb.AppendFormat("<td style='border-right: 1px solid #cbcbcb;border-width: 0 0 0 1px;font-size: inherit;"
                                + "margin: 0;overflow: visible;padding: .5em 1em;'>{0}</td>", cellValue + "%");
                            }
                            else
                            {
                                cellValue = dr[dc] != null ? dr[dc].ToString() : "";
                                sb.AppendFormat("<td style='border-right: 1px solid #cbcbcb;border-width: 0 0 0 1px;font-size: inherit;"
                                + "margin: 0;overflow: visible;padding: .5em 1em;'>{0}</td>", LblMoneda + " " + Convert.ToDecimal(cellValue).ToString("N2"));
                            }
                            break;
                        case "DateTime":
                            cellValue = dr[dc] != null ? dr[dc].ToString() : "";
                            sb.AppendFormat("<td style='border-right: 1px solid #cbcbcb;border-width: 0 0 0 1px;font-size: inherit;"
                            + "margin: 0;overflow: visible;padding: .5em 1em;'>{0}</td>", Convert.ToDateTime(cellValue).ToString("dd-MM-yyyy"));
                            break;
                        case "String":
                            cellValue = dr[dc] != null ? dr[dc].ToString() : "";
                            sb.AppendFormat("<td style='border-right: 1px solid #cbcbcb;border-width: 0 0 0 1px;font-size: inherit;"
                            + "margin: 0;overflow: visible;padding: .5em 1em;'>{0}</td>", cellValue);
                            break;
                    }

                }

                sb.AppendLine("</tr>");
            }

            sb.AppendLine(tab + tab + "</table>");
            //sb.AppendLine(tab + "</body>");
            //sb.AppendLine("</html>");

            return sb;
        }





        public static void EscribirLog(string Pexepcion)
        {
            string Pruta;
            System.IO.TextWriter Fw;

            Pruta = System.Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

            if (Pruta == "")
            {
                Pruta = "c:\\temp";
            }
            Pruta = Pruta + "\\errorCRM.log";

            try
            {
                if (System.IO.File.Exists(Pruta))
                {
                    System.IO.FileInfo val = new System.IO.FileInfo(Pruta);
                    if (val.Length > 2048000)
                    {
                        System.IO.File.Delete(Pruta);
                    }
                }
                else
                {
                    System.IO.File.Delete(Pruta);
                    Fw = System.IO.File.CreateText(Pruta);
                    Fw.Close();
                }

                Fw = System.IO.File.AppendText(Pruta);
                Fw.WriteLine(Pexepcion);
                Fw.WriteLine("SISTEMA= CRMVerticeWeb"); //+ (new Microsoft.VisualBasic.ApplicationServices.ConsoleApplicationBase()).Info.AssemblyName);
                Fw.WriteLine("USUARIO=" + System.Environment.UserName);
                Fw.WriteLine("FECHA= " + DateTime.Now);
                Fw.WriteLine("ERROR= " + Pexepcion);
                Fw.WriteLine("*********************************");
                Fw.WriteLine("");
                Fw.Close();

            }
            catch (Exception)
            {

            }

           
        }
        
      
    }
}