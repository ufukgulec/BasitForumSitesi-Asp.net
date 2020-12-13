<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="platform.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>
                            <asp:Label ID="lblSitebaslik" runat="server" Text="Label"></asp:Label>

                        </h1>
                        <span class="subheading">
                            <asp:Label ID="lblslogan" runat="server" Text="Label"></asp:Label></span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container">

        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="row">
                    <h2>En beğenilen Paylaşımlar</h2>
                </div>
                <asp:Repeater ID="RepeaterPost" runat="server">
                    <ItemTemplate>
                        <div class="post-preview">
                            <a href='<%#"/Paylasimlar/paylasimDetay.aspx?postID="+Eval("postID") %>'>
                                <h2 class="post-title"><%#Eval("paylasimBaslik") %>
                                </h2>
                                <h3 class="post-subtitle"><%#Eval("paylasimMetin") %>
                                </h3>
                            </a>
                            <p class="post-meta">
                                Posted by
            <a href='<%#"/Kullanicilar/kullanici.aspx?kullaniciID="+Eval("yazanID") %>'><%#Eval("kullaniciAD") %></a>
                                <%#Eval("tarih") %>
                            </p>
                        </div>
                        <hr>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
