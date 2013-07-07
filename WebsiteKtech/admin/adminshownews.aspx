<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminshownews.aspx.cs" Inherits="WebsiteKtech.admin.adminshow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="../Pages/css/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript" src="../js/prototype.js"></script>
<script type="text/javascript" src="../js/scriptaculous.js?load=effects,builder"></script>
<script type="text/javascript" src="../js/lightbox.js"></script>
<style type="text/css">
    #page
    {
        padding:10px;
    }
</style>
<div id="page">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
    <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-danger" onclick="Button1_Click" />
</div>

</asp:Content>
