using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clProveedorL
    {



     
        public static Respuesta<List<clProveedorE>> mtdListarProveedor()
        {
            List<clProveedorE> oListaProveedor = new List<clProveedorE>();
            oListaProveedor = clProveedorD.Instancia.mtdListar();
            if (oListaProveedor != null)
            {
                return new Respuesta<List<clProveedorE>>() { estado = true, objeto = oListaProveedor };
            }
            else
            {
                return new Respuesta<List<clProveedorE>>() { estado = false, objeto = null };
            }
        }

       

        public static Respuesta<bool> mtdRegistrarProveedor(clProveedorE oProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdRegistrar(oProveedor);
            return new Respuesta<bool>() { estado = Respuesta };
        }


        public static Respuesta<bool> mtdEditarProveedor(clProveedorE oProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdEditar(oProveedor);
            return new Respuesta<bool>() { estado = Respuesta };
        }

     
        public static Respuesta<bool> mtdEliminarProveedor(int idProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdEliminar(idProveedor);
            return new Respuesta<bool>() { estado = Respuesta };

        }



    }

}

