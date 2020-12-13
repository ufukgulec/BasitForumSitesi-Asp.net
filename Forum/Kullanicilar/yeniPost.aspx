<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanicilar/Kullanici.Master" AutoEventWireup="true" CodeBehind="yeniPost.aspx.cs" Inherits="platform.Kullanicilar.yeniPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="form-group">
            <b>Konu</b><asp:DropDownList CssClass="form-control dropdown" ID="DropDownList" runat="server"></asp:DropDownList>
        </div>
        <div class="form-group">
            <b>Başlık</b><asp:TextBox CssClass="form-control" ID="txtBaslik" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <b>Metin</b><asp:TextBox TextMode="MultiLine" CssClass="form-control" ID="txtMetin" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnKaydet" CssClass="btn btn-primary form-control" runat="server" Text="Gönder" OnClick="btnKaydet_Click" />
        </div>
    </div>
</asp:Content>
