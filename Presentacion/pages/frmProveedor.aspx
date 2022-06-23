<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmProveedor.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmProveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div class="row">
            <div class="col-sm-10 col-md-14 offset-md-13">
               <div class="card">
                  <div class="card-header">
                   Proveedores
                  </div>
                  <div class="card-body">
                        <div class="row">
                            <div class="col-sm-2">
                                <button id="btnNuevoProveedor" type="button" class="btn btn-sm btn-success">Nuevo</button>
                            </div>
                        </div>
                      <hr />
                        <div class="row mt-3">
                            <div class="col-sm-12">
                                <table id="tbProveedor" class="table table-striped table-bordered nowrap" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Nit</th>
                                            <th>Razon Social</th>
                                            <th>Telefono</th>
                                            <th>Correo</th>
                                            <th>Direccion</th>
                                            <th>Acciones</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                  </div>
                  <div class="card-footer">
                  </div>
                </div>
            </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalrol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Proveedor</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form>
              <input id="txtIdProveedor" class="model" name="IdUsuario" value="0" type="hidden" />
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label col-form-label-sm">NIT</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtNit" name="NIT">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label col-form-label-sm">Razón Social</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtRazonSocial" name="Razón Social">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label col-form-label-sm">Telefono</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtTelefono" name="Telefono">
                </div>
              </div>
              <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label col-form-label-sm">Correo</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtCorreo" name="Correo">
                </div>
              </div>
              
              <div class="form-group row">
                <label for="inputPassword" class="col-sm-4 col-form-label col-form-label-sm">Direccion</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control form-control-sm model" id="txtDireccion" name="Direccion">
                </div>
              </div>


            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Cancelar</button>
            <button id="btnGuardarCambios" type="button" class="btn btn-sm btn-primary">Guardar Cambios</button>
          </div>
        </div>
      </div>
    </div>
    

    <script src="../../assets/js/frmProveedor.js"></script>






</asp:Content>

