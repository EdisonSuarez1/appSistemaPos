﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appPlantilla.Presentacion.pages
{
    public partial class frmreporteCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ingresar"] == null)
                    Response.Redirect("../../frmLogin.aspx");
            }

        }
    }
}