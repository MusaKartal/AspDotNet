<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BasvuruSonuc.aspx.cs" Inherits="İnternet_Programcılığı_Proje.BasvurucuSonuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 178px;
        }
        .auto-style5 {
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
            width: 147px;
        }
        .auto-style8 {
            height: 29px;
            width: 168px;
        }
        .auto-style9 {
            width: 168px;
        }
        .auto-style10 {
            width: 147px;
        }
        .auto-style13 {
            margin-bottom: 0px;
        }
        .auto-style14 {
            height: 27px;
            width: 147px;
        }
        .auto-style15 {
            height: 27px;
            width: 168px;
        }
        .auto-style17 {
            height: 27px;
        }
        .auto-style18 {
            width: 151px;
            height: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style14">
                Adı Soyadı</td>
            <td class="auto-style15">
                <asp:TextBox ID="txAdSoyad" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style14">
                Başlangıç Tarihi</td>
            <td class="auto-style17">
                <asp:TextBox ID="txEgitimbasTarih" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Cinsiyet</td>
            <td class="auto-style8">
                <asp:TextBox ID="txCinsiyet" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">
                Bitiş Tarihi</td>
            <td class="auto-style5">
                <asp:TextBox ID="txegitimbitTarih" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Uyruk</td>
            <td class="auto-style8">
                <asp:TextBox ID="txUyruk" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">
                Devam Durumu</td>
            <td class="auto-style5">
                <asp:TextBox ID="txDevamDurumu" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Doğum Tarihi</td>
            <td class="auto-style8">
                <asp:TextBox ID="txDogumTarih" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">
                Lise Adı</td>
            <td class="auto-style5">
                <asp:TextBox ID="txLiseAdi" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Email</td>
            <td class="auto-style8">
                <asp:TextBox ID="txEmail" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">
                Üniversite Adı</td>
            <td class="auto-style5">
                <asp:TextBox ID="txUniAdi" runat="server" ReadOnly="True"  Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                Cep Telefonu</td>
            <td class="auto-style9">
                <asp:TextBox ID="txTelefon" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                Dosya Adı</td>
            <td>
                <asp:TextBox ID="txdosyaAdi" runat="server" ReadOnly="True" CssClass="auto-style13" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Ülke</td>
            <td class="auto-style8">
                <asp:TextBox ID="txSehir" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">Başvuru Sonucu</td>
            <td class="auto-style5">
                <asp:TextBox ID="txBasvuruSonuc" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Açıklama</td>
            <td class="auto-style8">
                <asp:TextBox ID="txAciklama" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style6">Özgeçmiş</td>
            <td class="auto-style5">
                <asp:TextBox ID="txOzgecmis" runat="server" ReadOnly="True"  Width="200px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                Eğitim Durumu</td>
            <td class="auto-style9">
                <asp:TextBox ID="txEgitimdurumu" runat="server" ReadOnly="True" Width="200px" ></asp:TextBox>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">Başvuru Sonucu</td>
            <td>
                <asp:RadioButtonList ID="rbldegerlendirme" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">Olumlu</asp:ListItem>
                    <asp:ListItem Value="2">Olumsuz</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td>
                <asp:Button ID="btnDegerlendirmeTamamlandı" runat="server" Text="Değerlendirme Tamamlandı" OnClick="btnDegerlendirmeTamamlandı_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
