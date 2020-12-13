<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="platform.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Admin paneline hoşgeldiniz.</h3>
    <div class="container p-4">
        <b>Site Adı:</b>
        <asp:Label ID="lblSiteAd" runat="server" Text="Label"></asp:Label>
        <hr />
        <b>Site Sloganı:</b>
        <asp:Label ID="lblSlogan" runat="server" Text="Label"></asp:Label>
        <hr />
        <b>Kullanıcı Sayısı:</b>
        <asp:Label ID="lblKullaniciSayisi" runat="server" Text="Label"></asp:Label>
        <hr />
        <b>Post Sayısı:</b>
        <asp:Label ID="lblPostSayisi" runat="server" Text="Label"></asp:Label>
        <hr />
        <b>Saat:</b>
        <%:DateTime.Now.Hour+":"+ DateTime.Now.Minute %>
    </div>
</asp:Content>

