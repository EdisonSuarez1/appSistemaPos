

using appCrud.Entidades;
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

namespace appPlantilla.Presentacion.page
{
    public partial class frmProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<List<clProductoE>> Obtener()
        {
            List<clProductoE> oListaProducto = new List<clProductoE>();
            oListaProducto = clProductoD.Instancia.ObtenerProducto();
            if (oListaProducto != null)
            {
                return new Respuesta<List<clProductoE>>() { estado = true, objeto = oListaProducto };
            }
            else
            {
                return new Respuesta<List<clProductoE>>() { estado = false, objeto = null };
            }
        }

        [WebMethod]
        public static Respuesta<bool> Guardar(clProductoE oProducto)
        {
            bool Respuesta = false;
            Respuesta = clProductoD.Instancia.RegistrarProducto(oProducto);
            return new Respuesta<bool>() { estado = Respuesta };
        }

        [WebMethod]
        public static Respuesta<bool> Editar(clProductoE oProducto)
        {
            bool Respuesta = false;
            Respuesta = clProductoD.Instancia.ModificarProducto(oProducto);
            return new Respuesta<bool>() { estado = Respuesta };
        }

        [WebMethod]
        public static Respuesta<bool> Eliminar(int IdProducto)
        {
            bool Respuesta = false;
            Respuesta = clProductoD.Instancia.EliminarProducto(IdProducto);
            return new Respuesta<bool>() { estado = Respuesta };

        }
    }
}