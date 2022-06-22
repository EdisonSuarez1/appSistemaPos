<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmVentas.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }

        .auto-style2 {
            width: 108px;
        }

        .auto-style3 {
            width: 185px;
        }

        .auto-style6 {
            width: 204px;
        }

        .auto-style7 {
            width: 145px;
        }

        .auto-style8 {
            width: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" class="g-sidenav-show bg-gray-200">


    <form runat="server">
        <div class="row">
            <div class="col-sm-13 col-md-14 offset-md-13">
                <div class="card">
                    <div class="card-header p-2">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>Registra Nueva Venta

                      <div class="float-right">
                          <button id="btnTerminarGuardarVenta" class="btn-custom btn-primary btn-sm-custom float-right">
                              <i class="fa fa-print" aria-hidden="true"></i>Imprimir y Terminar Venta
                          </button>
                      </div>
                        <div class="modal fade" id="modalrol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Producto</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">

                                        <h4>Modal JEEm</h4>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cerrar</button>
                                        <button id="btnGuardarCambios" type="button" class="btn btn-sm btn-primary">Guardar Cambios</button>
                                    </div>
                                </div>
                            </div>
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
                                                <div class="form-group mb-3">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <label class="form-control form-control-sm model mb-1" type="text" readonly="true" id="lbltiendanombre"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Nit:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lbltiendaruc"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
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
                                                <div class="form-group mb-3">
                                                    <label for="txtRucProveedor" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lblempleadonombre"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Apellido:</label>
                                                    <label class="form-control form-control-sm model mb-1" readonly="true" id="lblempleadoapellido"></label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
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
                                                <div class="form-group mb-3">
                                                    <label for="txtClienteND" class="col-form-label col-form-label-sm">Numero Documento: <span class="required">*</span> </label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteNumDoc" name="RazonSocial" autocomplete="off"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtRazonSocialProveedor" class="col-form-label col-form-label-sm">Tipo Documento:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteTipoDoc" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtClienteN" class="col-form-label col-form-label-sm">Nombres: <span class="required">*</span></label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteNombre" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="form-group mb-3">
                                                    <label for="txtClienteD" class="col-form-label col-form-label-sm">Direccion:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteDireccion" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtClienteT" class="col-form-label col-form-label-sm">Telefono:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtClienteTelefono" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarCl" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarCliente" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" OnClick="btnBuscarCliente_Click" Text="Buscar" />
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
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="txtproductocodigo" class="col-form-label col-form-label-sm">Codigo: <span class="required">*</span></label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoCodigo" name="RazonSocial" autocomplete="off"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="txtproductonombre" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoNombre" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtproductodescripcion" class="col-form-label col-form-label-sm">Descripcion:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoDescripcion" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarProducto" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarProducto" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" OnClick="btnBuscarProducto_Click" Text="Buscar" />
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-3">
                                                        <label for="txtproductostock" class="col-form-label col-form-label-sm">En Stock:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoStock" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-3">
                                                        <label for="txtproductoprecio" class="col-form-label col-form-label-sm">Precio:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoPrecio" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-3">
                                                        <label for="txtproductocantidad" class="col-form-label col-form-label-sm">Cantidad: <span class="required">*</span></label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtProductoCantidad" name="RazonSocial" autocomplete="off"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group mb-3">
                                                        <label for="btnAsignar" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                        <asp:Button ID="btnAgregar" runat="server" type="button" class="btn btn-sm btn-success btn-block" OnClick="addProducto" Text="Agregar" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="card mt-2">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Lista Productos </h6>
                                        <div class="row">

                                            <asp:GridView ID="gdvDatos" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gdvDatos_SelectedIndexChanged"
                                                CssClass="table table-bordered table-condensed table-responsive table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>

                                                    <asp:TemplateField HeaderText="CODIGO">
                                                        <HeaderStyle Font-Size="20pt" Width="110px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="PRODUCTO">
                                                        <FooterStyle Font-Size="20pt" />
                                                        <HeaderStyle Font-Size="10pt" Width="215px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="DESCRIPCION">
                                                        <HeaderStyle Font-Size="20pt" Width="253px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="PRECIO UNIDAD">
                                                        <HeaderStyle Font-Size="20pt" Width="281px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="CANTIDAD">
                                                        <HeaderStyle Font-Size="20pt" Width="214px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="IMPORTE TOTAL">
                                                        <HeaderStyle Font-Size="20pt" Width="265px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="BORRAR">
                                                        <HeaderStyle Font-Size="20pt" Width="265px" />
                                                        <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#1C5E55" CssClass="card-title mb-1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#E3EAEB" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="card mt-2">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Detalle Producto</h6>
                                        <div class="row">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <div class="input-group input-group-sm mb-2">
                                                                <div class="input-group-prepend">
                                                                    <label class="input-group-text" for="inputGroupSelect01">Sub Total S/.</label>
                                                                </div>
                                                                <input id="txtSubTotal" readonly type="text" class="form-control" value="0">
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
