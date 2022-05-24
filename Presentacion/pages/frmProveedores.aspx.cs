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
    public partial class frmProveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

            {
                Response.Redirect("frmProveedores.aspx");
            

            }
            else
            {
                lblMensaje.Text = "usuario no Registrado ";
            }



        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/frmLogin.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    
