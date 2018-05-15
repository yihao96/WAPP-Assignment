<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="WAPP_Assignment.ViewAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>View All</h1>
    <table class="w-100" border="1" style="background-color: #7FFFD4">
        <tr style="font-weight: bold;">
            <td>Username</td>
            <td>Email</td>
            <td>Gender</td>
            <td>Country</td>
            <td>User Type</td>
        </tr>
        <%=fetchData()%>
    </table>

</asp:Content>
