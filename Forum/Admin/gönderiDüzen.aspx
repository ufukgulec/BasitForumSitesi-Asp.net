<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="gönderiDüzen.aspx.cs" Inherits="platform.Admin.gönderiDüzen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView CssClass="table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1">
            <Columns>
                
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="paylasimBaslik" HeaderText="paylasimBaslik" SortExpression="paylasimBaslik" />
                <asp:BoundField DataField="paylasimMetin" HeaderText="paylasimMetin" SortExpression="paylasimMetin" />
                <asp:BoundField DataField="kullaniciID" HeaderText="kullaniciID" SortExpression="kullaniciID" />
                <asp:BoundField DataField="konuID" HeaderText="konuID" SortExpression="konuID" />
                <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                <asp:BoundField DataField="begeniSayisi" HeaderText="begeniSayisi" SortExpression="begeniSayisi" />
                <asp:CommandField ShowDeleteButton="True">
                <ControlStyle CssClass="btn btn-danger" />
                </asp:CommandField>
                <asp:BoundField />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=myWebsiteEntities" DefaultContainerName="myWebsiteEntities" EnableDelete="True" EnableFlattening="False" EntitySetName="paylasimlars" EntityTypeFilter="paylasimlar">
        </asp:EntityDataSource>
    </div>
</asp:Content>
