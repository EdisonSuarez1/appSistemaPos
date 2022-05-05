using appPlantilla.Entidades;
using appPlantilla.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {


            clUsuariosE objDatos = new clUsuariosE();
            objDatos.correo = txtCorreo.Text;
            objDatos.clave = txtClave.Text;

            clUsuariosL objUsuariosL = new clUsuariosL();
            clUsuariosE objDatosReci = new clUsuariosE();
            objDatosReci = objUsuariosL.mtdLogin(objDatos);
            if (objDatosReci != null)
            {

                Session["usuario"] = objDatosReci.nombres + " " + objDatosReci.apellidos;
                Response.Redirect("Presentacion/pages/frmPageBlank.aspx");



                ////Session["usuario"] = "" + "" + "";
                //Session["usuario"] = txtEmail.Text;
                ////Response es para llamar la pagina 
                //Response.Redirect("presentacion/frmHome.aspx");

                //establesco la paguina de inicio q quiero q me aparesca


            }
            else
            {
                lblMensaje.Text = "usuario no Registrado ";
            }


        }
    }
}