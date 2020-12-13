<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="yetkiAl.aspx.cs" Inherits="platform.Admin.yetkiAl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            <h5>Kimden yetkiyi almak istiyorsunuz...</h5>
            <asp:DropDownList CssClass="form-control" ID="DropDownList" runat="server"></asp:DropDownList>
            <asp:Button CssClass="form-control btn btn-primary" ID="btnyetki" runat="server" Text="Yetki Ver" OnClick="btnyetki_Click" />
        </div>
        <h2>Admin Listesi</h2>
        <asp:Repeater ID="Repeater" runat="server">
            <HeaderTemplate>
                <table class="table table-bordered">
                    <thead>
                        <td>Kullanıcı ID</td>
                        <td>Kullanıcı Adı</td>
                    </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("id") %></td>
                    <td><%#Eval("kullaniciAD") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
