<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="kullanicilar.aspx.cs" Inherits="platform.Admin.kullanicilar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField ItemStyle-Width="150px" DataField="kullaniciAD" HeaderText="kullaniciAD" SortExpression="kullaniciAD" />
                <asp:BoundField DataField="kullaniciParola" HeaderText="kullaniciParola" SortExpression="kullaniciParola" />
                <asp:BoundField DataField="Eposta" HeaderText="Eposta" SortExpression="Eposta" />
                <asp:BoundField DataField="kayitTarihi" HeaderText="kayitTarihi" SortExpression="kayitTarihi" />
                
                <asp:BoundField DataField="kullaniciSlogan" HeaderText="kullaniciSlogan" SortExpression="kullaniciSlogan" />
                <asp:BoundField DataField="resimYolu" HeaderText="resimYolu" SortExpression="resimYolu" />
                <asp:CommandField ShowEditButton="True">
                <ControlStyle CssClass="btn btn-success" />
                </asp:CommandField>
            </Columns>
        </asp:GridView>

        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=myWebsiteEntities" DefaultContainerName="myWebsiteEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="kullanicilars" EntityTypeFilter="kullanicilar">
        </asp:EntityDataSource>

  
</asp:Content>
