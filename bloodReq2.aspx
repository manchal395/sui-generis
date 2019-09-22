<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bloodReq2.aspx.cs" Inherits="bloodReq2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Select your choice"></asp:Label><br />
    <asp:Button ID="Button2" runat="server" Text="Update Blood Units" OnClick="Button2_Click" />&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Requirement" OnClick="Button1_Click" />
    <br />
    <asp:DropDownList ID="bloodg" runat="server" Enabled="False" Visible="False" >
        <asp:ListItem Value="A+" Selected="True">A+</asp:ListItem>
        <asp:ListItem Value="A-">A-</asp:ListItem>
        <asp:ListItem Value="B+">B+</asp:ListItem>
        <asp:ListItem Value="B-">B-</asp:ListItem>
        <asp:ListItem Value="AB+">AB+</asp:ListItem>
        <asp:ListItem Value="AB-">AB-</asp:ListItem>
        <asp:ListItem Value="O+">O+</asp:ListItem>
        <asp:ListItem Value="O-">O-</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server"></asp:Label><br />
    <asp:Label ID="Label3" runat="server" Text="Enter present number of units:" Visible="False"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Visible="False"></asp:TextBox><br />
    <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" Visible="False" />

</asp:Content>

