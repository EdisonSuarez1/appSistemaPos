using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmVentas : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=bdPymes;Integrated Security=True");

        List<arreglosC.GridV> GvArray = new List<arreglosC.GridV>();

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
            string sql = "SELECT * FROM producto INNER JOIN productoTienda ON producto.idProducto=productoTienda.idProducto WHERE producto.codigo='" + txtProductoCodigo.Text + "';";

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
        protected void addProducto(object sender, EventArgs e)
        {

            if (txtProductoCantidad.Text == "" || txtProductoPrecio.Text == "")
            {
                
                Response.Write("No digito cantidad");
            }
            else
            {
                n1 = Convert.ToInt32(txtProductoPrecio.Text);
                n2 = Convert.ToInt32(txtProductoCantidad.Text);
                r = n1 * n2;
                if (ViewState["Vaar"] != null)
                {//Recuperar registros guardados
                    GvArray = ViewState["Vaar"] as List<arreglosC.GridV>;
                }
                GvArray.Add(new arreglosC.GridV
                {
                    id = txtProductoCodigo.Text,
                    Dat1 = txtProductoNombre.Text,
                    Dat2 = txtProductoDescripcion.Text,
                    Dat3 = txtProductoCantidad.Text,
                    Dat4 = txtProductoPrecio.Text,
                    Dat5 = r.ToString()
                });
                InsertarDat();

                txtProductoCodigo.Text = "";
                txtProductoNombre.Text = "";
                txtProductoDescripcion.Text = "";
                txtProductoStock.Text = "";
                txtProductoPrecio.Text = "";
                txtProductoCantidad.Text = "";
                txtProductoCantidad.Text = string.Empty; ;

                int sub = r + r;
            }
        }
        protected void gdvDatos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
