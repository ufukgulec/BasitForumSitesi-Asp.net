<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanicilar/Kullanici.Master" AutoEventWireup="true" CodeBehind="KullaniciPaneli.aspx.cs" Inherits="platform.Kullanicilar.KullaniciPaneli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater" runat="server">
        <HeaderTemplate>
            <table class="table table-bordered">
                <thead>
                    <td>ID</td>
                    <td>Başlık</td>
                    <td>İçerik</td>
                    <td>Güncelle</td>
                    <td>Sil</td>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("id") %></td>
                <td><%#Eval("paylasimBaslik") %></td>
                <td><%#Eval("paylasimMetin") %></td>
                <td>
                    <a href='<%#"/Kullanicilar/postDüzenle.aspx?postID="+Eval("id") %>' class="btn btn-primary form-control">Düzenle</a>
                </td>
                <td>
                    <a href='<%#"/Kullanicilar/postSil.aspx?postID="+Eval("id") %>' class="btn btn-danger form-control">Sil</a>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
