<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bloodReq.aspx.cs" Inherits="bloodReq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="regAdmin">
        <asp:Label ID="Label1" runat="server" Text="Which Blood Group is required?"></asp:Label>
    &nbsp;
    <asp:DropDownList ID="bloodg" runat="server">
        <asp:ListItem Value="A+" Selected="True">A+</asp:ListItem>
        <asp:ListItem Value="A-">A-</asp:ListItem>
        <asp:ListItem Value="B+">B+</asp:ListItem>
        <asp:ListItem Value="B-">B-</asp:ListItem>
        <asp:ListItem Value="AB+">AB+</asp:ListItem>
        <asp:ListItem Value="AB-">AB-</asp:ListItem>
        <asp:ListItem Value="O+">O+</asp:ListItem>
        <asp:ListItem Value="O-">O-</asp:ListItem>
    </asp:DropDownList><br /><br />
     <asp:Label ID="Label2" runat="server" Text="City"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        <asp:TextBox CssClass="txtbox2" ID="incity" runat="server"></asp:TextBox><br /><br />
     <asp:Label ID="Label4" runat="server" Text="Contact Number"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox CssClass="txtbox2" ID="Phone" runat="server"></asp:TextBox><br /><br />
    <asp:Button CssClass="btn02" ID="showRes" runat="server" Text="Fetch Results" OnClick="showRes_Click" />
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Send Email" ShowHeader="True" Text="Send Email" />
        </Columns>
        </asp:GridView>
    <br /><br />
        <asp:Label ID="Label3" runat="server" ></asp:Label><br />
    <asp:GridView ID="GridView2" runat="server" OnRowCommand="GridView2_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Send Email" ShowHeader="True" Text="Send Email" />
        </Columns>
        </asp:GridView>
    </div>
</asp:Content>

