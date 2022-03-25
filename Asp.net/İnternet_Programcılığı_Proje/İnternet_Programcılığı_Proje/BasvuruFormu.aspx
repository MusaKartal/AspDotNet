<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BasvuruFormu.aspx.cs" Inherits="İnternet_Programcılığı_Proje.BasvuruFormu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 361px;
        }
        .auto-style2 {
            width: 342px;
        }
        .auto-style3 {
            width: 247px;
        }
    </style>
    <link href="cc.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div >
    <table class="table table-dark table-striped" >
    <tr>
        <td class="auto-style3" >&nbsp;Genel Bilgiler</td>
        <td class="auto-style1" ></td>
    </tr>
    <tr>
        <td class="auto-style3" >Adı Soyadı</td>
        <td class="auto-style1">
            <asp:TextBox ID="tbAdSoyad" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAdSoyad" runat="server" ControlToValidate="tbAdSoyad" ErrorMessage="Lütfen Ad Soyadı Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Cinsiyet </td>
        <td class="auto-style1" >
            <asp:RadioButtonList ID="rblCinsiyet" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="K">Kadın</asp:ListItem>
                <asp:ListItem Value="E">Erkek</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvCinsiyet" runat="server" ControlToValidate="rblCinsiyet" ErrorMessage="Lütfen Cinsiyet Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Uyruk</td>
        <td class="auto-style1" >
            <asp:DropDownList ID="ddlUyruk" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceUyruk" DataTextField="UlkeAdi" DataValueField="Id" Width="300px">
                <asp:ListItem Value="0">Seçiniz</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceUyruk" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [UlkeAdi] FROM [Ulke]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Doğum Tarihi </td>
        <td class="auto-style1">
            <asp:TextBox ID="tbDogumTarih" runat="server" TextMode="Date" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDogumTarihi" runat="server" ControlToValidate="tbDogumTarih" ErrorMessage="Lütfen Doğum Tarihi Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >E-mail</td>
        <td class="auto-style1">
            <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Lütfen E-Mail Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Cep Telefonu </td>
        <td class="auto-style1">
            <asp:TextBox ID="tbCepTel" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCepTel" runat="server" ControlToValidate="tbCepTel" ErrorMessage="Lütfen Cep Tel Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbCepTel" ErrorMessage="Cep Telefonu:533-5552233 formatında olmalıdır." ForeColor="Red" ValidationExpression="\d{3}-\d{7}" ValidationGroup="ValiGroup">*</asp:RegularExpressionValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Ülke</td>
        <td class="auto-style1">
            <asp:DropDownList ID="ddlUlke" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSourceUlke" DataTextField="UlkeAdi" DataValueField="Id" OnSelectedIndexChanged="ddlUlke_SelectedIndexChanged" Width="300px">
                <asp:ListItem Value="0">Seçiniz</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceUlke" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [UlkeAdi] FROM [Ulke]"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvUlke" runat="server" ControlToValidate="ddlUlke" ErrorMessage="Lütfen Ülke Alanını Boş Bırakmayınız." ForeColor="Red" InitialValue="0" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >İl</td>
        <td class="auto-style1">
            <asp:DropDownList ID="ddlSehir" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceSehir" DataTextField="SehirAdi" DataValueField="UlkeId" EnableViewState="False" Width="300px">
                <asp:ListItem Value="0">Seçiniz</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceSehir" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [SehirAdi], [UlkeId] FROM [Sehir] WHERE ([UlkeId] = @UlkeId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlUlke" Name="UlkeId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvSehir" runat="server" ControlToValidate="ddlSehir" ErrorMessage="Lütfen İl Alanını Boş Bırakmayınız." ForeColor="Red" InitialValue="0" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" >Kariyer Hedefiniz ve Hakkınızda bilgi</td>
        <td class="auto-style1" >
            <asp:TextBox ID="tbAciklama" runat="server" Height="72px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
</table>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-dark table-striped">
        <tr>
            <td class="auto-style2" >EĞİTİM BİLGİLERİ</td>
            <td ></td>
        </tr>
        <tr>
            <td class="auto-style2" >Eğitim Durumu</td>
            <td >
                <asp:DropDownList ID="ddEgitimDurumu" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddEgitimDurumu_SelectedIndexChanged" Width="300px" Height="30px">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                    <asp:ListItem Value="L">Lise</asp:ListItem>
                    <asp:ListItem Value="U">Üniversite</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvEgitimDurum" runat="server" ControlToValidate="ddEgitimDurumu" ErrorMessage="Lütfen Eğitim Alanını Boş Bırakmayınız." ForeColor="Red" InitialValue="0" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >Başlangıç Tarihi</td>
            <td >
                <asp:TextBox ID="tbBaslangicTarih" runat="server" TextMode="Date" Width="300px" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBaslangicTarih" runat="server" ControlToValidate="tbBaslangicTarih" ErrorMessage="Lütfen Başlangıç Tarih Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >Bitiş Tarihi </td>
            <td >
                <asp:TextBox ID="tbBitisTarih" runat="server" TextMode="Date" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBitisTarih" runat="server" ControlToValidate="tbBitisTarih" ErrorMessage="Lütfen Bitiş Tarihi Alanını Boş Bırakmayınız." ForeColor="Red" ValidationGroup="ValiGroup">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >Devam Durumu</td>
            <td >
                <asp:CheckBox ID="cbDevamEdiyorum" runat="server" Text="Devam Ediyorum" OnCheckedChanged="cbDevamEdiyorum_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >
                <asp:Label ID="lbLiseAdi" runat="server" Text="Lise Adı" Visible="False"></asp:Label>
                <asp:Label ID="lbuniAdi" runat="server" Text="Üniversite Adı " Visible="False"></asp:Label>
                <br />
            </td>
            <td >
                <asp:DropDownList ID="ddlLiseAdi" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceLise" DataTextField="LiseAdi" DataValueField="Id" Height="30px" Visible="False" Width="300px">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceLise" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [LiseAdi], [Id] FROM [Lise]"></asp:SqlDataSource>
                <asp:DropDownList ID="ddUniAdi" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSourceUni" DataTextField="UniversiteAdi" DataValueField="Id" Visible="False" Width="300px" Height="30px">
                    <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceUni" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UniversiteAdi], [Id] FROM [Universite]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >&nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" >Özgeçmiş Dosyası </td>
            <td >
                <asp:FileUpload ID="fuOzgecmisDosyasi" runat="server" Width="300px" />
                <br />
                <asp:Label ID="lbKayit" runat="server" Text="Dosya Başarılı Olarak Kaydedildi" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" ></td>
            <td >
                <asp:CheckBox ID="cbSiteKural" runat="server" Text="Site kurallarını ve KVKK koşullarını kabul ediyorum" AutoPostBack="True" OnCheckedChanged="cbSiteKural_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" >&nbsp;</td>
            <td >
                <asp:Button ID="btnGonder" runat="server" Text="Gönder" OnClick="btnGonder_Click" ValidationGroup="ValiGroup" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="ValiGroup" />
</asp:Content>
