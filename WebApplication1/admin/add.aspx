<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="WebApplication1.admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading1" runat="server">
    Add Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                <asp:BoundField DataField="Product ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                <asp:BoundField DataField="Product Details" HeaderText="Product Details" SortExpression="Product Details" />
                <asp:BoundField DataField="Product Quantity" HeaderText="Product Quantity" SortExpression="Product Quantity" />
                <asp:BoundField DataField="Product Price" HeaderText="Product Price" SortExpression="Product Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626501_asg_co5027ConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [Product ID] = @original_Product_ID AND (([Product Name] = @original_Product_Name) OR ([Product Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product Details] = @original_Product_Details) OR ([Product Details] IS NULL AND @original_Product_Details IS NULL)) AND (([Product Quantity] = @original_Product_Quantity) OR ([Product Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product Price] = @original_Product_Price) OR ([Product Price] IS NULL AND @original_Product_Price IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([Product Name], [Product ID], [Product Details], [Product Quantity], [Product Price]) VALUES (@Product_Name, @Product_ID, @Product_Details, @Product_Quantity, @Product_Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProducts] WHERE ([Product ID] = @Product_ID)" UpdateCommand="UPDATE [tblProducts] SET [Product Name] = @Product_Name, [Product Details] = @Product_Details, [Product Quantity] = @Product_Quantity, [Product Price] = @Product_Price WHERE [Product ID] = @original_Product_ID AND (([Product Name] = @original_Product_Name) OR ([Product Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product Details] = @original_Product_Details) OR ([Product Details] IS NULL AND @original_Product_Details IS NULL)) AND (([Product Quantity] = @original_Product_Quantity) OR ([Product Quantity] IS NULL AND @original_Product_Quantity IS NULL)) AND (([Product Price] = @original_Product_Price) OR ([Product Price] IS NULL AND @original_Product_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Details" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_ID" Type="Int32" />
                <asp:Parameter Name="Product_Details" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="Int32" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_ID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Details" Type="String" />
                <asp:Parameter Name="Product_Quantity" Type="Int32" />
                <asp:Parameter Name="Product_Price" Type="Decimal" />
                <asp:Parameter Name="original_Product_ID" Type="Int32" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Details" Type="String" />
                <asp:Parameter Name="original_Product_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Product_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                Product Name:
                <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("[Product Name]") %>' />
                <br />
                Product ID:
                <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("[Product ID]") %>' />
                <br />
                Product Details:
                <asp:TextBox ID="Product_DetailsTextBox" runat="server" Text='<%# Bind("[Product Details]") %>' />
                <br />
                Product Quantity:
                <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("[Product Quantity]") %>' />
                <br />
                Product Price:
                <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("[Product Price]") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Product Name:
                <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("[Product Name]") %>' />
                <br />
                Product ID:
                <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("[Product ID]") %>' />
                <br />
                Product Details:
                <asp:TextBox ID="Product_DetailsTextBox" runat="server" Text='<%# Bind("[Product Details]") %>' />
                <br />
                Product Quantity:
                <asp:TextBox ID="Product_QuantityTextBox" runat="server" Text='<%# Bind("[Product Quantity]") %>' />
                <br />
                Product Price:
                <asp:TextBox ID="Product_PriceTextBox" runat="server" Text='<%# Bind("[Product Price]") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Product Name:
                <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("[Product Name]") %>' />
                <br />
                Product ID:
                <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("[Product ID]") %>' />
                <br />
                Product Details:
                <asp:Label ID="Product_DetailsLabel" runat="server" Text='<%# Bind("[Product Details]") %>' />
                <br />
                Product Quantity:
                <asp:Label ID="Product_QuantityLabel" runat="server" Text='<%# Bind("[Product Quantity]") %>' />
                <br />
                Product Price:
                <asp:Label ID="Product_PriceLabel" runat="server" Text='<%# Bind("[Product Price]") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>

    </form>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
