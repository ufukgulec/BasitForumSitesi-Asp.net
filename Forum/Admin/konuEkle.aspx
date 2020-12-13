<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="konuEkle.aspx.cs" Inherits="platform.Admin.konuEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Konular:</h2>
    <hr />
    <asp:Repeater ID="RepeaterKonu" runat="server">
        <HeaderTemplate>
            <table class="table table-bordered" border="1">
                <tr>
                    <td><b>Konu ID</b></td>
                    <td><b>Konu AD</b></td>

                </tr>
        </HeaderTemplate>

        <ItemTemplate>
            <tr>
                <td><%#Eval("id") %> </td>
                <td><%#Eval("konuAD") %> </td>

            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <table class="table table-bordered">
        <tr>
            <td><b></b></td>
            <td><b>Konu ADI GİRİN:</b></td>
        </tr>
        <tr>
            <td>Konu Adı:</td>
            <td>
                <asp:TextBox ID="txtkonu" CssClass="form-control" placeholder="Konu Adı giriniz...." runat="server"></asp:TextBox></td>
            <td>
                <asp:Button ID="ekle" CssClass="btn btn-success btn-lg" runat="server" Text="Ekle" OnClick="ekle_Click" /></td>
        </tr>
    </table>
</asp:Content>
