using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace İnternet_Programcılığı_Proje
{
    public partial class BasvurucuSonuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Id"] = Request.QueryString["Id"];
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                try
                {

                    //SQL statement hazırlığı
                    string checkuser = "SELECT * FROM Basvuru where Id='" + ViewState["Id"] + "'";

                    SqlCommand cmd = new SqlCommand(checkuser, conn);
                    //Execution
                    SqlDataReader dataReader = cmd.ExecuteReader();

                    if (dataReader.Read())
                    {
                        txAdSoyad.Text = dataReader.GetValue(1).ToString();
                        txUyruk.Text = dataReader.GetValue(3).ToString();
                        txDogumTarih.Text = dataReader.GetValue(4).ToString();
                        txSehir.Text = dataReader.GetValue(5).ToString();
                        txEmail.Text = dataReader.GetValue(6).ToString();
                        txTelefon.Text = dataReader.GetValue(7).ToString();
                        txAciklama.Text = dataReader.GetValue(8).ToString();                
                        txEgitimbasTarih.Text = dataReader.GetValue(10).ToString();
                        txegitimbitTarih.Text = dataReader.GetValue(11).ToString();
                        txLiseAdi.Text = dataReader.GetValue(13).ToString();
                        txUniAdi.Text = dataReader.GetValue(14).ToString();
                        txOzgecmis.Text = dataReader.GetValue(15).ToString();
                        txBasvuruSonuc.Text = dataReader.GetValue(16).ToString();

                    }
                    dataReader.Close();
                    cmd.Dispose();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }

            }
        }
        protected void btnDegerlendirmeTamamlandı_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection
                (ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string updateQuery = "UPDATE Basvuru SET AdSoyad=@AdSoyad,Cinsiyet=@Cinsiyet,UyrukId=@UyrukId,DogumTarihi=@DogumTarihi,Email=@Email,Telefon=@Tel,EgitimDurumu=@EgitimDurum,BasvuruSonucu=@BasvuruSonuc where Id=@Id";
                SqlCommand cmd2 = new SqlCommand(updateQuery, conn);
                cmd2.Parameters.AddWithValue("@AdSoyad", txAdSoyad.Text);
                cmd2.Parameters.AddWithValue("@Cinsiyet", txCinsiyet.Text);
                cmd2.Parameters.AddWithValue("@UyrukId", txUyruk.Text);
                cmd2.Parameters.AddWithValue("@DogumTarihi", txDogumTarih.Text);
                cmd2.Parameters.AddWithValue("@Email", txEmail.Text);
                cmd2.Parameters.AddWithValue("@Tel", txTelefon.Text);
                cmd2.Parameters.AddWithValue("@EgitimDurum", txEgitimdurumu.Text);
                cmd2.Parameters.AddWithValue("@BasvuruSonuc", rbldegerlendirme.SelectedValue);
                cmd2.Parameters.AddWithValue("@Id", ViewState["Id"]);
                cmd2.ExecuteNonQuery();
                Response.Write("Başvuru veritabanında güncellendi.");

                conn.Close();

                Response.Redirect("BasvuruDegerlendirme.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}


    




