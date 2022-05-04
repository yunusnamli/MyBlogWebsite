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
    public partial class Yazar_Bloglari : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Blog_Yazilari order by blog_eklenme_tarihi desc", baglanti);
            DataTable blog_yazilari = new DataTable();
            adaptor.Fill(blog_yazilari);
            bloglar.DataSource = blog_yazilari;
            bloglar.DataBind();
            baglanti.Close();
            

            object kullanici = Session["kullaniciadi"];
            if (kullanici != null)
            {
                icerik_ekle_gözat.Visible = true;
                uyari.Visible = false;
            }
            else
            {
                icerik_ekle_gözat.Visible = false;
                uyari.Visible = true;
                kullanici_uyari.Text = "Rolünüz 'yazar' olmadığından dolayı blog paylaşamazsınız.!";
            }
        }
    }
}