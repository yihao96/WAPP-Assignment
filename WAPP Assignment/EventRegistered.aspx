<%@ Page Title="Event Registered" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EventRegistered.aspx.cs" Inherits="WAPP_Assignment.EventRegistered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="my-4">View All</h1>
    <table class="w-100" border="1" style="background-color: #7FFFD4">
        <tr style="font-weight: bold;">
            <td>Event Name</td>
            <td>Member Registered</td>
        </tr>
        <%=fetchData()%>
    </table>

</asp:Content>
