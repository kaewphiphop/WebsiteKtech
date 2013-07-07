<%@ Page Title="" Language="C#" MasterPageFile="~/KtechMaster.Master" AutoEventWireup="true" CodeBehind="showDetail.aspx.cs" Inherits="WebsiteKtech.Pages.showDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="../Pages/css/lightbox.css" type="text/css" media="screen" />

<style type="text/css">
        #page
        {
            padding:15px;
            
        }
        #indent
        {
            text-indent:2em;
        }
    </style>
    <div id="page">
    <center><asp:Label ID="LabelTiTle" runat="server" Text="Label"></asp:Label></center>
    <div><asp:Label ID="LabelNews" runat="server" Text="Label"></asp:Label></div>
   <center><a id="show" runat="server" href="../Pages/image_building/1.jpg" rel="lightbox" title=""><img id="img" runat="server"  /></center></a>
      
    </div>
</asp:Content>
