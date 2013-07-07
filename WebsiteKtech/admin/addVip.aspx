<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addVip.aspx.cs" Inherits="WebsiteKtech.admin.addVip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
    #page
    {
        padding:10px;
        
    }
    #right
    {
        text-align:right;
    }
   
</style>
    <div id="page">
    <h2>เพิ่มไฟล์สำหรับนักศึกษาสมทบ</h2>
    <table>
    <tr>
    <td id="right"><asp:Label ID="Label1" runat="server" Text="Title :"></asp:Label></td><td><asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td id="right">ไฟล์ :</td><td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
    </tr>
    <tr>
    <td></td><td><asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="upload" onclick="Button1_Click" /></td>
    </tr>
    </table>
</div>
</asp:Content>
