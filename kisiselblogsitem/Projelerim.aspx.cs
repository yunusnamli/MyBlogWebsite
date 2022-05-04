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
    public partial class Projelerim : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select proje_resimlerim from Proje_Resimleri ", baglanti);
            DataTable resim = new DataTable();
            adaptor.Fill(resim);
            slide_resim.DataSource = resim;
            slide_resim.DataBind();
            baglanti.Close();

            baglanti.Open();
            SqlDataAdapter adaptor1 = new SqlDataAdapter("Select * from Proje_Yazilari ", baglanti);
            DataTable yazi = new DataTable();
            adaptor1.Fill(yazi);
            proje_yazi.DataSource = yazi;
            proje_yazi.DataBind();
            baglanti.Close();
        }
    }
}