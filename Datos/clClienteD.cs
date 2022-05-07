using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clClienteD
    {

        public List<clClienteE> mtdListarCliente()
        {
            string sql = "select * from cliente";
            clConexion objConexion = new clConexion();
            DataTable tblCliente = new DataTable();
            tblCliente = objConexion.mtdDesconectado(sql);

            List<clClienteE> listaCliente = new List<clClienteE>();
            int cantReg = tblCliente.Rows.Count;
            for (int i = 0; i < cantReg; i++)
            {
                clClienteE objDatos = new clClienteE();
                objDatos.idCliente = int.Parse(tblCliente.Rows[i]["idCliente"].ToString());
                objDatos.tipoDocumento = tblCliente.Rows[i]["tipoDocumento"].ToString();
                objDatos.numeroDocumento = tblCliente.Rows[i]["numeroDocumento"].ToString();
                objDatos.nombre = tblCliente.Rows[i]["nombre"].ToString();
                objDatos.direccion = tblCliente.Rows[i]["direccion"].ToString();
                objDatos.telefono = tblCliente.Rows[i]["telefono"].ToString();
                objDatos.fechaRegistro = DateTime.Parse(tblCliente.Rows[i]["fechaRegistro"].ToString());
                listaCliente.Add(objDatos);
            }
            return listaCliente;
        }



    }
}