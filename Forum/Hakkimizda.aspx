<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="platform.Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>Hakkimizda</h1>
                        <span class="subheading">
                            <asp:Label ID="lblHakkimizda" runat="server" Text="Label"></asp:Label></span>
                    </div>
                </div>
            </div>
        </div>
    </header>
</asp:Content>
