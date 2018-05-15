<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAPP_Assignment.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>LOGIN</h1>
    <table class="w-100">
        <tr>
            <td style="height: 32px">Username:</td>
            <td style="height: 32px">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 36px">Password:</td>
            <td style="height: 36px">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-right">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" OnClick="btnLogin_Click" Text="Login" />
            </td>
            <td>
                <asp:Button ID="btnReset" class="btn btn-secondary" runat="server" OnClick="btnReset_Click" Text="Reset" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>
