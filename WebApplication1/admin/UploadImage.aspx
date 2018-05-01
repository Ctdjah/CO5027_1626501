<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="WebApplication1.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Upload Image
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    Please browse your image here:
    <br />
    <form id="form1" runat="server">
    <asp:FileUpload ID="imageFileUploadControl" runat="server" BorderWidth="1px" />

    <br />
    <br />
    <asp:Button ID="BtnUpload" runat="server" Text="Upload" OnClick="BtnUpload_Click" BorderWidth="1px" />

    <br />
    <br />
    <asp:Image ID="CurrentImage" runat="server" Height="100px" />
    <br />
        <asp:Button ID="Btnbackuploadimg" runat="server" Text="Back" OnClick="Btnbackuploadimg_Click" />
        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
     <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>