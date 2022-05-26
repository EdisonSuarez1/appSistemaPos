using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Entidades
{
    public class clVentaE
    {


        public int idVenta { get; set; }
        public string codigo { get; set; }
        public int idSucursal { get; set; }
        public int idUsuario { get; set; }
        public int idCliente { get; set; }
        public DateTime fechaRegistro { get; set; }
        public string valorTotalVenta { get; set; }




    }
}