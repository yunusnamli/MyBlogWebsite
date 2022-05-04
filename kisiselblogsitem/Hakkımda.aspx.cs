using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kisiselblogsitem
{
    public partial class Hakkımda : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            string sorgu = "Select * from Hakkimda";
            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            baglanti.Open();
            SqlDataReader oku = komut.ExecuteReader();
            repeater_hakkimda.DataSource = oku;
            repeater_hakkimda.DataBind();
            baglanti.Close();
        }
    }
}