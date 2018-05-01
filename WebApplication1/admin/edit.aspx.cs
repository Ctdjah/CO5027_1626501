using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnbackedit_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }
    }
}