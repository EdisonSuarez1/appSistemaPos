<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmVentas.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="g-sidenav-show bg-gray-200">
    <form runat="server">
        <div class="row">
            <div class="col-sm-11 col-md-14 offset-md-13">
                <div class="card">
                    <div class="card-header p-2">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>Registra Nueva Venta

                      <div class="float-right">
                          <button id="btnTerminarGuardarVenta" class="btn-custom btn-primary btn-sm-custom float-right">
                              <i class="fa fa-print" aria-hidden="true"></i>Imprimir y Terminar Venta
                          </button>
                      </div>
                    </div>
                    <div class="card-body p-2 card-venta">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="input-group input-group-sm mb-2">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">Tipo Documento</label>
                                    </div>
                                    <select class="custom-select" id="cboventatipodocumento">
                                        <option value="Boleta">Boleta</option>
                                        <option value="Factura">Factura</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="input-group input-group-sm mb-2">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">Fecha de Venta</label>
                                    </div>
                                    <input id="txtfechaventa" readonly type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="card" style="background-color: #F7F7F7">
                                    <div class="card-body p-2">
                                        <div class="row">
                                            <div class="col-sm-10">
                                                <h6 class="card-title mb-1">Tienda origen</h6>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="float-right">
                                                    <a class="btn btn-secondary btn-sm" data-toggle="collapse" href="#collapse1" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                        <i class="fa fa-sort" aria-hidden="true"></i>
                                                    </a>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row collapse" id="collapse1">
                                            <input id="txtIdTienda" type="hidden" value="0" />
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lbltiendanombre"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">RUC:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lbltiendaruc"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Direccion:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lbltiendadireccion"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card" style="background-color: #F7F7F7">
                                    <div class="card-body p-2">

                                        <div class="row">
                                            <div class="col-sm-10">
                                                <h6 class="card-title mb-1">Datos Empleado</h6>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="float-right">
                                                    <a class="btn btn-secondary btn-sm" data-toggle="collapse" href="#collapse2" role="button" aria-expanded="false" aria-controls="collapseExample">
                                                        <i class="fa fa-sort" aria-hidden="true"></i>
                                                    </a>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row collapse" id="collapse2">
                                            <input id="txtIdUsuario" type="hidden" value="0" />
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRucProveedor" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lblempleadonombre"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Apellido:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lblempleadoapellido"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Correo:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lblempleadocorreo"></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Detalle cliente</h6>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Tipo Documento:</label>
                                                    <select class="form-control form-control-sm model" id="cboclientetipodocumento" name="Rol">
                                                        <option value="DNI">DNI</option>
                                                        <option value="Carnet Extranjeria">Carnet Extranjeria</option>
                                                        <option value="RUC">RUC</option>
                                                    </select>
                                                </div>
                                            </div>



                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtClienteND" class="col-form-label col-form-label-sm">Numero Documento: <span class="required">*</span> </label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteNumDoc" name="RazonSocial" autocomplete="off"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtClienteN" class="col-form-label col-form-label-sm">Nombres: <span class="required">*</span></label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteNombre" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                    <asp:Button ID="btnBuscarCliente" Style="position: absolute; top: 84%;" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" OnClick="btnBuscarCliente_Click" Text="Buscar" />

                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="form-group mb-0">
                                                    <label for="txtClienteD" class="col-form-label col-form-label-sm">Direccion:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteDireccion" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtClienteT" class="col-form-label col-form-label-sm">Telefono:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteTelefono" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group mb-0">
                                                    <label for="btnBuscarCl" class="col-form-label col-form-label-sm invisible">Buscar:</label>

                                                </div>
                                            </div>
                                        </div>



                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Detalle Producto</h6>
                                        <div class="row">
                                            <input id="txtIdProducto" type="hidden" value="0" />
                                            <div class="col-sm-3">
                                                <div class="form-group mb-0">
                                                    <label for="txtproductocodigo" class="col-form-label col-form-label-sm">Codigo: <span class="required">*</span></label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoCodigo" name="RazonSocial" autocomplete="off"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-0">
                                                    <label for="txtproductonombre" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoNombre" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-0">
                                                    <label for="txtproductodescripcion" class="col-form-label col-form-label-sm">Descripcion:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoDescripcion" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group mb-0">
                                                    <label for="btnBuscarProducto" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarProducto" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" OnClick="btnBuscarProducto_Click" Text="Buscar" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-0">
                                                        <label for="txtproductostock" class="col-form-label col-form-label-sm">En Stock:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoStock" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-0">
                                                        <label for="txtproductoprecio" class="col-form-label col-form-label-sm">Precio:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoPrecio" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-0">
                                                        <label for="txtproductocantidad" class="col-form-label col-form-label-sm">Cantidad: <span class="required">*</span></label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoCantidad" name="RazonSocial" autocomplete="off" ></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-0">
                                                        <label for="btnAsignar" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                        <asp:Button ID="btnAgregar" runat="server" type="button" class="btn btn-sm btn-success btn-block" OnClick="addProducto" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />

                            <div class="row mt-3">
                                <div class="col-sm-13">
                                    <div class="table-responsive-sm">
                                        <table id="tbVenta" class="table table-striped table-bordered nowrap table-sm" style="width: 100%">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Producto</th>
                                                    <th>Descripcion</th>
                                                    <th>Cantidad</th>
                                                    <th>Precio Unidad</th>
                                                    <th>Importe Total</th>
                                                    <th>Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>


                            <asp:GridView ID="gdvDatos" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gdvDatos_SelectedIndexChanged" BorderStyle="None">
                                <Columns>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="110px" /> <ItemStyle Font-Size="10pt" />
                                        
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="250px" />
                                        <ItemStyle Font-Size="10pt" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="250px" />
                                        <ItemStyle Font-Size="10pt" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="250px" />
                                        <ItemStyle Font-Size="10pt" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="250px" />
                                        <ItemStyle Font-Size="10pt" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="">
                                        <HeaderStyle Font-Size="10pt" Width="300px" />
                                        <ItemStyle Font-Size="10pt" />
                                    </asp:TemplateField>

                                    <asp:TemplateField></asp:TemplateField>



                                    <asp:ButtonField Text="Borrar" />
                                </Columns>
                            </asp:GridView>

                            <hr />
                            <hr />
                            <hr />

                            <hr />
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="input-group input-group-sm mb-2">
                                                <div class="input-group-prepend">
                                                    <label class="input-group-text" for="inputGroupSelect01">Sub Total S/.</label>
                                                </div>
                                                <input id="txtsubtotal" readonly type="text" class="form-control" value="0">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group input-group-sm mb-2">
                                                <div class="input-group-prepend">
                                                    <label class="input-group-text" for="inputGroupSelect01">IGV S/.</label>
                                                </div>
                                                <input id="txtigv" readonly type="text" class="form-control" value="0">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group input-group-sm mb-2">
                                                <div class="input-group-prepend">
                                                    <label class="input-group-text" for="inputGroupSelect01">Total S/.</label>
                                                </div>
                                                <input id="txttotal" readonly type="text" class="form-control" value="0">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="input-group input-group-sm mb-2">
                                                <div class="input-group-prepend">
                                                    <label class="input-group-text" for="inputGroupSelect01">Monto Pago S/.</label>
                                                </div>
                                                <input id="txtmontopago" type="text" class="form-control" autocomplete="off">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <button id="btncalcular" type="button" class="btn btn-sm btn-warning btn-block"><i class="fa fa-caret-right" aria-hidden="true"></i>Calcular</button>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="input-group input-group-sm mb-2">
                                                <div class="input-group-prepend">
                                                    <label class="input-group-text" for="inputGroupSelect01">Cambio S/.</label>
                                                </div>
                                                <input id="txtcambio" readonly type="text" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                </div>
            </div>

            <!-- MODAL PRODUCTOS -->
            <div class="modal fade" id="modalProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Productos</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="table-responsive">
                                <table id="tbProducto" class="table table-striped table-bordered nowrap compact">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Descripcion</th>
                                            <th>Stock</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>




    </form>
    <script src="Controlador/frmCrearVenta/frmCrearVenta.js"></script>


</asp:Content>
