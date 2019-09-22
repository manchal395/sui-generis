<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="register2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Table ID="Table1" CssClass="regAdmin" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Organization Name</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Organization Id</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Email Id</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="emailid" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Password</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell ColumnSpan="2" runat="server">
                <br />Number of units of different blood groups available</asp:TableCell>
            

        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">A+</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="apos" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">A-</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="aneg" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">B+</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="bpos" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">B-</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="bneg" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">AB+</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="abpos" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">AB-</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="abneg" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">O+</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="opos" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">O-</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="oneg" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">City</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">State</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="state" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Pin Code</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="pin" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>

        <asp:TableRow runat="server">
            <asp:TableCell runat="server">Phone Number</asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>
            
</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow runat="server">
            <asp:TableCell runat="server" ColumnSpan="2">
                <asp:Button ID="registerUser" CssClass="btn01" runat="server" Text="Register" OnClick="registerUser_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</asp:Content>

