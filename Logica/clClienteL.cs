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

        public static Respuesta<List<clClienteE>> mtdListarCliente()
        {
            List<clClienteE> oListaCliente = new List<clClienteE>();
            oListaCliente = clClienteD.Instancia.mtdListar();

            if (oListaCliente != null)
            {
                return new Respuesta<List<clClienteE>>() { estado = true, objeto = oListaCliente };
            }
            else
            {
                return new Respuesta<List<clClienteE>>() { estado = false, objeto = null };
            }
        }


        public static Respuesta<bool> mtdRegistrarCliente(clClienteE oCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.mtdRegistrar(oCliente);
            return new Respuesta<bool>() { estado = Respuesta };
        }


        public static Respuesta<bool> mtdEditarCliente(clClienteE oCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.mtdEditar(oCliente);
            return new Respuesta<bool>() { estado = Respuesta };
        }



        public static Respuesta<bool> mtdEliminarCliente(int idCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.mtdEliminar(idCliente);
            return new Respuesta<bool>() { estado = Respuesta };

        }




    }
}