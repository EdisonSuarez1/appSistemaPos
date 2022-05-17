<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>
    <div class="rom m-4">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h1 > <center>POS PYMES</center></h1>
                </div>
                <div class="card-body">
                    <table class="display responsive nowrap" id="mytable" style="width:100%">
                        <thead>
                            <tr>
                                <th>idCliente</th>
                                <th>Tipo Documento</th>
                                <th>Numero Documento</th>
                                <th>Nombre</th>
                                <th>Direccion</th>
                                <th>Telefono</th>
                                <th>Fecha Registro</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="FormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Articulo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-12">


                            <input type="text" id="txtidArticulo" />
                            <div class="form-group">
                                <label for="txtNombre">Nombre:</label>
                                <input type="text" class="form-control" id="txtNombre">
                            </div>
                            <div class="form-group">
                                <label for="txtCantidad">Cantidad:</label>
                                <input type="text" class="form-control" id="txtCantidad">
                            </div>
                            <div class="form-group">
                                <label for="txtPrecio">Precio:</label>
                                <input type="text" class="form-control" id="txtPrecio">
                            </div>
                            <div class="form-group">
                                <label for="txtDescripcion">Descripcion:</label>
                                <input type="text" class="form-control" id="txtDescripcion">
                            </div>


                        </div>
                    </div>
        

</asp:Content>
