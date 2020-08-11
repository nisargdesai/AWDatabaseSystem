<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="Assignment2.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="SalesTerritoryRegion" HeaderText="SalesTerritoryRegion" SortExpression="SalesTerritoryRegion" />
            <asp:BoundField DataField="SalesTerritoryCountry" HeaderText="SalesTerritoryCountry" SortExpression="SalesTerritoryCountry" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DimEmployee.FirstName, DimEmployee.LastName, DimEmployee.Title, DimEmployee.BirthDate, DimEmployee.EmailAddress, DimEmployee.Phone, DimEmployee.Gender, DimEmployee.EmployeePhoto, DimEmployee.Status, DimSalesTerritory.SalesTerritoryRegion, DimSalesTerritory.SalesTerritoryCountry FROM DimEmployee INNER JOIN DimSalesTerritory ON DimEmployee.SalesTerritoryKey = DimSalesTerritory.SalesTerritoryKey WHERE (DimEmployee.Status = N'Current')"></asp:SqlDataSource>
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
