<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanicilar/Kullanici.Master" AutoEventWireup="true" CodeBehind="postDüzenle.aspx.cs" Inherits="platform.Kullanicilar.postDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            Düzenleme
        </div>
        <div class="form-group">
            <label>
                <h2>Başlık:</h2>
            </label>
            <p class="font-italic">
                <asp:Label ID="lblBaslik" runat="server" Text="Label"></asp:Label>
            </p>
            <asp:TextBox CssClass="form-control" ID="txtBaslik" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>
                <h2>İçerik:</h2>
            </label>
            <p class="font-italic">
                <asp:Label ID="lblIcerik" runat="server" Text="Label"></asp:Label>
            </p>
            <asp:TextBox CssClass="form-control" ID="txtIcerik" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <asp:Button ID="btnKaydet" CssClass="btn btn-success form-control" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" />
        </div>
    </div>
</asp:Content>
