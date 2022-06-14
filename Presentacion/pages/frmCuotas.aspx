<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmCuotas.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmCuotas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <form runat="server">
        <div class="row">
            <div class="col-sm-11 col-md-14 offset-md-13">



                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-body p-2">
                            <h6 class="card-title mb-1">Detalle Producto</h6>
                            <div class="row">
                                <input id="txtIdProducto" type="hidden" value="0" />
                                <div class="col-sm-3">
                                    <div class="form-group mb-0">
                                        <label for="txtproductocodigo" class="col-form-label col-form-label-sm">Codigo Venta: <span class="required">*</span></label>
                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtCodigoVenta" name="RazonSocial" autocomplete="off"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group mb-0">
                                        <label for="txtproductonombre" class="col-form-label col-form-label-sm">Documento Cliente:</label>
                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtNumeroDocumento" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group mb-0">
                                        <label for="txtproductodescripcion" class="col-form-label col-form-label-sm">Nombre Cliente:</label>
                                        <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtNombreCliente" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group mb-0">
                                        <label for="btnBuscarProducto" class="col-form-label col-form-label-sm invisible">Buscar:</label>
                                        <asp:Button ID="btnBuscarVenta" runat="server" type="button" class="btn btn-sm btn-secondary btn-block" OnClick="btnBuscarVenta_Click" Text="Buscar" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group mb-0">
                                            <label for="txtproductostock" class="col-form-label col-form-label-sm">Total Venta:</label>
                                            <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtPagoTotal" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div class="form-group mb-0">
                                            <label for="txtproductostock" class="col-form-label col-form-label-sm">Total Abonado:</label>
                                            <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtCantAbono" name="RazonSocial" autocomplete="off" ReadOnly="true"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div class="form-group mb-0">
                                            <label for="txtproductostock" class="col-form-label col-form-label-sm">Cantidad a Abonar    :</label>
                                            <asp:TextBox runat="server" type="text" class="form-control form-control-sm model" ID="txtAbono" name="RazonSocial" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group mb-0">
                                            <label for="btnAsignar" class="col-form-label col-form-label-sm invisible">Finalizar:</label>
                                            <asp:Button ID="btnFinalizar" runat="server" type="button" class="btn btn-sm btn-success btn-block" OnClick="addProducto" Text="Finalizar" />
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                <asp:GridView ID="dgvCuotas" runat="server" ></asp:GridView>

            </div>
        </div>
    </form>

</asp:Content>
