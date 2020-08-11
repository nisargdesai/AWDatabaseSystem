<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment2.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="Login" />
    <%--implemented the password requirements for the users to create an account.--%>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Login.aspx" InvalidPasswordErrorMessage="Password length must at least be 6. It must have 1 Uppercase letter, 1 Lowercase letter and 1 Number." ValidateRequestMode="Inherit">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
</asp:Content>
<%--using the 3rd content holder to display the navigation through the websites--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="nav">
        <br /><br />
        <a href="Login.aspx">Login Page</a><br /><br />
    </div>
</asp:Content>