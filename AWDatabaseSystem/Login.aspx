<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="Login" />
    <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for AdventureWorks access" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Welcome.aspx">
</asp:Login>
</asp:Content>
<%--using the 3rd content holder to display the navigation through the websites--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="nav">
        <br /><br />
        <a href="SignUp.aspx">Sign Up Page</a><br /><br />
    </div>
</asp:Content>
