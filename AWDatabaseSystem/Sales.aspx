<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="Assignment2.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SalesTerritoryKey" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Sum" HeaderText="Sum" ReadOnly="True" SortExpression="Sum" />
            <asp:BoundField DataField="SalesTerritoryKey" HeaderText="SalesTerritoryKey" InsertVisible="False" ReadOnly="True" SortExpression="SalesTerritoryKey" />
            <asp:BoundField DataField="SalesTerritoryRegion" HeaderText="SalesTerritoryRegion" SortExpression="SalesTerritoryRegion" />
            <asp:BoundField DataField="SalesTerritoryCountry" HeaderText="SalesTerritoryCountry" SortExpression="SalesTerritoryCountry" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT SUM(FactInternetSales.SalesAmount) AS Sum, DimSalesTerritory.SalesTerritoryKey, DimSalesTerritory.SalesTerritoryRegion, DimSalesTerritory.SalesTerritoryCountry FROM FactInternetSales INNER JOIN DimSalesTerritory ON FactInternetSales.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey GROUP BY DimSalesTerritory.SalesTerritoryKey, DimSalesTerritory.SalesTerritoryRegion, DimSalesTerritory.SalesTerritoryCountry"></asp:SqlDataSource>
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