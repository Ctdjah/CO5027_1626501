using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/admin/imgproduct/" + filename;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/admin/imgproduct/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }

        protected void Btnbackuploadimg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }
    }
}