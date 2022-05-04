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
    public partial class teknoloji4 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           

            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Teknolojik_Haberler where ID=4", baglanti);
            DataTable teknolojik_haber4 = new DataTable();
            adaptor.Fill(teknolojik_haber4);
            teknolojik4.DataSource = teknolojik_haber4;
            teknolojik4.DataBind();
            baglanti.Close();
        }
    }
}