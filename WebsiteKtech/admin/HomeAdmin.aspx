<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="WebsiteKtech.admin.HomeAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="padding:10px;">
 <h1>สำหรับ admin เท่านั้น...</h1>
 <table>
    <tr>
    <td style="text-align:right;"> id : </td><td><asp:TextBox ID="textId" runat="server" ></asp:TextBox></td>
    </tr>
    <tr>
    <td style="text-align:right;">password : </td><td><asp:TextBox TextMode="Password" ID="textPassword" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td></td><td> 
        <asp:Button ID="btnLogin"  runat="server" Text="Login" class="btn btn-primary"
        onclick="btnLogin_Click" /></td>
    </tr>
    </table>
    <asp:Label ID="alert" runat="server" Text=""></asp:Label>
  </div> 
</asp:Content>
