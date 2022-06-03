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
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=bdPymes;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ingresar"] == null)
                    Response.Redirect("../../frmLogin.aspx");
            }
        }


        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM cliente WHERE  numeroDocumento= '" + txtClienteNumDoc.Text + "' ";
            //clConexion objConexion = new clConexion();

            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtClienteNumDoc.Text = leer["numeroDocumento"].ToString();
                txtClienteNombre.Text = leer["nombre"].ToString();
                txtClienteDireccion.Text = leer["direccion"].ToString();
                txtClienteTelefono.Text = leer["telefono"].ToString();

            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtClienteNumDoc.Text = "";
                txtClienteNombre.Text = "";
                txtClienteDireccion.Text = "";
                txtClienteTelefono.Text = "";
                txtClienteTelefono.Text = string.Empty; ;

            }
            con.Close();
        }

        protected void btnBuscarProducto_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM producto INNER JOIN productoTienda ON producto.idProducto=productoTienda.idProducto WHERE producto.codigo=1;";
            //clConexion objConexion = new clConexion();

            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtProductoCodigo.Text = leer["codigo"].ToString();
                txtProductoNombre.Text = leer["Nombre"].ToString();
                txtProductoDescripcion.Text = leer["descripcion"].ToString();
                txtProductoStock.Text = leer["stock"].ToString();
                txtProductoPrecio.Text = leer["precioUnidadVenta"].ToString();
            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtProductoCodigo.Text = "";
                txtProductoNombre.Text = "";
                txtProductoDescripcion.Text = "";
                txtProductoStock.Text = "";
                txtProductoPrecio.Text = "";
                txtProductoPrecio.Text = string.Empty; ;
            }
            con.Close();
        }
    }
}   