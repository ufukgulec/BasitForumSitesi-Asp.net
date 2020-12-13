<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kullanici.aspx.cs" Inherits="platform.Kullanicilar.kullanici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header class="masthead" style="background-image: url('/img/home-bg.jpg')">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <div class="site-heading">
                        <h1>Kullanıcı Detay</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="container">
        <asp:Repeater ID="RepeaterKullanici" runat="server">
            <ItemTemplate>

                <div class="card text-center" style="width: 100%;">
                    <img src='<%#Eval("resimYolu") %>' style="max-width: 300px; max-height: 300px; margin-left: auto; margin-right: auto" class="card-img-top" alt='<%#Eval("kullaniciAD") %>'>
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("kullaniciAD") %></h5>
                        <p class="card-text"><b>Durum: </b><%#Eval("kullaniciSlogan") %></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><b>E-posta: </b><%#Eval("Eposta") %></li>
                        <li class="list-group-item"><b>Kullanıcı ID: </b><%#Eval("id") %></li>
                        <li class="list-group-item"><b>Kayıt Tarihi: </b><%#Eval("kayitTarihi") %></li>
                    </ul>
                    <div class="card-body">
                        <a href="#" class="card-link">Mesaj Gönder</a>
                    </div>
                </div>


            </ItemTemplate>
        </asp:Repeater>
        <h1>POSTLARI:</h1>

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
                        Gönderim Tarihi:           
                    <%#Eval("tarih") %>
                    </p>
                </div>
                <hr>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
