<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="loginAdmin">
        <div>
            <center><h3>LOGIN</h3></center>
            <asp:TextBox CssClass="txtbox" ID="uname" runat="server" placeholder="Username"></asp:TextBox>
            <asp:TextBox CssClass="txtbox" ID="pwd" runat="server" placeholder="Password"></asp:TextBox>
            <asp:Button ID="loginUser" runat="server" CssClass="btn" Text="Login" OnClick="loginUser_Click" />
            <br />
            <br />
            <asp:Button ID="newUser" runat="server" CssClass="btn" Text="New User? Register here" OnClick="newUser_Click" />
            &nbsp;&nbsp;
        <asp:Button ID="newOrg" runat="server" CssClass="btn" Text="New Organization? Register here" OnClick="newOrg_Click" />


        </div>
    </div>
</asp:Content>

