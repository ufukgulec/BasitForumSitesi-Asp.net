<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="yetkiVer.aspx.cs" Inherits="platform.Admin.yetkiVer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            <h5>Kime yetki vermek istiyorsunuz...</h5>
            <asp:DropDownList CssClass="form-control" ID="DropDownList" runat="server"></asp:DropDownList>
            
            <asp:Button CssClass="form-control btn btn-primary" ID="btnyetki" runat="server" Text="Yetki Ver" OnClick="btnyetki_Click" />
        </div>
        

    </div>
</asp:Content>
