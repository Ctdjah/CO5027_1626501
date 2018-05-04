<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
        <form id="form1" runat="server">
        <p>Please fill and write your message on the given text box below </p>
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
                <a href="admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="GoogleMap" runat="server">
      <div id="map"></div>
    <script>
        var map;
        function initMap() {


            var collegeLatLng = { lat: 4.885731, lng: 114.931669 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 19,
                center: collegeLatLng
            });

            var contentString1 = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h1 id="firstHeading" class="firstHeading">Laksamana College of Business</h1>' +
                '<div id="bodyContent">' +
                '<p><b>College located here!</b></p>' +
                '</div>' +
                '</div>';

            var infowindow1 = new google.maps.InfoWindow({
                content: contentString1
            });


            var marker1 = new google.maps.Marker({
                position: collegeLatLng,
                map: map,
                title: 'Laksamana College of Business'
            });
            marker1.addListener('click', function () {
                infowindow1.open(map, marker1);
            });
        }
    </script>
    <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCytZqImr1VRb7dNeEvn4i1enPiTlLM6Yc&callback=initMap"></script>
</asp:Content>
