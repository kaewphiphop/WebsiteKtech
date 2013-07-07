<%@ Page Title="" Language="C#" MasterPageFile="~/KtechMaster.Master" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="WebsiteKtech.calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="../Pages/css/download.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    #page
    {
        padding:10px;
    }
    .left
    {
        padding-left:2em;
    }
</style>
<div id="page">

<center><img src="../Pages/image_calendar/title_calendar.png">    </center>   <br/> <br/>

<div class="span12"> <div class=" span1 pdfimg"></div> <div class="span8 download"><a href="../Pages/PDF/14calendar.pdf">ดาวน์โหลดปฏิทินการศึกษา ประจำปีการศึกษา 2555 คลิก !!</a></div></div><br />
</div>

</asp:Content>
