<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dvd-Cd.aspx.cs" Inherits="İnternet_Programcılığı_Proje.Dvd_Cd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
       <link rel="stylesheet" type="text/css" href="Stil.css" />
    <style type="text/css">
        .auto-style5 {
            width: 236px;
            height: 151px;
        }
        .auto-style6 {
            width: 232px;
        }
        .auto-style12 {
            width: 232px;
            height: 169px;
        }
        .auto-style15 {
            height: 169px;
            width: 489px;
        }
        .auto-style16 {
            width: 209px;
            height: 256px;
        }
        .auto-style17 {
            width: 208px;
            height: 256px;
        }
        .auto-style18 {
            width: 210px;
            height: 256px;
        }
        .auto-style19 {
            width: 206px;
            height: 256px;
        }
        .auto-style20 {
            width: 211px;
            height: 255px;
        }
        .auto-style21 {
            width: 209px;
            height: 255px;
        }
        .auto-style22 {
            width: 209px;
            height: 254px;
        }
        .auto-style23 {
            width: 209px;
            height: 257px;
        }
        .auto-style24 {
            width: 210px;
            height: 255px;
        }
        .auto-style26 {
            width: 489px;
        }
        .auto-style31 {
            width: 217px;
            height: 258px;
        }
        .auto-style36 {
            width: 210px;
            height: 259px;
        }
        .auto-style37 {
            width: 206px;
            height: 260px;
        }
        .auto-style38 {
            width: 232px;
            height: 260px;
        }
        .auto-style41 {
            width: 489px;
            height: 260px;
        }
        .auto-style42 {
            width: 232px;
            height: 33px;
        }
        .auto-style43 {
            height: 33px;
            width: 489px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table class="auto-style1">
        <tr>
            <td class="auto-style12">
                <img alt="averangers" class="auto-style16" src="img/dvdavengers.jpg" /></td>
            <td class="auto-style12">
                <img alt="avengers" class="auto-style17" src="img/dvdavengers1.jpg" /></td>
            <td class="auto-style12">
                <img alt="avengers" class="auto-style18" src="img/dvdavengers2.jpg" /></td>
            <td class="auto-style12">
                <img alt="avengers" class="auto-style19" src="img/dvdavengers3.jpg" /></td>
            <td class="auto-style15">
                <img alt="dc" class="auto-style17" src="img/dcDvd5.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma" runat="server" Text="Satın Al"  />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma4" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma5" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma6" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnSatınAlma23" runat="server" Text="Satın Al" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <img alt="batman" class="auto-style20" src="img/dvdbatman.jpg" /></td>
            <td class="auto-style6">
                <img alt="batman" class="auto-style21" src="img/dvdbatman1.jpg" /></td>
            <td class="auto-style6">
                <img alt="batmansuperman" class="auto-style22" src="img/dvdbatmansuperman.jpg" /></td>
            <td class="auto-style6">
                <img alt="kaptan amerika" class="auto-style23" src="img/dvdcaptanamerica.jpg" /></td>
            <td class="auto-style26">
                <img alt="dc" class="auto-style18" src="img/dcDvd6.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma0" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma1" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma2" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma3" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnSatınAlma22" runat="server" Text="Satın Al" />
            </td>
        </tr>
        <tr>
            <td class="auto-style38">
                <img alt="kaptan amerika" class="auto-style21" src="img/dvdcaptanmarvel.jfif" /></td>
            <td class="auto-style38">
                <img alt="devil" class="auto-style24" src="img/dvddardevıl.jpg" /></td>
            <td class="auto-style38">
                <img alt="hulk" class="auto-style18" src="img/dvdhulk.jpg" /></td>
            <td class="auto-style38">
                <img alt="engodore" class="auto-style16" src="img/dvdvengadore.jpg" /></td>
            <td class="auto-style41">
                <img alt="dc" class="auto-style16" src="img/dcDvd7.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma7" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma8" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma9" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma10" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnSatınAlma21" runat="server" Text="Satın Al" />
            </td>
        </tr>
        <tr>
            <td class="auto-style42">
                <img alt="ıronman" class="auto-style17" src="img/dvdıronman.jpg" /></td>
            <td class="auto-style42">
                <img alt="ıronman2" class="auto-style17" src="img/dvdıronman2.jpg" /></td>
            <td class="auto-style42">
                <img alt="spidermean" class="auto-style22" src="img/dvdspiderman.jpeg" /></td>
            <td class="auto-style42">
                <img alt="spiderman" class="auto-style16" src="img/dvdspiderman1.jpg" /></td>
            <td class="auto-style43">
                <img class="auto-style16" src="img/dcDvd8.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma11" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma12" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma13" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma14" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnSatınAlma20" runat="server" Text="Satın Al" />
            </td>
        </tr>
        <tr>
            <td class="auto-style42">
                <img alt="dc" class="auto-style31" src="img/dcdvd.jpg" /></td>
            <td class="auto-style42">
                <img alt="dc" class="auto-style21" src="img/dcDvd1.jpg" /></td>
            <td class="auto-style42">
                <img alt="dc" class="auto-style36" src="img/dcDvd2.jpg" /></td>
            <td class="auto-style42">
                <img alt="marvei" class="auto-style37" src="img/dcDvd3.jpg" /></td>
            <td class="auto-style43">
                <img alt="dc" class="auto-style16" src="img/dcdvd9.jpg" /></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma15" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma16" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma17" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btnSatınAlma18" runat="server" Text="Satın Al" />
            </td>
            <td class="auto-style26">
                <asp:Button ID="btnSatınAlma19" runat="server" Text="Satın Al" />
            </td>
        </tr>
    </table>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
