using appPlantilla.Datos;
using appPlantilla.Entidades;
using appPlantilla.Logica;
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


    public partial class frmProveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
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

        [WebMethod]
        public static Respuesta<bool> mtdRegistrarProveedor(clProveedorE oProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdRegistrar(oProveedor);
            return new Respuesta<bool>() { estado = Respuesta };
        }

        [WebMethod]
        public static Respuesta<bool> mtdEditarProveedor(clProveedorE oProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdEditar(oProveedor);
            return new Respuesta<bool>() { estado = Respuesta };
        }

        [WebMethod]
        public static Respuesta<bool> mtdEliminarProveedor(int idProveedor)
        {
            bool Respuesta = false;
            Respuesta = clProveedorD.Instancia.mtdEliminar(idProveedor);
            return new Respuesta<bool>() { estado = Respuesta };

        }
    }




}

