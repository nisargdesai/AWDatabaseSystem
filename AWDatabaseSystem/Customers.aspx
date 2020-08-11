<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Assignment2.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="YearlyIncome" HeaderText="YearlyIncome" SortExpression="YearlyIncome" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="StateProvinceCode" HeaderText="StateProvinceCode" SortExpression="StateProvinceCode" />
            <asp:BoundField DataField="CountryRegionCode" HeaderText="CountryRegionCode" SortExpression="CountryRegionCode" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DimCustomer.FirstName, DimCustomer.LastName, DimCustomer.BirthDate, DimCustomer.Gender, DimCustomer.YearlyIncome, DimCustomer.EmailAddress, DimCustomer.Phone, DimCustomer.AddressLine1, DimGeography.City, DimGeography.StateProvinceCode, DimGeography.CountryRegionCode FROM DimGeography INNER JOIN DimCustomer ON DimGeography.GeographyKey = DimCustomer.GeographyKey"></asp:SqlDataSource>
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