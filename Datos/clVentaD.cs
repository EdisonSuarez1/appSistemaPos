using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clVentaD
    {



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