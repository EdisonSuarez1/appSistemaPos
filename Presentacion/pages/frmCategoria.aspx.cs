using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.Web.Services;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
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






        [WebMethod]
        public static Respuesta<bool> mtdRegistrarCategoria(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdRegistrar(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

        [WebMethod]
        public static Respuesta<bool> mtdEditarCategoria(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdEditar(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

        [WebMethod]
        public static Respuesta<bool> mtdEliminarcategoria(int idCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.mtdEliminar(idCategoria);
            return new Respuesta<bool>() { estado = Respuesta };
        }







    }
}