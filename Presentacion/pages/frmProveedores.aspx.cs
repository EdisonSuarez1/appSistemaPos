using appPlantilla.Entidades;
using appPlantilla.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmProveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            clProveedoresE objUsuarioE = new clProveedoresE();

            objUsuarioE.nit = txtDocumento.Text;
            objUsuarioE.razonSocial = txtNombres.Text;
            objUsuarioE.telefono = txtApellidos.Text;
            objUsuarioE.correo = txtEmail.Text;
            objUsuarioE.direccion = txtdir.Text;



            clProveedoresL objUsuariosL = new clProveedoresL();

            int filas = objUsuariosL.mtdRegistarProveedores(objUsuarioE);
            if (filas > 0)

            {
                lblMensaje.Text = "usuario Registrado ";

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
    }
}
    
