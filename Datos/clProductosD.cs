using appPlantilla.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace appPlantilla.Datos
{
    public class clProductosD
    {

        public int mtdRegistrar(clProductosE objDatosEmpleado)
        {
            string sql = "insert into producto(codigo,Nombre,precioUnidadVenta,descripcion,idCategoria)" +
                "values ('" + objDatosEmpleado.codigo + "' ,'" + objDatosEmpleado.Nombre + "','" + objDatosEmpleado.precioUnidadVenta + "','" + objDatosEmpleado.descripcion + "' ,'" + objDatosEmpleado.idCategoria + "')";
            clConexion objConexion = new clConexion();
            int resulatdo = objConexion.mtdConectado(sql);
            return resulatdo;
        }
        public int mtdBuscar(clProductosE objDatosEmpleado)
        {
           string sql = "SELECT * FROM productos WHERE  Nombre = @Nombre";
            clConexion objConexion = new clConexion();
            int resulatdo = objConexion.mtdConectado(sql);
            return resulatdo;


        }







    }
}