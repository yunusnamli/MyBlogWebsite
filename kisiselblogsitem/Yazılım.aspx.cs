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
    public partial class Yazılım : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

           

            baglanti.Open();
            SqlDataAdapter adaptor_1 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4 from Yazilim where id=1", baglanti);
            DataTable yazilimm = new DataTable();
            adaptor_1.Fill(yazilimm);
            yazilim.DataSource = yazilimm;
            yazilim.DataBind();


            SqlDataAdapter adaptor_2 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2 from Yazilim where id=2", baglanti);
            DataTable yazilimm1 = new DataTable();
            adaptor_2.Fill(yazilimm1);
            yazilim_1.DataSource = yazilimm1;
            yazilim_1.DataBind();


            SqlDataAdapter adaptor_3 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3 from Yazilim where id=3", baglanti);
            DataTable yazilimm2 = new DataTable();
            adaptor_3.Fill(yazilimm2);
            yazilim_2.DataSource = yazilimm2;
            yazilim_2.DataBind();

            SqlDataAdapter adaptor_4 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4 from Yazilim where id=4", baglanti);
            DataTable yazilimm3 = new DataTable();
            adaptor_4.Fill(yazilimm3);
            yazilim_3.DataSource = yazilimm3;
            yazilim_3.DataBind();

            SqlDataAdapter adaptor_5 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4,icerik5 from Yazilim where id=5", baglanti);
            DataTable yazilimm4 = new DataTable();
            adaptor_5.Fill(yazilimm4);
            yazilim_4.DataSource = yazilimm4;
            yazilim_4.DataBind();

            SqlDataAdapter adaptor_6 = new SqlDataAdapter("Select * from Yazilim where id=6", baglanti);
            DataTable yazilimm5 = new DataTable();
            adaptor_6.Fill(yazilimm5);
            yazilim_5.DataSource = yazilimm5;
            yazilim_5.DataBind();

            SqlDataAdapter adaptor_7 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4 from Yazilim where id=7", baglanti);
            DataTable yazilimm6 = new DataTable();
            adaptor_7.Fill(yazilimm6);
            yazilim_6.DataSource = yazilimm6;
            yazilim_6.DataBind();

            SqlDataAdapter adaptor_8 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4 from Yazilim where id=8", baglanti);
            DataTable yazilimm7 = new DataTable();
            adaptor_8.Fill(yazilimm7);
            yazilim_7.DataSource = yazilimm7;
            yazilim_7.DataBind();

            SqlDataAdapter adaptor_9 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3 from Yazilim where id=9", baglanti);
            DataTable yazilimm8 = new DataTable();
            adaptor_9.Fill(yazilimm8);
            yazilim_8.DataSource = yazilimm8;
            yazilim_8.DataBind();
            baglanti.Close();

        }
     
    }
}