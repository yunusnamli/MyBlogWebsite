using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace kisiselblogsitem
{
    public partial class Anasayfa1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection baglanti = new SqlConnection("Data Source=.;Initial Catalog=blogveritabani;Integrated Security=True");
            baglanti.Open();

            SqlDataAdapter adapt = new SqlDataAdapter("select * from Alt_Bilgiler",baglanti);
            DataTable altbilgi = new DataTable();
            adapt.Fill(altbilgi);
            alt_bilgi.DataSource = altbilgi;
            alt_bilgi.DataBind();

            SqlDataAdapter adaptor = new SqlDataAdapter("select * from Footer_Linkler_Resimler", baglanti);
            DataTable footerr = new DataTable();
            adaptor.Fill(footerr);
            footer.DataSource = footerr;
            footer.DataBind();


        }

    }
}