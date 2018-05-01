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
        
   
    
    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">

    <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            
    <table id="tableProcss" style="margin:0 auto">        
                    <tr>
                        <td>
                            
                            <a href="<%#Eval("ProductId", "Product.aspx?Id={0}")%>">
                                <asp:Image ID="imgOfProduct" runat="server" ImageUrl='<%#Eval ("ProductLinkImage") %>' ImageAlign="Middle" Height="400" /><p></p>                                                                        
                                <%#Eval("ProductName") %><p>Price:$<%#Eval("ProductPrice") %></p>
                                
                           
                        
                                </a>
                            
                        </td>
                    </tr>
            
                </table>

        
        </ItemTemplate>

        <FooterTemplate></ul></FooterTemplate>

    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626501_asg_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
        </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
       <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>