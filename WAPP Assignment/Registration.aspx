<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WAPP_Assignment.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>REGISTRATION</h1>
    <asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required="required"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Gender : "></asp:Label>
    <asp:RadioButtonList ID="rdbGender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Country : "></asp:Label>
    <asp:DropDownList ID="ddlCountry" runat="server" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
        <asp:ListItem>Malaysia</asp:ListItem>
        <asp:ListItem>Singapore</asp:ListItem>
        <asp:ListItem>Bangladesh</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label6" runat="server" Text="User Type : "></asp:Label>
    <asp:DropDownList ID="ddlUserType" runat="server" OnSelectedIndexChanged="ddlUserType_SelectedIndexChanged">
        <asp:ListItem>Member</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" OnClick="btnRegister_Click" />
    <asp:Button ID="btnReset" class="btn btn-secondary" runat="server" Text="Reset" OnClick="btnReset_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

</asp:Content>
