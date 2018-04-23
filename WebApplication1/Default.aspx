<%@ Page Title="default" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">  
    Welcome to Levi's Strauss & Co. Jeans
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">

    <form id="form4" runat="server">
    <br />
    <p>Levi's aunthentic and stylish jeans are one of the best sellers in this company.
        <br /> Here are our brand new high quality limited-edition jeans: </p>

    <p></p>
    <br />
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
    
    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">

    <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <li>
                <a href="<%#Eval("ProductId", "Product.aspx?Id={0}")%>">
                    <%#Eval("ProductName")%>
                </a>
            </li>
        </ItemTemplate>

        <FooterTemplate></ul></FooterTemplate>

    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626501_asg_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
       <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="Admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
