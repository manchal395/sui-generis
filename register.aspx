<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Table ID="Table1" CssClass="regAdmin" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Name</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="name" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Username</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="username" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Email Id</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="emailid" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Password</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="password" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Blood Group</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="blood" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">City</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="city" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">State</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="state" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Pin Code</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="pin" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Phone Number</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox CssClass="txtbox" ID="phone" runat="server"></asp:TextBox>
            
    </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" ColumnSpan="2">
                <asp:Button ID="registerUser" CssClass="btn01" runat="server" Text="Register" OnClick="registerUser_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</asp:Content>

