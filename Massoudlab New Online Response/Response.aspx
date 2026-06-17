<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Response.aspx.cs"
Inherits="Massoudlab_New_Online_Response.Response" %>

<!DOCTYPE html>

<html dir="rtl">

<head runat="server">

<meta charset="utf-8"/>

<title>

جوابدهی آنلاین آزمایشگاه مسعود

</title>

<meta name="viewport" content="width=device-width, initial-scale=1"/>

<link href="Style.css" rel="stylesheet"/>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Vazirmatn:wght@300;400;600;700&display=swap"
rel="stylesheet"/>

</head>

<body>


<div class="circle c1"></div>

<div class="circle c2"></div>



<form id="form1" runat="server">


<div class="page">

        <!-- فرم اصلی -->

    <div class="card">


 <div class="help-icon">
    <asp:Image ID="imgLogo" runat="server"
        ImageUrl="Images\Logo - FA2.png"
        AlternateText="آزمایشگاه مسعود" />
</div>


        <h1>

            جوابدهی آنلاین

        </h1>


        <h3>

            آزمایشگاه مسعود

        </h3>



        <asp:TextBox

        ID="txtReception"

        runat="server"

        CssClass="input"

        placeholder="شماره پذیرش">

        </asp:TextBox>



        <asp:TextBox

        ID="txtUser"

        runat="server"

        CssClass="input"

        placeholder="شناسه کاربری">

        </asp:TextBox>




        <!-- کپچا -->

        <div class="captcha-row">


            <img

            id="captchaImage"

            class="captcha-image"

            src="Captcha.ashx"


            alt="captcha"/>


            <button

            type="button"

            class="refresh"

            onclick="refreshCaptcha()">

                ↻

            </button>


        </div>




        <asp:TextBox

        ID="txtCaptcha"

        runat="server"

        CssClass="input"

        placeholder="کد امنیتی">

        </asp:TextBox>





        <asp:Button

        ID="btnSearch"

        runat="server"

        Text="دریافت جواب آزمایش"

        CssClass="btn"

        OnClick="btnSearch_Click"/>




        <asp:Button

        ID="btnGuide"

        runat="server"

        Text="راهنمای جوابدهی آنلاین"

        CssClass="guide-btn"

        OnClientClick="window.open('https://massoudlab.com/PageFa.aspx?l=1&Id=44'); return false;" />




        <asp:Label

        ID="lblMessage"

        runat="server"

        CssClass="message">

        </asp:Label>



    </div>

    <!-- کارت راهنما -->

    <div class="help-card">

        <div class="help-icon">

            🧬

        </div>


        <h2>

            راهنمای جوابدهی

        </h2>


        <div class="hint">

            📌 شماره پذیرش و شناسه کاربری روی رسید شما درج شده است.

        </div>


        <div class="hint">

            👤 شناسه کاربری توسط آزمایشگاه ارائه می‌شود.

        </div>


        <div class="hint">

            ⏰ جواب‌ها معمولاً تا 24 ساعت آماده می‌شوند.

        </div>


        <div class="hint">

            ☎ 021-85586

        </div>


        <a

        class="guide-link"

        target="_blank"

        href="https://massoudlab.com/PageFa.aspx?l=1&Id=44">

            مشاهده راهنمای کامل

        </a>


    </div>








</div>


</form>



<script>

    function refreshCaptcha() {

        document.getElementById("captchaImage").src =

            "Captcha.ashx?time=" + new Date().getTime();

    }

</script>


</body>

</html>