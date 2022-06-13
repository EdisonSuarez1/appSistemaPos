<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <formview runat="server">
        <div class="row">
            <div class="col-sm-11 col-md-14 offset-md-13">


                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">LISTADO CLIENTES</h1>


                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Listado</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dtCliente" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>Documento</th>
                                            <th>#Documento</th>
                                            <th>Nombre</th>
                                            <th>direcccion</th>
                                            <th>telefono</th>
                                            <th>fecha registro</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>id</th>
                                            <th>Documento</th>
                                            <th>#Documento</th>
                                            <th>Nombre</th>
                                            <th>direcccion</th>
                                            <th>telefono</th>
                                            <th>fecha registro</th>
                                            <th>Editar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </formview>



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
                </div>
            </div>
        </div>
    </div>

    <%--    ---------SCRIPT DATATABLE--------------%>
    <script src="../../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../../assets/js/datosDataTable.js"></script>
    <%--    ---------SCRIPT DATATABLE--------------%>
</asp:Content>
