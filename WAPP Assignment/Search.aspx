<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WAPP_Assignment.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Search</h1>
    <p>
        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
    </p>
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100">
            <tr>
                <td style="width: 401px">Username:</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 401px">Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 401px; height: 36px">Email:</td>
                <td style="height: 36px">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 401px; height: 66px">Gender:</td>
                <td style="height: 66px">
                    <asp:RadioButtonList ID="rdbGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="width: 401px">Country:</td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server">
                        <asp:ListItem>Malaysia</asp:ListItem>
                        <asp:ListItem>Singapore</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 401px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Edit" />
                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
