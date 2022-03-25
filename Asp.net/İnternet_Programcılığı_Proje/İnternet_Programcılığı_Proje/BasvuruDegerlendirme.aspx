<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BasvuruDegerlendirme.aspx.cs" Inherits="İnternet_Programcılığı_Proje.BasvuruDegerlendirme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    
        .auto-style4 {
            height: 241px;
        }
        .auto-style5 {
            width: 918px;
            height: 509px;
        }
        .auto-style6 {
            width: 918px;
            height: 102px;
        }
        .auto-style7 {
            width: 1087px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style7">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="16px" Width="1057px" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="AdSoyad" HeaderText="Ad Soyad" SortExpression="AdSoyad" />
                <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet" SortExpression="Cinsiyet" ReadOnly="True" />
                <asp:BoundField DataField="UlkeAdi" HeaderText="Ülke AdI" SortExpression="UlkeAdi" />
                <asp:BoundField DataField="DogumTarihi" HeaderText="DogumTarihi" SortExpression="DogumTarihi" />
                <asp:BoundField DataField="Email " HeaderText="Email " SortExpression="Email " />
                <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                <asp:BoundField DataField="Eğitim Durumu" HeaderText="Eğitim Durumu" SortExpression="Eğitim Durumu" ReadOnly="True" />
                <asp:BoundField DataField="Başvuru Sonucu" HeaderText="Başvuru Sonucu" SortExpression="Başvuru Sonucu" ReadOnly="True" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="BasvuruSonuc.aspx?Id={0}" Text="Detay" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Basvuru.AdSoyad, CASE Basvuru.Cinsiyet WHEN 'K' THEN 'Kadın' WHEN 'E' THEN 'Erkek' END AS 'Cinsiyet', Basvuru.DogumTarihi, Basvuru.[Email ], Basvuru.Telefon, CASE Basvuru.[EgitimDurumu ] WHEN 'U' THEN 'Üniversite' WHEN 'L' THEN 'Lise' END AS 'Eğitim Durumu', CASE Basvuru.[BasvuruSonucu ] WHEN '1' THEN 'Olumlu' WHEN '2' THEN 'Olumsuz' END AS 'Başvuru Sonucu', Ulke.UlkeAdi, Basvuru.Id FROM Basvuru INNER JOIN Ulke ON Basvuru.UyrukId = Ulke.Id"></asp:SqlDataSource>
    </p>
    <p class="auto-style6">
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
