<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="News.aspx.cs" Inherits="WebsiteKtech.admin.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:10px;">
    <div class="container">
    <h2>เพิ่มข่าว</h2>
        <div class="row">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="หัวข้อข่าว    "></asp:Label>
            </div>
            <div class="row">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="row">
                 <asp:Label ID="Label2" runat="server" Text="รายละเอียดข่าว"></asp:Label>
            </div>
            <div class="row">
                <textarea id="detail" runat="server"> </textarea>
            </div>
            <div class="row">
               รูปภาพประกอบ <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp;
            </div>
            <div class="row">
                <asp:Button 
                    ID="Button1" runat="server" class="btn btn-primary" Text="เพิ่มข่าว" onclick="Button1_Click" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
