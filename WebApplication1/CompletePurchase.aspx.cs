using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace WebApplication1
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmationPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentId = Session["paymentId"].ToString();

            if (!String.IsNullOrEmpty(paymentId))
            {
                var payment = new Payment() { id = paymentId };

            }



        }
    }

}