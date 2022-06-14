using appPlantilla.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmCuotas : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=bdPymes;Integrated Security=True");
        ventas cli = new ventas();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        private void getListPersonal()
        {



        }


        protected void btnBuscarVenta_Click(object sender, EventArgs e)
        {

            string sql = "SELECT venta.codigo, cliente.numeroDocumento, cliente.nombre, detalleVenta.pagoTotal, abono.cantAbono FROM detalleVenta " +
                "INNER JOIN venta ON detalleVenta.idVenta=venta.idVenta INNER JOIN producto on detalleVenta.idProducto=producto.idProducto " +
                "INNER JOIN cliente on venta.idCliente=cliente.idCliente INNER JOIN abono on detalleVenta.idAbono=abono.idAbono WHERE venta.codigo='" + txtCodigoVenta.Text + "';";


            SqlCommand comando = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader leer = comando.ExecuteReader();
            if (leer.Read() == true)
            {
                txtCodigoVenta.Text = leer["codigo"].ToString();
                txtNumeroDocumento.Text = leer["numeroDocumento"].ToString();
                txtNombreCliente.Text = leer["nombre"].ToString();
                txtPagoTotal.Text = leer["pagoTotal"].ToString();
                txtCantAbono.Text = leer["cantAbono"].ToString();
            }
            else
            {
                Response.Write("No Se Encontro el Registro");
                txtCodigoVenta.Text = "";
                txtNumeroDocumento.Text = "";
                txtNombreCliente.Text = "";
                txtPagoTotal.Text = "";
                txtPagoTotal.Text = string.Empty; ;
            }
            con.Close();
        }

        protected void addProducto(object sender, EventArgs e)
        {
            int tv, ta, a, r;
            tv = Convert.ToInt32(txtPagoTotal.Text);
            ta = Convert.ToInt32(txtCantAbono.Text);
            a = Convert.ToInt32(txtAbono.Text);

            if (a > tv - ta)
            {
                Response.Write("Esta por encima de tu deuda");
            }
            else
            {
                r = ta + a;
                Response.Write(r);
                string sql = "UPDATE abono SET cantAbono='" + r + "';";
                con.Open();
                SqlCommand comando = new SqlCommand(sql, con);
                comando.Parameters.AddWithValue("deuda", r);
                comando.ExecuteNonQuery();
            }
        }
        protected void gdvVentas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dgvCuotas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtNumeroDocumento_TextChanged(object sender, EventArgs e)
        {

        }
    }
}