<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminshowmarquee.aspx.cs" Inherits="WebsiteKtech.admin.adminshowmarquee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
    <a id="show" runat="server" href="../Pages/image_building/1.jpg" rel="lightbox" title=""><img id="img" runat="server" /> </a><br /><br />
    <asp:Button ID="Button1" runat="server" Text="Delete" class="btn btn-danger" onclick="Button1_Click" />
</div>
</asp:Content>
