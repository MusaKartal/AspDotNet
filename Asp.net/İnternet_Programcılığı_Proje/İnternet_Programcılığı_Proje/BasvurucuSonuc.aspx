<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BasvurucuSonuc.aspx.cs" Inherits="İnternet_Programcılığı_Proje.BasvurucuSonuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 703px;
            height: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        Başvuru Sonuç<asp:RadioButtonList ID="rblDegerlendirme" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1">Olumlu</asp:ListItem>
            <asp:ListItem Value="2">Olumsuz</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="btnDegerlendirmeTamamlandı" runat="server" Text="Değerlendirme Tamamlandı" />
&nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
