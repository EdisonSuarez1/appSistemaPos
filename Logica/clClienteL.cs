using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clClienteL
    {

        public List<clClienteE> mtdListarCliente()
        {
            clClienteD objClienteD = new clClienteD();
            return objClienteD.mtdListarCliente();




        }
    }
}