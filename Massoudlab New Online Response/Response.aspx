<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Response.aspx.cs" Inherits="Massoudlab_New_Online_Response.Response" %>

<!DOCTYPE html>

<html>

<head runat="server">

<meta charset="utf-8"/>

<title>

جوابدهی آنلاین آزمایشگاه مسعود

</title>

<link href="~/Style.css" rel="stylesheet" runat="server" />

</head>

<body>

<form id="form1" runat="server">

<div class="card">

<div class="logo">

🧪

</div>

<h1>

جوابدهی آنلاین

</h1>

<h3>

آزمایشگاه مسعوده

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



<asp:Label

ID="lblMessage"

runat="server"

CssClass="message">

</asp:Label>


</div>

</form>

</body>

</html>