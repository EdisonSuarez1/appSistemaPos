

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
    public partial class frmCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static Respuesta<List<clClienteE>>Obtener()
        {
            List<clClienteE> oListaCliente = new List<clClienteE>();
            oListaCliente = clClienteD.Instancia.ObtenerCliente();
            if (oListaCliente != null)
            {
                return new Respuesta<List<clClienteE>>() { estado = true, objeto = oListaCliente };
            }
            else
            {
                return new Respuesta<List<clClienteE>>() { estado = false, objeto = null };
            }
        }



        [WebMethod]
        public static Respuesta<bool> Guardar(clClienteE oCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.RegistrarCliente(oCliente);
            return new Respuesta<bool>() { estado = Respuesta };
        }




        [WebMethod]
        public static Respuesta<bool> Editar(clClienteE oCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.ModificarCliente(oCliente);
            return new Respuesta<bool>() { estado = Respuesta };
        }

        [WebMethod]
        public static Respuesta<bool> Eliminar(int IdCliente)
        {
            bool Respuesta = false;
            Respuesta = clClienteD.Instancia.EliminarCliente(IdCliente);
            return new Respuesta<bool>() { estado = Respuesta };

        }
    }
}