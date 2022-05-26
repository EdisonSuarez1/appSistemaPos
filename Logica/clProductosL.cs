using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clProductosL
    {


        public int mtdBuscarProductos(clProductosE objdatosUser)
        {
            clProductosD objUsuariosD = new clProductosD();
            int resultado = objUsuariosD.mtdBuscar(objdatosUser);
            return resultado;
        }

        internal List<clProductosE> mtdBuscarProductos()
        {
            throw new NotImplementedException();
        }
    }
}