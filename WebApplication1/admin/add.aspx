<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="WebApplication1.admin.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
     List Of Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" BackColor="#FFFFCC" BorderStyle="Ridge" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDetails" HeaderText="ProductDetails" SortExpression="ProductDetails" />
                <asp:BoundField DataField="ProductQuantity" HeaderText="ProductQuantity" SortExpression="ProductQuantity" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                <asp:BoundField DataField="ProductLinkImage" HeaderText="ProductLinkImage" SortExpression="ProductLinkImage" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="edit.aspx?Id={0}" HeaderText="Action" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Action" ShowHeader="True" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" HeaderText="Action" Text="Upload Image" />
            </Columns>
            <HeaderStyle BackColor="#CC0000" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626501_asg_co5027ConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductLinkImage] = @original_ProductLinkImage) OR ([ProductLinkImage] IS NULL AND @original_ProductLinkImage IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductId], [ProductName], [ProductDetails], [ProductQuantity], [ProductPrice], [ProductLinkImage]) VALUES (@ProductId, @ProductName, @ProductDetails, @ProductQuantity, @ProductPrice, @ProductLinkImage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductDetails] = @ProductDetails, [ProductQuantity] = @ProductQuantity, [ProductPrice] = @ProductPrice, [ProductLinkImage] = @ProductLinkImage WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductLinkImage] = @original_ProductLinkImage) OR ([ProductLinkImage] IS NULL AND @original_ProductLinkImage IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ProductLinkImage" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ProductLinkImage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDetails" Type="String" />
                <asp:Parameter Name="ProductQuantity" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Double" />
                <asp:Parameter Name="ProductLinkImage" Type="String" />
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDetails" Type="String" />
                <asp:Parameter Name="original_ProductQuantity" Type="Int32" />
                <asp:Parameter Name="original_ProductPrice" Type="Double" />
                <asp:Parameter Name="original_ProductLinkImage" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp;<br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="#FFFFCC" BorderStyle="Ridge" BorderWidth="1px" ForeColor="Black" HeaderText="Add Product">
            <EditItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductLinkImage:
                <asp:TextBox ID="ProductLinkImageTextBox" runat="server" Text='<%# Bind("ProductLinkImage") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <HeaderStyle BackColor="#CC0000" ForeColor="White" />
            <InsertItemTemplate>
                ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductLinkImage:
                <asp:TextBox ID="ProductLinkImageTextBox" runat="server" Text='<%# Bind("ProductLinkImage") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDetails:
                <asp:Label ID="ProductDetailsLabel" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                ProductLinkImage:
                <asp:Label ID="ProductLinkImageLabel" runat="server" Text='<%# Bind("ProductLinkImage") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:Button ID="BtnLogout_Add" runat="server" Text="Back to Admin Panel" BorderWidth="1px" OnClick="BtnLogout_Add_Click" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
     <p><a href="http://validator.w3.org/check?uri=referer">Validate HTML</a> |
                <a href="http://jigsaw.w3.org/css-validator/check/referer">Validate CSS</a> |
                <a href="admin/">Admin</a>                &copy;Copyright 2018 by 1626501/J39718</p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
