<%@ Page Title="Forgot Password" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WAPP_Assignment.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="my-4">Forgot Password</h1>
    <table class="w-100">
        <tr>
            <td class="fixed-width-td">Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" class="btn btn-primary" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <asp:Button ID="btnReset" class="btn btn-secondary" runat="server" Text="Reset" />
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">&nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
