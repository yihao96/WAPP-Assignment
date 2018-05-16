<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration2.aspx.cs" Inherits="WAPP_Assignment.Registration2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="my-4">Registration</h1>
    <table class="w-100">
        <tr>
            <td class="fixed-width-td">Username :</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Password :</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Name :</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Email :</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required="required"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Gender :</td>
            <td>
                <asp:RadioButtonList ID="rdbGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Country :</td>
            <td>
                <asp:DropDownList ID="ddlCountry" runat="server">
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">User Type :</td>
            <td>
                <asp:DropDownList ID="ddlUserType" runat="server">
                    <asp:ListItem>Member</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">&nbsp;</td>
            <td>
                <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" OnClick="btnRegister_Click" />
                <asp:Button ID="btnReset" class="btn btn-secondary" runat="server" Text="Reset" OnClick="btnReset_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

</asp:Content>
