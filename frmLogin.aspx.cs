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

                Session["Usuario"] = objDatosReci.nombres + " " + objDatosReci.apellidos;
                Session["rol"] = objDatosReci.descripcion;
                if (Session["rol"].ToString() == "Vendedor")
                {
                    Response.Redirect("Presentacion/pages/frmInicioVendedor.aspx");
                }
                else if (Session["rol"].ToString() == "Inventarista")
                {
                    Response.Redirect("Presentacion/pages/frmInicioInventarista.aspx");
                }
                else if (Session["rol"].ToString() == "Administrador")
                {
                    Response.Redirect("Presentacion/pages/frmInicioAdministrador.aspx");
                }
                else
                {
                    lblMensaje.Text = "usuario no Registrado ";
                }





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