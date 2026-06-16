using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Massoudlab_New_Online_Response
{
    public partial class Response : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {

            Response.Redirect(Request.RawUrl);

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string reception =
                txtReception.Text.Trim();

            string user =
                txtUser.Text.Trim();

            string captcha =
                txtCaptcha.Text.Trim();


            if (
                reception == "" ||
                user == "" ||
                captcha == ""
               )
            {

                lblMessage.Text =
                "لطفاً تمام فیلدها را تکمیل کنید.";

                return;

            }


            // این قسمت را به دیتابیس یا سیستم جوابدهی وصل کن

            lblMessage.Text =
            "اطلاعات با موفقیت ارسال شد.";

        }

    }
}