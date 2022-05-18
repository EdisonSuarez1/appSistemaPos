<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/Site1.Master" AutoEventWireup="true" CodeBehind="frmProveedores.aspx.cs" Inherits="appPlantilla.Presentacion.pages.frmProveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><center>HOLA GAMER</center>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link rel =" stylesheet" href ="../Content/bootstrap.min.css" type =" text/css" />


    
    <form id="form1" runat="server">
       



         <div class="container">


            <div class="col offset-6 col-md-6 mt-5">
                
            <div class ="card car-body login-card-body"> 

                <h1>        </h1>


                <div class="mb-6 mt-6">
                    <label for="nit" class="form-label">nit:</label>

                    <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control" placeholder="nit" TextMode="Number"></asp:TextBox>


                     <label for="razonSocial" class="form-label">razonSocial:</label>

                    <asp:TextBox ID="txtNombres" runat="server" CssClass="form-control" placeholder="razonSocial " TextMode="MultiLine"></asp:TextBox>


                     <label for="telefono " class="form-label">apellidos :</label>

                    <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control" placeholder="telefono " TextMode="MultiLine"></asp:TextBox>

                     <label for="correo " class="form-label">correo :</label>

                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="correo " TextMode="Email"></asp:TextBox>

                          <label for="direccion " class="form-label">direccion :</label>

                    <asp:TextBox ID="txtdir" runat="server" CssClass="form-control" placeholder="direccion " TextMode="Multiline"></asp:TextBox>


                    
                </div>
           

                <div class=" col mt-3 mb-3">
                  
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                   


               

                <asp:Button ID="btnRegistrar"  CssClass="btn btn-secundary"  runat="server"  Text="Registar Usuario" OnClick="btnRegistrar_Click" />
                   

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="idProveedor" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            idProveedor:
                            <asp:Label ID="idProveedorLabel" runat="server" Text='<%# Eval("idProveedor") %>' />
                            <br />
                            nit:
                            <asp:Label ID="nitLabel" runat="server" Text='<%# Eval("nit") %>' />
                            <br />
                            razonSocial:
                            <asp:Label ID="razonSocialLabel" runat="server" Text='<%# Eval("razonSocial") %>' />
                            <br />
                            telefono:
                            <asp:Label ID="telefonoLabel" runat="server" Text='<%# Eval("telefono") %>' />
                            <br />
                            correo:
                            <asp:Label ID="correoLabel" runat="server" Text='<%# Eval("correo") %>' />
                            <br />
                            direccion:
                            <asp:Label ID="direccionLabel" runat="server" Text='<%# Eval("direccion") %>' />
                            <br />
<br />
                        </ItemTemplate>
                    </asp:DataList>
          

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bdPymesConnectionString %>" SelectCommand="SELECT * FROM [proveedor]"></asp:SqlDataSource>
          

                </div>
            </div>
            
        </div>
    </form>
</asp:Content>

