

using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmCategoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<List<clCategoriaE>> Obtener()
        {
            List<clCategoriaE> oListaCategoria = new List<clCategoriaE>();
            oListaCategoria = clCategoriaD.Instancia.ObtenerCategoria();

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
        public static Respuesta<bool> Guardar(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.RegistrarCategoria(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

        [WebMethod]
        public static Respuesta<bool> Editar(clCategoriaE oCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.ModificarCategoria(oCategoria);
            return new Respuesta<bool>() { estado = Respuesta };

        }

        [WebMethod]
        public static Respuesta<bool> Eliminar(int IdCategoria)
        {
            bool Respuesta = false;
            Respuesta = clCategoriaD.Instancia.EliminarCategoria(IdCategoria);
            return new Respuesta<bool>() { estado = Respuesta };
        }
    }
}