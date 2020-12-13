<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayitOl.aspx.cs" Inherits="platform.KayitOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kayıt Ol</title>
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom fonts for this template -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet" />
</head>
<body style="background-color: lightblue">
    <form id="form1" runat="server">
        <div class="container" style="width: 30%; margin-top: 90px; background-color: white; border-radius: 20px; padding: 20px">
            <div class="form-group">
                <h2 class="text-center">Kullanıcı Girişi</h2>
            </div>
            <div class="form-group">
                <b>Kullanıcı Adı</b><asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                <b>Şifre</b><asp:TextBox ID="txtSifre" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                <b>E-posta</b><asp:TextBox ID="txtEposta" CssClass="form-control" placeholder="örnek@örnek.com" runat="server"></asp:TextBox>
                <b>Sloganınız</b><asp:TextBox ID="txtSlogan" CssClass="form-control" runat="server"></asp:TextBox>
                <b>Resim Url</b><asp:TextBox ID="txtUrl" CssClass="form-control" placeholder="İnternetten bağlantı alabilirsiniz..." runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnKayıt" CssClass="btn btn-danger form-control p-0 " runat="server" Text="Kayıt Ol" OnClick="btnKayıt_Click" />
            </div>
        </div>
    </form>
</body>
</html>
