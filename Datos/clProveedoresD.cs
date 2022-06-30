using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clProveedoresD
    {
        public List<clProveedoresE> mtdListarProveedor()
        {
            string sql = "select * from proveedor";
            clConexion objConexion = new clConexion();
            DataTable tblProveedor = new DataTable();
            tblProveedor = objConexion.mtdDesconectado(sql);

            List<clProveedoresE> ListarProveedor = new List<clProveedoresE>();
            int cantReg = tblProveedor.Rows.Count;
            for (int i = 0; i < cantReg; i++)
            {
                clProveedoresE objDatos = new clProveedoresE();
                objDatos.idProveedor = int.Parse(tblProveedor.Rows[i]["idProveedor"].ToString());
                objDatos.nit = tblProveedor.Rows[i]["nit"].ToString();
                objDatos.razonSocial= tblProveedor.Rows[i]["razonSocial"].ToString();
                objDatos.telefono = tblProveedor.Rows[i]["telefono"].ToString();
                objDatos.correo = tblProveedor.Rows[i]["correo"].ToString();
                objDatos. direccion= tblProveedor.Rows[i]["direccion"].ToString();
                ListarProveedor.Add(objDatos);
            }
            return ListarProveedor;
        }

        public int mtdRegistrar(clProveedoresE objDatosEmpleado)
        {
            string sql = "insert into proveedor(nit,razonSocial,telefono,correo,direccion)" +
                "values ('" + objDatosEmpleado.nit + "' ,'" + objDatosEmpleado.razonSocial + "','" + objDatosEmpleado.telefono + "','" + objDatosEmpleado.correo + "' ,'" + objDatosEmpleado.direccion + "')";
            clConexion objConexion = new clConexion();
            int resulatdo = objConexion.mtdConectado(sql);
            return resulatdo;
        }


    }

}
