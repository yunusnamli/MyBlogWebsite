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
    public partial class teknoloji1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Teknolojik_Haberler where ID=1", baglanti);
            DataTable teknolojik_haber1 = new DataTable();
            adaptor.Fill(teknolojik_haber1);
            teknolojik1.DataSource = teknolojik_haber1;
            teknolojik1.DataBind();
           baglanti.Close();



        }
    }
}