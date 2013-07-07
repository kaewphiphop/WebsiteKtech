<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="addMarquee.aspx.cs" Inherits="WebsiteKtech.admin.addMarquee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="padding:10px;">
    <div class="container">
    <h2>เพิ่มตัวหนังสือวิ่ง</h2>
        <div class="row">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="title"></asp:Label>
            </div>
            <div class="row">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="row">
                 <asp:Label ID="Label2" runat="server" Text="detail"></asp:Label>
            </div>
            <div class="row">
                <textarea id="detail" runat="server"> </textarea>
            </div>
          
            <div class="row">
                <asp:Button 
                    ID="Button1" runat="server" class="btn btn-primary" Text="เพิ่มตัวหนังสือวิ่ง" onclick="Button1_Click" />
            </div>
        </div>
    </div>
</div>
</asp:Content>
