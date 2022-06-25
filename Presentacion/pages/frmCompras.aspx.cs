using appPlantilla.Datos;
using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmCompra : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=bdPymes;Integrated Security=True");

        List<arreglos.GridV> GvArray = new List<arreglos.GridV>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ingresar"] == null)
                    Response.Redirect("../../frmLogin.aspx");
            }

        }

        protected void btnBuscarProveedor_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM proveedor WHERE  nit = '" + txtProveedorNit.Text + "' ";

            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtProveedorNit.Text = leer["nit"].ToString();
                txtProveedortNombre.Text = leer["nombre"].ToString();
            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtProveedorNit.Text = "";
                txtProveedortNombre.Text = "";
                txtProveedortNombre.Text = string.Empty; ;
            }
            con.Close();
        }
        protected void btnBuscarSucursal_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM sucursal WHERE  nit = '" + txtSucursalNit.Text + "' ";

            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtSucursalNit.Text = leer["nit"].ToString();
                txtSucursalNombre.Text = leer["nombre"].ToString();
                txtSucursalDireccion.Text = leer["direccion"].ToString();

            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtSucursalNit.Text = "";
                txtSucursalNombre.Text = "";
                txtSucursalDireccion.Text = "";

                txtSucursalNombre.Text = string.Empty; ;
            }
            con.Close();
        }




        protected void btnBuscarProdReg_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM producto INNER JOIN productoTienda ON producto.idProducto=productoTienda.idProducto WHERE producto.codigo='" + txtRegProCod.Text + "';";

            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtRegProCod.Text = leer["codigo"].ToString();
                txtRegProNombre.Text = leer["Nombre"].ToString();
                txtRegProCant.Text = leer["stock"].ToString();
            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtRegProCod.Text = "";
                txtRegProNombre.Text = "";
                txtRegProCant.Text = "";
                txtRegProCant.Text = string.Empty; ;
            }
            con.Close();
        }

        protected void InsertarDat()
        {
            int k;
            //INSERTAR DATOS EN LA PAGINA EN EL GRID VIEW
            ViewState["Vaar"] = GvArray;//Vaciar el GvArray al ViewState
            gdvDatos.DataSource = GvArray;//Vaciar el GridView para visualizar por el usuario
            gdvDatos.DataBind();
            for (k = 0; k < GvArray.Count; k++)
            {
                gdvDatos.SelectedIndex = k;
                gdvDatos.SelectedRow.Cells[0].Text = GvArray[k].id;
                gdvDatos.SelectedRow.Cells[1].Text = GvArray[k].Dat1;
                gdvDatos.SelectedRow.Cells[2].Text = GvArray[k].Dat2;
                gdvDatos.SelectedRow.Cells[3].Text = GvArray[k].Dat3;
                gdvDatos.SelectedRow.Cells[4].Text = GvArray[k].Dat4;
                gdvDatos.SelectedRow.Cells[5].Text = GvArray[k].Dat5;


            }
            //Response.Write("Se Encontro el Registro" + GvArray.Count.ToString());
        }
        int n1, n2, r;

        protected void btnAgregarCompra_Click(object sender, EventArgs e)
        {

            if (txtRegProPreC.Text == "" || txtRegProPreV.Text == "" || txtRegProCant.Text == "")
            {

                Response.Write("Ingrese todos los datos");
            }
            else
            {
                n1 = Convert.ToInt32(txtRegProPreC.Text);
                n2 = Convert.ToInt32(txtRegProCant.Text);
                r = n1 * n2;
                if (ViewState["Vaar"] != null)
                {//Recuperar registros guardados
                    GvArray = ViewState["Vaar"] as List<arreglos.GridV>;
                }
                GvArray.Add(new arreglos.GridV
                {
                    id = txtRegProCod.Text,
                    Dat1 = txtRegProNombre.Text,
                    Dat2 = txtRegProCant.Text,
                    Dat3 = txtRegProPreC.Text,
                    Dat4 = txtRegProPreV.Text,
                    Dat5 = r.ToString()
                });
                InsertarDat();

                txtRegProCod.Text = "";
                txtRegProNombre.Text = "";
                txtRegProCant.Text = "";
                txtRegProPreC.Text = "";
                txtRegProPreV.Text = "";
                txtRegProPreV.Text = string.Empty; ;

                int sub = r + r;
            }
        }
        
    }
}