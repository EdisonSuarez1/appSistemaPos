using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Entidades
{
    public class clClienteE
    {
        public int idCliente { get; set; }
        public string tipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public DateTime fechaRegistro { get; set; }


    }
}