using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Entidades
{
    public class clUsuariosE
    {
        public int idUsuario { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public string correo { get; set; }
        public string clave { get; set; }
        public string fechaRegistro { get; set; }
        public int idSucursal { get; set; }
        public int idRol { get; set; }
        public string descripcion { get; set; }



    }
}