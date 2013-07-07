<%@ Page Title="" Language="C#" MasterPageFile="~/KtechMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebsiteKtech.Pages.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:10px;">
<div><marquee behavior="scroll" direction="left"><asp:Label ID="lblMarquee" runat="server" Text=""></asp:Label></marquee></div>
<div style="margin-left:109px;margin-top:20px;margin-bottom:10px;"><iframe src="../slideshow/jquery-slideshow.html" width="590" height="280"  frameborder="0" scrolling="no"></iframe></div>
<center><img src="../Pages/image_default/logo_and_text.png" /></center>
<div style="margin:10px auto;color:#ffffff;background-color:blue;width:580px;text-align:center;height:auto;">
    
   <h4>ช่าวประชาสัมพันธ์</h4>
   <div style="background-color:#58FAF4;width:580px;min-height:50px;border:solid 1px #ffffff;text-align:left;">
       <div style="padding:10px;color:#363636;"><asp:Label ID="Label1" runat="server" Text="" ></asp:Label></div>
 
</div>
</div>
<br />
<div style="margin:10px auto;color:#ffffff;background-color:#FE9A2E;width:580px;text-align:center;height:auto;">
    
   <h4>ภาพกิจกรรม</h4>
   <div style="background-color:#F7FE2E;width:580px;min-height:200px;border:solid 1px #ffffff;">
   <div style="padding:10px;">
   <table>
   <tr>
   <td style="padding:2px;vertical-align:top;"><img src="../Pages/thumpnail_picture/thumbnail1.jpg" width="77" height="42"></td><td style="text-align:left;"><a href="act_pic1.aspx">ประมวลภาพการแข่งขันทักษะวิชาชีพ ครั้งที่ 27</a><br />	
     <p style="color:#363636;">สาขาช่างยนต์ การแข่งขันทักษะวิชาชีพครั้งที่ 27 ณ วิทยาลัยเทคโนโลยีการจัดการขอนแก่น คณะช่างอุตสาหกรรม สาขาวิชาช่างยนต์</p></td>
   </tr>
    <tr>
   <td style="padding:2px;vertical-align:top;"><img src="../Pages/thumpnail_picture/thumpnail2.jpg" width="77" height="42"></td><td style="text-align:left;"><a href="act_pic2.aspx">ประมวลภาพการแข่งขันทักษะวิชาชีพ ครั้งที่ 27</a><br />	
     <p style="color:#363636;">สาขาช่างเทคนิคพื้นฐาน การแข่งขันทักษะวิชาชีพครั้งที่ 27 ณ วิทยาลัยเทคโนโลยีการจัดการขอนแก่น คณะช่างอุตสาหกรรม สาขาช่างเทคนิคพื้นฐาน</p></td>
   </tr>
    <tr>
   <td style="padding:2px;vertical-align:top;"><img src="../Pages/thumpnail_picture/thumpnail3.jpg" width="77" height="42"></td><td style="text-align:left;"><a href="act_pic3.aspx">ประมวลภาพการแข่งขันทักษะวิชาชีพ ครั้งที่ 27</a><br />	
     <p style="color:#363636;">สาขาช่างไฟฟ้า การแข่งขันทักษะวิชาชีพครั้งที่ 27 ณ วิทยาลัยเทคโนโลยีการจัดการขอนแก่น คณะช่างอุตสาหกรรม ช่างไฟฟ้า </p></td>
   </tr>
    <tr>
   <td style="padding:2px;vertical-align:top;"><img src="../Pages/thumpnail_picture/thumpnail4.jpg" width="77" height="42"></td><td style="text-align:left;"><a href="act_pic4.aspx">ประมวลภาพการแข่งขันทักษะวิชาชีพ ครั้งที่ 27</a><br />	
     <p style="color:#363636;">สาขาช่างอิเล็กทรอนิกส์ การแข่งขันทักษะวิชาชีพครั้งที่ 27 ณ วิทยาลัยเทคโนโลยีการจัดการขอนแก่น คณะช่างอุตสาหกรรม ช่างอิเล็กทรานิกส์</p></td>
   </tr>
    <tr>
   <td><img src="../Pages/thumpnail_picture/thumpnail5.jpg" width="77" height="42"></td><td style="text-align:left;"><span style="color:#363636;">พิธีรับใบประกาศนียบัตร</span><br />	
     <p style="color:#363636;">วิทยาลัยเทคโนโลยีการจัดการขอนแก่น ได้จัดพิธีรับใบประกาศนียบัตรขึ้นในวันที่ 9 กุมภาพันธ์ 2555</p></td>
   </tr>

   </table>
   </div>
</div>
</div>

</div><%--end div page--%>
</asp:Content>
