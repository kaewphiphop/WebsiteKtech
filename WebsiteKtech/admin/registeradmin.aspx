<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="registeradmin.aspx.cs" Inherits="WebsiteKtech.admin.registeradmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:10px;">
    <h1>Register Admin</h1>
    <table>
    <tr>
    <td style="text-align:right;"> id : </td><td><asp:TextBox ID="textId" runat="server" MaxLength="8" ></asp:TextBox></td>
    </tr>
    <tr>
    <td style="text-align:right;">password : </td><td><asp:TextBox ID="textPassword" runat="server" TextMode="Password" MaxLength="8" ></asp:TextBox></td>
    </tr>
        <tr>
    <td style="text-align:right;">confirm password : </td><td><asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" MaxLength="8" ></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td> <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" 
        onclick="btnRegister_Click" /></td>
    </tr>
    </table>
    <asp:Label ID="alert" runat="server" Text=""></asp:Label>
</div>
</asp:Content>
