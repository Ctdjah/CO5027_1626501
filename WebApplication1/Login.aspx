<%@ Page Title="login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Login
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    
    <form id="form1" runat="server">
        <p>

        </p>
        <asp:Label ID="Label1" runat="server" Text="Username "></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server" BorderWidth="1px"></asp:TextBox>
    
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password "></asp:Label>
    <asp:TextBox ID="txtLoginPassword" runat="server" BorderWidth="1px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    <br />
    <br />
        <asp:Literal ID="LitLoginError" runat="server"></asp:Literal>

        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
