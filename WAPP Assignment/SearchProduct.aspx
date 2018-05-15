<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="WAPP_Assignment.SearchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>SEARCH PRODUCT</h1>
    <table class="w-100">
        <tr>
            <td style="width: 251px">Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 251px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
            </td>
        </tr>
    </table>
    <table class="w-100">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 249px">&nbsp;</td>
                        <td>
                            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="w-100">
            <tr>
                <td style="width: 250px; height: 112px;"></td>
                <td style="height: 112px">
                    <asp:Image ID="imgProd" runat="server" Height="110px" Width="110px" />
                </td>
            </tr>
            <tr>
                <td style="width: 250px">Name:</td>
                <td>
                    <asp:Label ID="lblProdName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">Description:</td>
                <td>
                    <asp:Label ID="lblProdDesc" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">Price:</td>
                <td>
                    <asp:Label ID="lblProdPrice" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
