using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace kisiselblogsitem
{
    public partial class Sifremi_Unuttum : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        SqlCommand komut;
        SqlDataReader oku;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lbl_sifre.Visible = false;


        }

        protected void kullanici_sorusu_Click(object sender, EventArgs e)
        {
            lbl_kullanici_sifre.Text = "";
            kullanici_sifree.Text = "";

            baglanti.Open();
            komut = new SqlCommand("Select Hatirlatma_Sorusu from Kullanici_Kayit where Kullanici_Adi = @kullanici_adi", baglanti);
            komut.Parameters.AddWithValue("@kullanici_adi", textbox_kullanici_adi.Text);
           oku= komut.ExecuteReader();

            if (oku.Read())
            {
                hatirlatma_sorusu.Text = oku[0].ToString();
            }
            else
            {
                textbox_kullanici_adi.Text = "";
                hatirlatma_sorusu.Text = "";
                Response.Write("<script>alert('Kullanıcı adını yanlış girdiniz.');</script>");
            }
            baglanti.Close();
        }

        protected void kullanici_cevabi_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            komut = new SqlCommand("Select Kullanici_Sifre from Kullanici_Kayit where Kullanici_Adi = @kullanici_adi and Cevap =@kullanici_cevap ", baglanti);
            komut.Parameters.AddWithValue("@kullanici_adi", textbox_kullanici_adi.Text);
            komut.Parameters.AddWithValue("@kullanici_cevap",kullanici_sifree.Text);
            oku = komut.ExecuteReader();

            if (oku.Read())
            {
                lbl_sifre.Visible = true;
                lbl_kullanici_sifre.Text = oku[0].ToString();
            }
            else
            {
                kullanici_sifree.Text = "";
                Response.Write("<script>alert('Yanlış cevap verdiniz.');</script>");
            }

            baglanti.Close();

        }
    }
}