using appPlantilla.Entidades;
using appPlantilla.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ingresar"] == null)
                    Response.Redirect("../../frmLogin.aspx");
            }

        }

        [WebMethod]
        public static List<clClienteE> mtdListarCliente()
        {
            clClienteL objClienteL = new clClienteL();
            List<clClienteE> listaCliente = new List<clClienteE>();
            listaCliente = objClienteL.mtdListarCliente();
            return listaCliente;

        }



    }
}