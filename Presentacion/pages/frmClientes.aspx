<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    



    <formview runat="server" >
 


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
     
</formview>



    

    <script src="../recursos/vendor/jquery/jquery.min.js"></script>

    <script src="../recursos/js/datosDataTable.js"></script>









</asp:Content>
