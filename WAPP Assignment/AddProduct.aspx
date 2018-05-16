<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WAPP_Assignment.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="my-4">Add New Product</h1>
    <p>
        &nbsp;
    </p>
    <table class="w-100">
        <tr>
            <td class="fixed-width-td">Product Name:</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Description:</td>
            <td>
                <asp:TextBox ID="txtProdDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Price (RM):</td>
            <td>
                <asp:TextBox ID="txtProdPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">Image:</td>
            <td>
                <asp:FileUpload ID="fuProdImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="fixed-width-td">&nbsp</td>
            <td>
                <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" OnClick="btnAdd_Click" Text="Add" />
                <asp:Button ID="btnReset" class="btn btn-secondary" runat="server" OnClick="btnReset_Click" Text="Reset" />
            </td>
        </tr>
    </table>

</asp:Content>
