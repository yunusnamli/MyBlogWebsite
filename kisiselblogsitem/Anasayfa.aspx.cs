using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kisiselblogsitem
{
    public partial class Anasayfaa : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Teknolojik_Bilgileri_Getir();

            object kullanici = Session["kullaniciadi"];
            if(kullanici!= null )
            {
                uye_yorumlari_panel.Visible = true;
                gerekli.Visible = false;
                panel_giris.Visible = false;
                panel_kullanici.Visible = true;
                lblkullaniciadi.Text = kullanici.ToString();
                uye_yorum_adi.Text = kullanici.ToString();

            }
            else
            {
                uye_yorumlari_panel.Visible = false;
                gerekli.Visible = true;
                panel_kullanici.Visible = false;
                panel_giris.Visible = true;

            }

            

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Ana_Sayfa order by eklenme_tarihi desc", baglanti);
            DataTable teknolojik_haber = new DataTable();
            adaptor.Fill(teknolojik_haber);
            icerik.DataSource = teknolojik_haber;
            icerik.DataBind();
            baglanti.Close();

            baglanti.Open();
            SqlDataAdapter yorum_adaptor = new SqlDataAdapter("Select * from Yorum order by ID desc", baglanti);
            DataTable kullanici_yorumlari = new DataTable();
            yorum_adaptor.Fill(kullanici_yorumlari);
            yorum.DataSource = kullanici_yorumlari;
            yorum.DataBind();
            baglanti.Close();


        }
        private void Teknolojik_Bilgileri_Getir()
        {
            
            baglanti.Open();
            SqlDataAdapter adapt = new SqlDataAdapter("Select * from Teknolojik_Bilgiler order by Tarih desc", baglanti);
            DataTable teknolojik_bilgi = new DataTable();
            adapt.Fill(teknolojik_bilgi);
            teknolojik_bilgiler.DataSource = teknolojik_bilgi;
            teknolojik_bilgiler.DataBind();
            baglanti.Close();
            
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            
            string sorgu = "Select * From Kullanici_Kayit Where Kullanici_Adi=@kullaniciadi and Kullanici_Sifre =@sifre";

            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@kullaniciadi", txtKullaniciAdi.Text);
            komut.Parameters.AddWithValue("@sifre", txtSifre.Text);

            baglanti.Open();

            SqlDataReader oku = komut.ExecuteReader();

            if (oku.Read())
            {
                Session.Timeout = 400;
                Session.Add("kullaniciadi", oku["Kullanici_Adi"].ToString());
                Session.Add("kullanici_rolu", oku["Kullanici_Rolu"].ToString());
                Response.Redirect(Request.RawUrl);
            }

            else
            {
                Response.Write("<script>alert('Kullanıcı adı ya da şifre yanlış');</script>");
                //lblcikti.Text = "Kullanıcı adı ya da şifre yanlış girilmiştir.";
                txtKullaniciAdi.Text = "";
                txtSifre.Text = "";
            }

            baglanti.Close();

        }

        protected void btnkayit_Click(object sender, EventArgs e)
        {

       

        }
        protected void btncikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }

        protected void yorum_yap_Click(object sender, EventArgs e)
        {
            string uye_isim = uye_yorum_adi.Text;
            string uye_yorumu = uye_yorum.Text;

            if (uye_yorum.Text != "")
            {
              

                string sorgum = "Insert into Yorum (kullanici_adi,yorum) Values (@kullanici_adi, @yorum)";

                SqlCommand komut = new SqlCommand(sorgum, baglanti);
                baglanti.Open();

                try
                {
                    komut.Parameters.AddWithValue("@kullanici_adi", uye_yorum_adi.Text);
                    komut.Parameters.AddWithValue("@yorum", uye_yorum.Text);

                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    Session.Add("kullanici_adi", uye_yorum_adi.Text);
                    Session.Add("yorum", uye_yorum.Text);

                   
                    Response.Redirect("Anasayfa.aspx");
                  

                }
                catch (Exception)
                {

                    Response.Write("<script>alert('Yorum Yapma Başarısız!')</script>");
                   
                }
            }
            else
            {
                Response.Write("<script>alert('Yorum yap alanını doldurmanız gerekmektedir.')</script>");
                
            }
            baglanti.Close();
        }
    }
}