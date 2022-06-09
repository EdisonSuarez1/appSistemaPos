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
    public class arreglos
    {
        [Serializable()]
        public class GridV
        {

            public string id { get; set; }
            public string Dat1 { get; set; }
            public string Dat2 { get; set; }
            public string Dat3 { get; set; }
            public string Dat4 { get; set; }
            public string Dat5 { get; set; }

        }
    }
}