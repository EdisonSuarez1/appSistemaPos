using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using appPlantilla.Datos;
using appPlantilla.Logica;
using appPlantilla.Entidades;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmVentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private List<clProductosE> btnBuscarProducto_Click (object sender, EventArgs e)
        {
            clProductosL objDatosL = new clProductosL();
            List<clProductosE> listaProductos = new List<clProductosE>();

            listaProductos = objDatosL.mtdBuscarProductos();
            return listaProductos;
             





        }




    }
}