using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace kisiselblogsitem
{
    public partial class uyekayit : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buton_kayit(object sender, EventArgs e)
        {
            string kullanici_adi = TextBox_kAdi.Text;
            string kullanici_sifre = TextBox_sifre.Text;
            string kullanici_telefon = TextBox_telefon.Text;
            string kullanici_eposta = TextBox_eposta.Text;
            string kullanici_hatirlatma_sorusu = hatirlatma.SelectedItem.Text;
            string kullanici_cevap = TextBox_cevap.Text;
            string  kullanici_rolu = uye_rol.SelectedItem.Text;            
            if (kullanici_adi.Contains(" ") ==true | kullanici_sifre.Contains(" ")==true | kullanici_telefon.Contains(" ")== true | kullanici_eposta.Contains(" ")==true )
            {

                Response.Write("<script>alert('Girilen bilgiler içerisinde boşluk bırakılamaz.')</script>");
           
            }
            else
            {
                if(TextBox_kAdi.Text != "" && TextBox_sifre.Text != "" && uye_rol.SelectedItem.Text != "" && TextBox_telefon.Text != "" && TextBox_eposta.Text != "" && hatirlatma.SelectedItem.Text!="" && TextBox_cevap.Text !="") 
                {
                   

                    string sorgu = "insert into Kullanici_Kayit (Kullanici_Adi,Kullanici_Sifre,Kullanici_Eposta,Kullanici_Telefon, Hatirlatma_Sorusu,Cevap,Kullanici_Rolu) Values(@kullanci_adi,@kullanci_sifre,@kullanici_telefon,@kullanici_eposta,@hatirlatma_sorusu,@cevap,@kullanici_rolu)";

                    SqlCommand komut = new SqlCommand(sorgu, baglanti);
                    baglanti.Open();

                    try
                    {
                        komut.Parameters.AddWithValue("@kullanci_adi", TextBox_kAdi.Text);
                        komut.Parameters.AddWithValue("@kullanci_sifre", TextBox_sifre.Text);
                        komut.Parameters.AddWithValue("@kullanici_telefon",TextBox_telefon.Text);
                        komut.Parameters.AddWithValue("@kullanici_eposta", TextBox_eposta.Text);
                        komut.Parameters.AddWithValue("@hatirlatma_sorusu", hatirlatma.SelectedItem.Text);
                        komut.Parameters.AddWithValue("@cevap", TextBox_cevap.Text);
                        komut.Parameters.AddWithValue("@kullanici_rolu",uye_rol.SelectedItem.Text);
                        komut.ExecuteNonQuery();
                        baglanti.Close();

                        Response.Write("<script>alert('Tebrikler başarıyla kayıt oldunuz.Ana sayfaya dönüp giriş yapınız')</script>");           

                        TextBox_kAdi.Text = "";
                        TextBox_sifre.Text = "";
                        TextBox_eposta.Text = "";
                        TextBox_telefon.Text = "";
                        hatirlatma.SelectedItem.Text = "";
                        TextBox_cevap.Text = "";
                        uye_rol.SelectedItem.Text = "";

                        Session.Add("kullanci_adi", TextBox_kAdi.Text);
                        Session.Add("kullanci_sifre", TextBox_sifre.Text);
                        Session.Add("kullanici_rolu", uye_rol.SelectedItem.Text);
                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('Kayıt olma başarısız.Kullanıcı adınız kullanılıyor.')</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Lütfen boş alanları doldurunuz')</script>");
                    
                }
                baglanti.Close();
            }

        }
    }
}