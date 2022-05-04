using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace kisiselblogsitem
{
    public partial class Iletisim : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2 from Veri_Madenciligi where id=1", baglanti);
            DataTable veri = new DataTable();
            adaptor.Fill(veri);
            veri_madenciligi.DataSource = veri;
            veri_madenciligi.DataBind();
            

            SqlDataAdapter adaptor1 = new SqlDataAdapter("Select baslik,resim,icerik1 from Veri_Madenciligi where id=2", baglanti);
            DataTable veri1 = new DataTable();
            adaptor1.Fill(veri1);
            veri_madenciligi1.DataSource = veri1;
            veri_madenciligi1.DataBind();

            SqlDataAdapter adaptor2 = new SqlDataAdapter("Select baslik,icerik1 from Veri_Madenciligi where id=3", baglanti);
            DataTable veri2 = new DataTable();
            adaptor2.Fill(veri2);
            veri_madenciligi2.DataSource = veri2;
            veri_madenciligi2.DataBind();

            SqlDataAdapter adaptor3 = new SqlDataAdapter("Select baslik,resim,icerik1,icerik2,icerik3,icerik4,icerik5,icerik6,icerik7,icerik8,icerik9 from Veri_Madenciligi where id=4", baglanti);
            DataTable veri3 = new DataTable();
            adaptor3.Fill(veri3);
            veri_madenciligi3.DataSource = veri3;
            veri_madenciligi3.DataBind();

            SqlDataAdapter adaptor4 = new SqlDataAdapter("Select baslik,resim,icerik1 from Veri_Madenciligi where id=5", baglanti);
            DataTable veri4 = new DataTable();
            adaptor4.Fill(veri4);
            veri_madenciligi4.DataSource = veri4;
            veri_madenciligi4.DataBind();

            SqlDataAdapter adaptor5 = new SqlDataAdapter("Select baslik,resim,icerik1 from Veri_Madenciligi where id=6", baglanti);
            DataTable veri5 = new DataTable();
            adaptor5.Fill(veri5);
            veri_madenciligi5.DataSource = veri5;
            veri_madenciligi5.DataBind();
            baglanti.Close();
        }
      
    
    }
}