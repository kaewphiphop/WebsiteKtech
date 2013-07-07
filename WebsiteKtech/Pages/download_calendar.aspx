<%@ Page Title="" Language="C#" MasterPageFile="~/KtechMaster.Master" AutoEventWireup="true" CodeBehind="download_calendar.aspx.cs" Inherits="WebsiteKtech.Pages.download_calendar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Pages/css/download.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 #page
 {
     padding:10px;
 }
 </style>
 <div id="page">
 <center><h2>ดาวน์โหลดปฏิทินการศึกษา</h2></center>
 <table>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</table>
</div>
</asp:Content>
