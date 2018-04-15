<%@ Page Title="product" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication1.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <br />
    <table style="width:200px">
        <tr>
             <td><img alt="Image not found" src="image/productimg/Blue501Straight.jpg" width="300" /><p>Levi's Blue 501 Straight Jeans</p><p>Price:$100</p></td>
             <td><img alt="Image not found" src="image/productimg/BlueWedgieStraight.jpg" width="300"/><p>Levi's Blue Wedgie Straight Jeans</p><p>Price:$160</p></td>
             <td><img alt="Image not found" src="image/productimg/BlueWedgieIcon.jpg" width="300"/><p>Levi's Blue Wedgie Icon Jeans</p><p>Price:$100</p></td>
        </tr>
        <tr>    
             <td><img alt="Image not found" src="image/productimg/BlackWedgieSkinny.jpg" width="300"/><p>Levi's Black Wedgie Skinny Jeans</p><p>Price:$100</p></td>
             <td><img alt="Image not found" src="image/productimg/BlueAltered501Skinny.jpg" width="300"/><p>Levi's Blue Altered 501 Skinny Jeans</p><p>Price:$130</p></td>

        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
