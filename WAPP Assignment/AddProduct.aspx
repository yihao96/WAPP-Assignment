<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WAPP_Assignment.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>ADD NEW PRODUCT</h1>
    <p>
        &nbsp;
    </p>
    <table class="w-100">
        <tr>
            <td style="width: 177px">Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 177px">Description:</td>
            <td>
                <asp:TextBox ID="txtProdDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 177px">Price (RM):</td>
            <td>
                <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 177px">Image:</td>
            <td>
                <asp:FileUpload ID="fuProdImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 177px">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnReset" runat="server" OnClick="btnReset_Click" Text="Reset" />
            </td>
        </tr>
    </table>

</asp:Content>
