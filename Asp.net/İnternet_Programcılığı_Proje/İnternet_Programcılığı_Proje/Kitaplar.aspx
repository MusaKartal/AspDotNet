<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Kitaplar.aspx.cs" Inherits="İnternet_Programcılığı_Proje.Kİtaplar" %>
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
        .auto-style38 {
            width: 232px;
            height: 260px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
        <tr>
            <td class="auto-style12">
                <img alt="marveldefter" class="auto-style16" src="img/romanantman.jpg" /></td>
            <td class="auto-style12">
                <img alt="marveldefter" class="auto-style17" src="img/romandesafioınfınıto.jpg" /></td>
            <td class="auto-style12">
                <img alt="marveldefter" class="auto-style18" src="img/romandrstrange.jpg" /></td>
            <td class="auto-style12">
                <img alt="marveldefter" class="auto-style19" src="img/romanhulk.jpg" /></td>
            <td class="auto-style15">
                <img alt="dc" class="auto-style17" src="img/romanınfınıtycrudade.jpg" /></td>
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
                <img alt="marveldefter" class="auto-style20" src="img/romanınfınıtycrudade1.jpg" /></td>
            <td class="auto-style6">
                <img alt="marveldefter" class="auto-style21" src="img/romanınfınıtycrudade2.jpg" /></td>
            <td class="auto-style6">
                <img alt="marveldefter" class="auto-style22" src="img/romanınfınıtycrudade3.jpg" /></td>
            <td class="auto-style6">
                <img alt="marveldefter" class="auto-style23" src="img/romanınfınıtycrudade4.jpg" /></td>
            <td class="auto-style26">
                <img alt="marveldefter" class="auto-style18" src="img/romanlarmarvel.jpg" /></td>
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
                <img alt="marveldefter" class="auto-style21" src="img/romanMarvel.jpg" /></td>
            <td class="auto-style38">
                <img alt="marveldefter" class="auto-style24" src="img/romanmarvel1.jpg" /></td>
            <td class="auto-style38">
                <img alt="marveldefter" class="auto-style18" src="img/romanmarvel2.jpg" /></td>
            <td class="auto-style38">
                <img alt="marveldefter" class="auto-style16" src="img/romanwarlock.jpg" /></td>
           
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
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
