using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaLogica.Entidades.FAC01
{
    public class FAC01
    {
        public string sCodigo_Producto { get; set; }
        public string sPedido { get; set; }
        public int iLinea { get; set; }
        public string sDescripcion { get; set; }
        public decimal  cCantidad { get; set; }
        public decimal cPrecio_Venta { get; set; }
        public string sBodega { get; set; }
        public string sQuien_Ingreso { get; set; }
    }
}