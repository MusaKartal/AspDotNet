using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Proje
{
    public partial class BasvuruFormu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }


        private void KayitEkleme()
        {
            string checkbox = cbDevamEdiyorum.Checked ? "D" : "N";
           

            string filename = Path.GetFileName(fuOzgecmisDosyasi.PostedFile.FileName);
            try
            {
                SqlConnection conn2 = new SqlConnection
                (ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn2.Open();

                string insertQuery2 = "INSERT INTO Basvuru(AdSoyad,Cinsiyet,UyrukId,DogumTarihi,Sehir,Email,Telefon,Aciklama,EgitimDurumu,EgitimBasTarih,EgitimBitTarih,DevamDurumu,LiseAdi,UnvAdi,OzgecmisDosyaAd) " +
                    "VALUES (@AdSoyad,@Cinsiyet,@UyrukId,@DogumTarihi,@Sehir,@Email,@Telefon,@Aciklama,@EgitimDurumu ,@EgitimBasTarih,@EgitimBitTarih,@DevamDurumu,@LiseAdi,@UnvAdi,@OzgecmisDosyaAd)";


                SqlCommand cmd2 = new SqlCommand(insertQuery2, conn2);
                cmd2.Parameters.AddWithValue("@AdSoyad", tbAdSoyad.Text);                        
                cmd2.Parameters.AddWithValue("@Cinsiyet", rblCinsiyet.Text);
                cmd2.Parameters.AddWithValue("@UyrukId", ddlSehir.SelectedItem.Value);
                cmd2.Parameters.AddWithValue("@DogumTarihi", tbDogumTarih.Text);
                cmd2.Parameters.AddWithValue("@Sehir", ddlSehir.SelectedItem.Value);
                cmd2.Parameters.AddWithValue("@Email", tbEmail.Text);
                cmd2.Parameters.AddWithValue("@Telefon", tbCepTel.Text);
                cmd2.Parameters.AddWithValue("@Aciklama", tbAciklama.Text);
                cmd2.Parameters.AddWithValue("@EgitimDurumu", ddEgitimDurumu.SelectedItem.Value);
                cmd2.Parameters.AddWithValue("@EgitimBasTarih",tbBaslangicTarih.Text);
                cmd2.Parameters.AddWithValue("@EgitimBitTarih", tbBitisTarih.Text);
                cmd2.Parameters.AddWithValue("@DevamDurumu", checkbox);
                if (ddEgitimDurumu.SelectedItem.Value == "L")
                {
                    cmd2.Parameters.AddWithValue("@LiseAdi", ddlLiseAdi.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@UnvAdi", DBNull.Value);
                }

                else
                {
                    cmd2.Parameters.AddWithValue("@UnvAdi", ddUniAdi.SelectedItem.Value);
                    cmd2.Parameters.AddWithValue("@LiseAdi", DBNull.Value);
                }
                    

                cmd2.Parameters.AddWithValue("@OzgecmisDosyaAd", filename);
                cmd2.Parameters.AddWithValue("@BasvuruSonucu", filename);

                cmd2.ExecuteNonQuery();
                Response.Write("Kullanıcı veritabanına eklendi.");

                conn2.Close();
            }

            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }


        }

        public void Cookie()
        {
            HttpCookie MyCookie = new HttpCookie("MyCookieFile");
            MyCookie["kullaniciAdi"] = tbAdSoyad.Text;
            Response.Cookies.Add(MyCookie);

        }

        private void DosyaEkleme()
        {
            string file_prefix = Server.MapPath("~/UpLoads/" + DateTime.Now.ToString("dd_M_yyyy_hh_mm_"));


            lbKayit.Visible = true;
            if (fuOzgecmisDosyasi.HasFile)
            {

                fuOzgecmisDosyasi.SaveAs(file_prefix + fuOzgecmisDosyasi.FileName);
                lbKayit.Text = "Dosya Başarılı Şekilde Gönderildi";
            }
            else
            {
                lbKayit.Text = "Lütfen önce dosya seçiniz.";
            }


        }


        protected void ddEgitimDurumu_SelectedIndexChanged(object sender, EventArgs e)
        {
           /* ddUniAdi.Visible = false;
            ddlLiseAdi.Visible = false;
            lbuniAdi.Visible = false;
            lbLiseAdi.Visible = false; */


            if (ddEgitimDurumu.SelectedValue == "L")
            {
                ddlLiseAdi.Visible = true;
                lbLiseAdi.Visible = true;
                ddUniAdi.Visible = false;
                lbuniAdi.Visible = false;
            }
            else if (ddEgitimDurumu.SelectedValue == "U")
            {
                ddUniAdi.Visible = true;
                lbuniAdi.Visible = true;
                ddlLiseAdi.Visible = false;
                lbLiseAdi.Visible = false;
            }





        }

        protected void btnGonder_Click(object sender, EventArgs e)
        {
            DosyaEkleme();
            KayitEkleme();
            Cookie();
            Response.Cookies["MyCookieFile"]["kullaniciAdi"] = tbAdSoyad.Text;

        }

        protected void cbSiteKural_CheckedChanged(object sender, EventArgs e)
        {

            if (cbSiteKural.Checked)
                btnGonder.Enabled = true;
            else
                btnGonder.Enabled = false;


        }

        protected void cbDevamEdiyorum_CheckedChanged(object sender, EventArgs e)
        {

            if ((cbDevamEdiyorum.Checked))
            {
               
                rfvBitisTarih.Visible = false;

                if (tbBitisTarih.Text != "")
                    tbBitisTarih.Text = "";
            }
            else
            {
                rfvBitisTarih.Visible =true;
                
            }


        }

        protected void ddlUlke_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}