using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Logica
{
    public class clCategoriaL
    {


        public static Respuesta<List<clCategoriaE>> mtdListarCategoria()
        {
            List<clCategoriaE> oListaCategoria = new List<clCategoriaE>();
            oListaCategoria = clCategoriaD.Instancia.mtdListar();

            if (oListaCategoria != null)
            {
                return new Respuesta<List<clCategoriaE>>() { estado = true, objeto = oListaCategoria };
            }
            else
            {
                return new Respuesta<List<clCategoriaE>>() { estado = false, objeto = null };
            }
        }

       
        public static Respuesta<bool> mtdRegistrarCategoria(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdRegistrar(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

      
        public static Respuesta<bool> mtdEditarCategoria(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdEditar(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

       
        public static Respuesta<bool> mtdEliminarcategoria(int idCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdEliminar(idCategoria);
            return new Respuesta<bool>() { estado = Respuesta };
        }



    }
}