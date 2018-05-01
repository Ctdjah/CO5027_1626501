<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Welcome to the admin panel!
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <p>welcome to admin panel</p>
    <br />
    <br />
    
    Type in the address box "/add.aspx" to view list of products
    <br />
    <br />
    <form id="form2" runat="server">

        <asp:Button ID="BtnViewProducts" runat="server" Text="View Products" BorderWidth="1px" BackColor="#CC0000" BorderStyle="Outset" ForeColor="White" OnClick="BtnViewProducts_Click" PostBackUrl="~/admin/Add.aspx" />
        <br />
        <br />
        <br />

    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" BorderWidth="1px" />

    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
     <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>