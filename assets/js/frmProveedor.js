
var table
$(document).ready(function () {
    cargarDatos();
});


function cargarDatos() {

    if ($.fn.DataTable.isDataTable('#tbProveedor')) {
        $('#tbProveedor').DataTable().destroy();
    }

    $('#tbProveedor tbody').html('');

    AjaxGet("frmProveedor.aspx/mtdListarProveedor",
        function (response) {
            $(".card-body").LoadingOverlay("hide");
            if (response.estado) {

                $.each(response.objeto, function (i, row) {
                    $("<tr>").append(
                        $("<td>").text(i + 1),
                        $("<td>").text(row.nit),
                        $("<td>").text(row.razonSocial),
                        $("<td>").text(row.telefono),
                        $("<td>").text(row.correo),
                        $("<td>").text(row.direccion),
                        $("<td>").append(
                            $("<button>").addClass("btn btn-sm btn-primary mr-1").text("Editar").data("proveedor", row),
                            $("<button>").addClass("btn btn-sm btn-danger").text("Eliminar").data("proveedor", row.idProveedor)
                        )
                    ).appendTo("#tbProveedor tbody");

                })
            }

            table = $('#tbProveedor').DataTable({
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


$('#tbProveedor tbody').on('click', 'button[class="btn btn-sm btn-primary mr-1"]', function () {

    var model = $(this).data("proveedor")
    $("#txtIdProveedor").val(model.idProveedor);
    $("#txtNit").val(model.nit);
    $("#txtRazonSocial").val(model.razonSocial);
    $("#txtTelefono").val(model.telefono);
    $("#txtCorreo").val(model.correo);
    $("#txtDireccion").val(model.direccion);

    $('#modalrol').modal('show');
})

$('#tbProveedor tbody').on('click', 'button[class="btn btn-sm btn-danger"]', function () {

    var request = { idProveedor: String($(this).data("proveedor")) };

    swal({
        title: "Mensaje",
        text: "¿Esta seguro de eliminiar el proveedor?",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: '#DD6B55',
        cancelButtonColor: '#d33',
        confirmButtonText: "Si",
        cancelButtonText: "No",
        closeOnConfirm: false,
    }, function () {


        AjaxPost("frmProveedor.aspx/mtdEliminarProveedor", JSON.stringify(request),
            function (response) {
                if (response.estado) {
                    cargarDatos();
                    swal.close();
                } else {
                    swal("oops!", "No se pudo eliminar el proveedor", "warning")
                }
            },
            function () {
            },
            function () {
            })
    }
    )
})


$('#btnNuevoProveedor').on('click', function () {

    $("#txtIdProveedor").val("0");
    $("#txtNit").val("");
    $("#txtRazonSocial").val("");
    $("#txtTelefono").val("");
    $("#txtCorreo").val("");
    $("#txtDireccion").val("");


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
            oProveedor: {
                idProveedor: parseInt($("#txtIdProveedor").val()),
                nit: $("#txtNit").val(),
                razonSocial: $("#txtRazonSocial").val(),
                telefono: $("#txtTelefono").val(),
                correo: $("#txtCorreo").val(),
                direccion: $("#txtDireccion").val(),
            }
        }


        if (parseInt($("#txtIdProveedor").val()) == 0) {

            AjaxPost("frmProveedor.aspx/mtdRegistrarProveedor", JSON.stringify(request),
                function (response) {
                    $(".modal-body").LoadingOverlay("hide");
                    if (response.estado) {
                        cargarDatos();
                        $('#modalrol').modal('hide');
                    } else {
                        swal("Mensaje", "No se pudo registrar el proveedor", "warning")
                    }
                },
                function () {
                    $(".modal-body").LoadingOverlay("hide");
                },
                function () {
                    $(".modal-body").LoadingOverlay("show");
                })
        } else {
            AjaxPost("frmProveedor.aspx/mtdEditarProveedor", JSON.stringify(request),
                function (response) {
                    $(".modal-body").LoadingOverlay("hide");
                    if (response.estado) {
                        cargarDatos();
                        $('#modalrol').modal('hide');
                    } else {
                        swal("Mensaje", "No se pudo editar el proveedor", "warning")
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
