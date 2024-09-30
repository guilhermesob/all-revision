using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace AplicacaoEmCamadas
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bll classeBll = new Bll();
            ddlListaEstados.DataSource = classeBll.RetornaEstadosTratados();
            ddlListaEstados.DataBind();
        }
    }
}
