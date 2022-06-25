<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmCompras.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmCompra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <div class="row">
            <div class="col-sm-13 col-md-14 offset-md-13">
                <div class="card">
                    <div class="card-header">
                        Registrar Compra
                    </div>
                    <div class="card-body card-compra p-2">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Detalle Proveedor Origen</h6>
                                        <div class="row">
                                            <input id="txtIdProveedor" type="hidden" value="0" />
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtRucProveedor" class="col-form-label col-form-label-sm">NIT:</label>
                                                    <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtProveedorNit" name="proveedotNit" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtNombreProveedor" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ReadOnly="true" ID="txtProveedortNombre" name="proveedorNombre" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarProveedor" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarProveedor" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" Text="Buscar" OnClick="btnBuscarProveedor_Click" />
                                                </div>  
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="card">
                                    <div class="card-body p-2">
                                        <h6 class="card-title mb-1">Detalle Sucursal Destino</h6>
                                        <div class="row">
                                            <input id="txtIdTienda" type="hidden" value="0" />
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="txtNitTienda" class="col-form-label col-form-label-sm">NIT:</label>
                                                    <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtSucursalNit" name="sucursalNit" />
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="txtNombreTienda" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ReadOnly="true" ID="txtSucursalNombre" name="sucursalNombre" />
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="txtDireccionTienda" class="col-form-label col-form-label-sm">Direccion:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ReadOnly="true" ID="txtSucursalDireccion" name="sucursalDireccion" />
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarTienda" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarSucursal" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" Text="Buscar" OnClick="btnBuscarSucursal_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="row mb-3">
                            <div class="col-sm-13">
                                <div class="card-body card-compra p-1">
                                    <div class="card">
                                        <div class="card-body p-1">
                                            <h6 class="card-title mb-1">Producto Registrado</h6>
                                            <div class="row">

                                                <input id="txtIdTienda1" type="hidden" value="0" />
                                                <div class="col-sm-4">
                                                    <div class="form-group mb-3">
                                                        <label for="txtCodigoProducto" class="col-form-label col-form-label-sm">Codigo:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtRegProCod" name="productoCodigo" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group mb-3">
                                                        <label for="txtNombreProducto" class="col-form-label col-form-label-sm">Nombre:</label>
                                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ReadOnly="true" ID="txtRegProNombre" name="productoNombre" />
                                                    </div>
                                                </div>

                                                <div class="col-sm-4">
                                                    <div class="form-group mb-3">
                                                        <label for="txtCantidadProducto" class="col-form-label col-form-label-sm">Cantidad:</label>
                                                        <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtRegProCant" name="productoCantidad" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group mb-3">
                                                        <label for="txtPrecioCompraProducto" class="col-form-label col-form-label-sm">Precio Compra:</label>
                                                        <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtRegProPreC" name="productoPrecioC" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group mb-3">
                                                        <label for="txtPrecioVentaProducto" class="col-form-label col-form-label-sm">Precio Venta:</label>
                                                        <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtRegProPreV" name="productoPrecioV" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-group mb-3">
                                                        <label for="btnBuscarProdReg" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                        <asp:Button ID="btnBuscarProdReg" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" Text="Buscar" OnClick="btnBuscarProdReg_Click" />
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-group mb-3">
                                                        <label for="btnAgregarProdReg" class="col-form-label col-form-label-sm invisible">Agregar:</label>
                                                        <asp:Button ID="btnAgregarProdReg" runat="server" class="btn btn-sm btn-primary btn-block" Text="Agregar" OnClick="btnAgregarCompra_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="card" style="background-color: #F7F7F7">
                                    <div class="card-body p-2">
                                        <div class="row">
                                            <div class="col-sm-10">
                                                <h6 class="card-title mb-1">Producto Nuevo</h6>
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
                                                    <label for="txtCodigoProducto" class="col-form-label col-form-label-sm">Codigo:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtNvProCod" name="productoCodigo" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtNombreProducto" class="col-form-label col-form-label-sm">Nombre:</label>
                                                    <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtNvProNombre" name="productoNombre" />
                                                </div>
                                            </div>

                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtCantidadProducto" class="col-form-label col-form-label-sm">Cantidad:</label>
                                                    <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtNvProCant" name="productoCantidad" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtPrecioCompraProducto" class="col-form-label col-form-label-sm">Precio Compra:</label>
                                                    <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtNvProPreC" name="productoPrecioC" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group mb-3">
                                                    <label for="txtPrecioVentaProducto" class="col-form-label col-form-label-sm">Precio Venta:</label>
                                                    <asp:TextBox runat="server" type="number" class="form-control form-control-sm model" ID="txtNvPreV" name="productoPrecioV" />
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarTienda" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                                    <asp:Button ID="btnBuscarProdNv" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" Text="Buscar" />
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <div class="form-group mb-3">
                                                    <label for="btnBuscarTienda" class="col-form-label col-form-label-sm invisible">Agregar:</label>
                                                    <asp:Button ID="btnAgregarProdNv" runat="server" class="btn btn-sm btn-primary btn-block" Text="Agregar" OnClick="btnAgregarCompra_Click" />
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

                                        <asp:GridView ID="gdvDatos" runat="server" AutoGenerateColumns="False" 
                                            CssClass="table table-bordered table-condensed table-responsive table-hover" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="5">
                                            <AlternatingRowStyle BackColor="White" />
                                            <Columns>

                                                <asp:TemplateField HeaderText="CODIGO">
                                                    <HeaderStyle Font-Size="20pt" Width="110px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                    <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="NOMBRE">
                                                    <FooterStyle Font-Size="20pt" />
                                                    <HeaderStyle Font-Size="10pt" Width="215px" />
                                                    <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="CANTIDAD">
                                                    <HeaderStyle Font-Size="20pt" Width="281px" />
                                                    <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PRECIO COMPRA">
                                                    <HeaderStyle Font-Size="20pt" Width="214px" />
                                                    <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="PRECIO VENTA">
                                                    <HeaderStyle Font-Size="20pt" Width="265px" />
                                                    <ItemStyle Font-Size="20pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="TOTAL COMPRA">
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




                    </div>
                    <div class="card-footer">
                        <div class="float-right">
                            <button id="btnTerminarGuardarCompra" class="btn btn-success btn-sm float-right">
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>Terminar y Guardar Compra
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modalProveedor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Proveedores</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table id="tbProveedor" class="table table-striped table-bordered nowrap compact">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>RUC</th>
                                        <th>Razon Social</th>
                                        <th>Direccion</th>
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

        <div class="modal fade" id="modalTienda" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Tiendas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table id="tbTienda" class="table table-striped table-bordered nowrap compact">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>RUC</th>
                                        <th>Razón Social</th>
                                        <th>Direccion</th>
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
                                        <th>Categoria</th>
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
    </form>
</asp:Content>
