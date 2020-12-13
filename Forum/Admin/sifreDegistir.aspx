<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="sifreDegistir.aspx.cs" Inherits="platform.Admin.sifreDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group">
        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Yeni Şifre" runat="server"></asp:TextBox>
        <asp:Button CssClass="form-control btn btn-primary" ID="Button1" runat="server" Text="Değiştir" OnClick="Button1_Click" />
    </div>

</asp:Content>
