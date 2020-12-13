<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="paylasimDetay.aspx.cs" Inherits="platform.Paylasimlar.paylasimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header class="masthead" style="background-image: url('/img/home-bg.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h3>Paylaşım Detay
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <asp:Repeater ID="RepeaterDetay" runat="server">
        <ItemTemplate>
            <div class="container">
                <div class="card" style="width: 100%;">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("paylasimBaslik") %></h5>
                        <p class="card-text">Açıklama: <%#Eval("paylasimMetin") %></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Gönderen: <%#Eval("kullaniciAD") %></li>
                        <li class="list-group-item">Gönderen E-posta: <%#Eval("Eposta") %></li>
                        <li class="list-group-item">Gönderilen Tarih: <%# Eval("tarih")%></li>
                    </ul>
                    <div class="card-body">
                        <a href='<%#"/Kullanicilar/kullanici.aspx?kullaniciID="+Eval("yazanID") %>' class="btn btn-primary">Kullanıcıya Gözat</a>
                        <a href="<%#"/Paylasimlar/Begen.aspx?postID="+Eval("postID") %>" class="btn btn-success">Beğen <span class="badge badge-light"><%#Eval("begeniSayisi") %></span></a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
