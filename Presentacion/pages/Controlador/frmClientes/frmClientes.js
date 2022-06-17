
var table
$(document).ready(function () {
    cargarDatos();
});


function cargarDatos() {

    if ($.fn.DataTable.isDataTable('#tbCliente')) {
        $('#tbCliente').DataTable().destroy();
    }

    $('#tbCliente tbody').html('');

    AjaxGet("frmCliente.aspx/Obtener",
        function (response) {
            $(".card-body").LoadingOverlay("hide");
            if (response.estado) {

                $.each(response.objeto, function (i, row) {
                    $("<tr>").append(
                        $("<td>").text(i + 1),
                        $("<td>").text(row.TipoDocumento),
                        $("<td>").text(row.NumeroDocumento),
                        $("<td>").text(row.Nombre),
                        $("<td>").text(row.Direccion),
                        $("<td>").text(row.Telefono),
                        $("<td>").text(row.Activo == true ? "Activo" : "No Activo"),
                        $("<td>").append(
                            $("<button>").addClass("btn btn-sm btn-primary mr-1").text("Editar").data("proveedor", row),
                            $("<button>").addClass("btn btn-sm btn-danger").text("Eliminar").data("proveedor", row.IdCliente)
                        )
                    ).appendTo("#tbCliente tbody");

                })
            }

            table = $('#tbCliente').DataTable({
                responsive: true
            });
        },
        function () {
            $(".card-body").LoadingOverlay("hide");
        },
        function () {
            $(".card-body").LoadingOverlay("show");
        })
}


$('#tbCliente tbody').on('click', 'button[class="btn btn-sm btn-primary mr-1"]', function () {

    var model = $(this).data("proveedor")
    $("#txtIdCliente").val(model.IdCliente);
    $("#txtTipoDocumento").val(model.TipoDocumento);
    $("#txtNumeroDocumento").val(model.NumeroDocumento);
    $("#txtNombre").val(model.Nombre);
    $("#txtDireccion").val(model.Direccion);
    $("#txtTelefono").val(model.Telefono);
    $("#cboEstado").val(model.Activo == true ? 1 : 0);
    $("#cboEstado").prop("disabled", false);

    $('#modalrol').modal('show');
})





$('#tbCliente tbody').on('click', 'button[class="btn btn-sm btn-danger"]', function () {

    var request = { IdCliente: String($(this).data("proveedor")) };

    swal({
        title: "Mensaje",
        text: "¿Esta seguro de eliminiar el CLIENTE?",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: '#DD6B55',
        cancelButtonColor: '#d33',
        confirmButtonText: "Si",
        cancelButtonText: "No",
        closeOnConfirm: false,

    }, function () {


        AjaxPost("frmCliente.aspx/Eliminar", JSON.stringify(request),
            function (response) {
                if (response.estado) {
                    cargarDatos();
                    swal.close();
                } else {
                    swal("oops!", "No se pudo eliminar el CLIENTE", "warning")
                }
            },
            function () {
            },
            function () {
            })
    }
    )
})





$('#btnNuevoCliente').on('click', function () {

    $("#txtIdCliente").val("0");
    $("#txtTipoDocumento").val("");
    $("#txtNumeroDocumento").val("");
    $("#txtNombre").val("");
    $("#txtDireccion").val("");
    $("#txtTelefono").val("");


   

    $("#cboEstado").val(1);
    $("#cboEstado").prop("disabled", true);

    $('#modalrol').modal('show');
})

$('#btnGuardarCambios').on('click', function () {
    var camposvacios = false;
    var fields = $(".model").serializeArray();


    $.each(fields, function (i, field) {
        if (!field.value) {
            camposvacios = true;
            return false;
        }
    });


    if (!camposvacios) {
        
        var request = {
            oCliente: {
                IdCliente: parseInt($("#txtIdCliente").val()),
                TipoDocumento: $("#txtTipoDocumento").val(),
                NumeroDocumento: $("#txtNumeroDocumento").val(),
                Nombre: $("#txtNombre").val(),
                Direccion: $("#txtDireccion").val(),
                Telefono: $("#txtTelefono").val(),
                Activo: ($("#cboEstado").val() == "1" ? true : false)
            }
        }


        if (parseInt($("#txtIdCliente").val()) == 0) {

            AjaxPost("frmCliente.aspx/Guardar", JSON.stringify(request),
                function (response) {
                    $(".modal-body").LoadingOverlay("hide");
                    if (response.estado) {
                        cargarDatos();
                        $('#modalrol').modal('hide');
                    } else {
                        swal("Mensaje", "No se pudo registrar el CLIENTE", "warning")
                    }
                },
                function () {
                    $(".modal-body").LoadingOverlay("hide");
                },
                function () {
                    $(".modal-body").LoadingOverlay("show");
                })
        } else {
            AjaxPost("frmCliente.aspx/Editar", JSON.stringify(request),
                function (response) {
                    $(".modal-body").LoadingOverlay("hide");
                    if (response.estado) {
                        cargarDatos();
                        $('#modalrol').modal('hide');
                    } else {
                        swal("Mensaje", "No se pudo editar el CLIENTE", "warning")
                    }
                },
                function () {
                    $(".modal-body").LoadingOverlay("hide");
                },
                function () {
                    $(".modal-body").LoadingOverlay("show");
                })
        }
    } else {
        swal("Mensaje!", "Es necesario completar todos los campos", "warning")
    }


})
