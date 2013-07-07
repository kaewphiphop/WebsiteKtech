<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="marqueeAdmin.aspx.cs" Inherits="WebsiteKtech.admin.marqueeAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
    #page
    {
        padding:10px;
    }
</style>

    <link href="../Pages/css/download.css" rel="stylesheet" type="text/css" />
<div id="page">
<h2>ข้อความตัวหนังสือวิ่ง</h2>
<table>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

</table>
</div>
</asp:Content>
