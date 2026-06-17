using System;

namespace Massoudlab_New_Online_Response
{
    public partial class Response : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            string reception = txtReception.Text.Trim();

            string user = txtUser.Text.Trim();

            string captcha = txtCaptcha.Text.Trim();

            string sessionCaptcha =
                Session["Captcha"] == null ?
                "" :
                Session["Captcha"].ToString();

            if (
                reception == "" ||
                user == "" ||
                captcha == ""
               )
            {

                lblMessage.Text =
                "لطفا تمام فیلدها را تکمیل کنید.";

                return;

            }


            if (captcha.ToUpper() != sessionCaptcha)
            {

                lblMessage.Text =
                "کد امنیتی صحیح نیست.";

                return;

            }


            lblMessage.Text =
            "اطلاعات با موفقیت ارسال شد.";

        }

    }

}