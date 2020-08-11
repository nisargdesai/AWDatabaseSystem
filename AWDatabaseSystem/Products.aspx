<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Assignment2.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="EnglishProductCategoryName" HeaderText="EnglishProductCategoryName" SortExpression="EnglishProductCategoryName" />
            <asp:BoundField DataField="EnglishProductName" HeaderText="EnglishProductName" SortExpression="EnglishProductName" />
            <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
            <asp:BoundField DataField="Style" HeaderText="Style" SortExpression="Style" />
            <asp:BoundField DataField="ModelName" HeaderText="ModelName" SortExpression="ModelName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DimProductCategory.EnglishProductCategoryName, DimProduct.EnglishProductName, DimProduct.ListPrice, DimProduct.Color, DimProduct.Size, DimProduct.Weight, DimProduct.Class, DimProduct.Style, DimProduct.ModelName, DimProduct.LargePhoto FROM DimProduct INNER JOIN DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey INNER JOIN DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey WHERE (DimProduct.ListPrice &gt;= 1)"></asp:SqlDataSource>
</asp:Content>
<%--using the 3rd content holder to display the navigation through the websites--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="nav">
        <br /><br />
        <a href="Products.aspx">Products Information Page</a><br /><br />
        <a href="Sales.aspx">Sales Information Page</a><br /><br />
        <a href="Employees.aspx">Employees Information Page</a><br /><br />
        <a href="Customers.aspx">Customers Information Page</a><br /><br />
        <a href="Welcome.aspx">Back to Home</a>
    </div>
</asp:Content>
