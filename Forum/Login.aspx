<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="platform.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet" />

</head>
<body style="background-color: gainsboro">
    <form id="form1" runat="server">
        <div class="container" style="width: 30%; margin-top: 90px; background-color: white; border-radius: 20px; padding: 20px">
            <div class="form-group">
                <h2 class="text-center">Kullanıcı Girişi</h2>
            </div>
            <div class="form-group">
                <b>Kullanıcı Adı</b><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

                <b>Şifre</b><asp:TextBox ID="txtSifre" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnGiris" CssClass="btn btn-danger form-control p-0 " runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" />
            </div>
            <div class="form-group mb-5">
                <a href="KayitOl.aspx" class="float-left">Kayıt Ol</a>
                <a href="#" class="float-right">Şifremi Unuttum</a>
            </div>
        </div>
    </form>
</body>
</html>
