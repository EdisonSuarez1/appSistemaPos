using appPlantilla.Entidades;
using appPlantilla.Logica;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            lblMensaje.Text = Session["rol"].ToString();
            lblNombre.Text = Session ["Usuario"].ToString();


        }

    }
}



