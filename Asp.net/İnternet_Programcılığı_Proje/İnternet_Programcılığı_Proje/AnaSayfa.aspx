<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="İnternet_Programcılığı_Proje.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
       <link rel="stylesheet" type="text/css" href="cc.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="AnaGovde">
     <p>
     Biri Marvel, diğeri DC evrenini yaratan iki kardeş vardır. Bu kardeşler öyle güçlü varlıklardır ki, iki evrende de onların karşısında durabilecek güçte hiçbir karakter yoktur. Ancak bu tanrı denilebilecek varlıklar, zamanla birbirlerinin varolduğunu unuturlar. Milyarlarca yıl sonra -bu mini serinin süregeldiği sırada- iki kardeş birbirlerinin varlığını tekrar hissederler. Bir araya gelen kardeşlerin ikisi de kendisinin daha güçlü olduğunu düşünerek zıtlaşırlar ve bu yüzden dövüşmek isterler. Eğer karşı karşıya gelecek olurlarsa ikisinin yarattığı evren de yıkıma uğrayacağı için, çareyi kendi evrenlerinin kahramanlarını dövüştürmekte bulurlar. Kurallar basittir: Bu dövüşlerin sonunda hangi evrende yenilen kahraman daha fazla olursa, o evren yok olacaktır. Aynı zamanda bazı karakterler sonsuza kadar dövüşse bile berabere kalacakları için, bir saniyeliğine bile hareketsiz bırakılan ilk taraf dövüşü kaybedecektir.
         </p>
 </div>


</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <div class="col-md-8">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/slider3.jpg" class="d-block w-100 h-250 p-3" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/slider2.jpg" class="d-block w-100 h-250 p-3" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/slider1.jpg" class="d-block w-100 h-250 p-3" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </div>
 
</asp:Content>

