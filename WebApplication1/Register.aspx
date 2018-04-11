<%@ Page Title="register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Register
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        
        <asp:TextBox ID="txtRegEmail" runat="server" BorderStyle="Double" BorderWidth="1px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password" BorderStyle="Double" BorderWidth="1px" ></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" />
        <br />
        <br />
        <asp:Literal ID="LitRegisterError" runat="server"></asp:Literal>

    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
