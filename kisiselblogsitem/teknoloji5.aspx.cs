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
    public partial class teknoloji5 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

           

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Teknolojik_Haberler where ID=5", baglanti);
            DataTable teknolojik_haber5 = new DataTable();
            adaptor.Fill(teknolojik_haber5);
            teknolojik5.DataSource = teknolojik_haber5;
            teknolojik5.DataBind();
            baglanti.Close();

        }
    }
}