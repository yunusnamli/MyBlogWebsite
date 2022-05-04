using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.ComponentModel;

namespace kisiselblogsitem
{
    public partial class Yazar_Blog_İcerikleri_aspx : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            kullanici_adi.Visible = true;
            yazar_blog_paylasma_tarihi.Visible = false;
            


            object kullanici = Session["kullaniciadi"];
            object kullanici_roluu = Session["kullanici_rolu"];

            kullanici_adi.Text = kullanici.ToString();
            kulanici_roll.Text = kullanici_roluu.ToString();
            kulanici_roll.Visible = true;


            if (kulanici_roll.Text == "Standart Üye")
            {

                kullanici_uyari.Text = "Rolünüz 'standart üye' olduğundan dolayı blog yazamazsınız. Burada sadece yazarların yazmış olduğu blogları inceleyebilirsiniz.";
                yazar_blog_ekleme_paneli.Visible = false;


            }
            else
            {

                yazar_blog_ekleme_paneli.Visible = true;
                kullanici_uyari.Visible = false;
            }


        }

        protected void blog_paylas_Click(object sender, EventArgs e)
        {

            yazar_blog_paylasma_tarihi.Text = DateTime.Today.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();

            DateTime tarih = DateTime.Now;

            if (konu.Text != "" && uye_blog_paylas.Text != "")
            {
               

                baglanti.Open();

                SqlCommand komut = new SqlCommand("Insert into Blog_Yazar_Icerikleri (Kullanici_Adi, Blog_Konusu, Blog_Icerigi, yayinlama_tarihi) values ('" + kullanici_adi.Text + "', '" + konu.Text + "', '" + uye_blog_paylas.Text + "', '" + yazar_blog_paylasma_tarihi.Text + "' )", baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("Yazar_Blog_İcerikleri.aspx");
            }
            else
            {
                Response.Write("<script>alert('Boş alanları doldurmadan blog yazınızı paylaşamazsınız.');</script>");
            }
           


        }

        protected void blog_yazar_konusu_ara_Click(object sender, EventArgs e)
        {
            

            baglanti.Open();
            DataTable bloglar = new DataTable();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Blog_Yazar_Icerikleri where Blog_Konusu like '" + blog_konulari.SelectedItem.Text + "' order by ID desc ", baglanti);           
            adaptor.Fill(bloglar);
            
            yazar_konu_icerikleri.DataSource = bloglar;
            yazar_konu_icerikleri.DataBind();
            baglanti.Close();


        }
    }
}