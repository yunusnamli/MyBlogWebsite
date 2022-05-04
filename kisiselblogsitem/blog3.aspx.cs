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
    public partial class blog3 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter adaptor = new SqlDataAdapter("Select * from Blog_Içerikleri where ID=3", baglanti);
            DataTable blog = new DataTable();
            adaptor.Fill(blog);
            blog_3.DataSource = blog;
            blog_3.DataBind();
            baglanti.Close();
        }
    }
}