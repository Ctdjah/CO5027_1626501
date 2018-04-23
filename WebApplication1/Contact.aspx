<%@ Page Title="contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
        <form id="form1" runat="server">
        <p>Please fill and write your message on the given text box below. </p>
<p>&nbsp;</p>
    <asp:Label ID="Label1" runat="server" Text="Email "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" BorderWidth="1px" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
        
            <br />
    <asp:RegularExpressionValidator ID="reqEmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="YOUR EMAIL IS NOT VALID!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="req1EmailField" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter an email" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />

    <asp:Label ID="Label2" runat="server" Text="Subject "></asp:Label>
        
             <asp:TextBox ID="txtSubject" runat="server" BorderWidth="1px"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="Please enter your subject" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
    <asp:Label ID="Label3" runat="server" Text="Body "></asp:Label>
            <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" placeholder="Your Message" BorderWidth="1px"></asp:TextBox>
        <br />
            <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="Please fill something in the body" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send Email" />
        <br />
        <br />
            <asp:Literal ID="LitResult" runat="server"></asp:Literal>
            </form>
    <br />
    <br />
    
    </asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
      <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="Admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
