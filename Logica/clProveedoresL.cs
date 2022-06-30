using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clProveedoresL
    {
        public int mtdRegistarProveedores(clProveedoresE objdatosUser)
        {
            clProveedoresD objUsuariosD = new clProveedoresD();
            int resultado = objUsuariosD.mtdRegistrar(objdatosUser);
            return resultado;
        }
    }

}

