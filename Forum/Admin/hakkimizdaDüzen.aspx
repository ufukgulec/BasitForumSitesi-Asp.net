﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="hakkimizdaDüzen.aspx.cs" Inherits="platform.Admin.hakkimizdaDüzen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row form-group">
            <b>Site Başlığı:</b>
            <asp:Label ID="lblhakkimizda" CssClass="font-italic" runat="server" Text="Label"></asp:Label>

            <asp:TextBox ID="txtYeniHakkimizda" placeholder="Yeni Hakkimizda Yazısı..." TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="row form-group">
            <asp:Button ID="btnKaydet" CssClass="btn btn-primary btn-lg" runat="server" Text="Onayla" OnClick="btnKaydet_Click" />
        </div>
    </div>
</asp:Content>
