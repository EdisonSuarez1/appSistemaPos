using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clUsuariosL
    {
        public clUsuariosE mtdLogin(clUsuariosE objDatos)
        {
            clUsuariosD objUsuariosD = new clUsuariosD();
            clUsuariosE objDatosUsuario = new clUsuariosE();
            objDatosUsuario = objUsuariosD.mtdLogin(objDatos);
            return objDatosUsuario;



        }

    }
}