<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Assignment2.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Shows the user their login status--%>
    <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="Login" />
    <%--Used updatePanel, a label and a timer to update the time every 30 seconds.--%>
    <asp:UpdatePanel ID="DateTimeUpdatePanel" runat="server">
        <ContentTemplate>
            <asp:Label ID="DateTimeLabel" CssClass="DateTime" runat="server" Text="The Time refreshes after every 30 seconds here...."></asp:Label>
            <asp:Timer ID="DateTimeTimer" runat="server" Interval="30000" OnTick="DateTimeTimer_Tick"></asp:Timer>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br /><br /><br /><br /><br /><br />
    <br /><br /><br /><br /><br /><br />
    <br /><br />
    <%--some friendly words to help you navigate through the website--%>
    <h2>Feel free to use the side bar in order to navigate through different tables of information regarding the Products, Employees, Sales, Customers etc.</h2>
</asp:Content>
<%--using the 3rd content holder to display the navigation through the websites--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="nav">
        <br /><br />
        <a href="Products.aspx">Products Information Page</a><br /><br />
        <a href="Sales.aspx">Sales Information Page</a><br /><br />
        <a href="Employees.aspx">Employees Information Page</a><br /><br />
        <a href="Customers.aspx">Customers Information Page</a><br /><br />
    </div>
</asp:Content>