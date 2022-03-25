<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Iletişim.aspx.cs" Inherits="İnternet_Programcılığı_Proje.Iletişim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 164px;
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-dark table-striped">
        <tr>
            <td>Bize Ulaşın</td>
            <td>
                &nbsp;</td>
        <tr>
            <td>Ad Soyad</td>
            <td>
                <asp:TextBox ID="tbAdSoyad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td>
                <asp:TextBox ID="TbEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Açıklama</td>
            <td>
                <asp:TextBox ID="tbAcilama" runat="server" Height="63px" TextMode="MultiLine" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btngonder" runat="server" Text="Gönder" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
