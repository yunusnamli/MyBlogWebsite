using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace kisiselblogsitem
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SmtpClient ss = new SmtpClient("smtp.gmail.com", 587);
            ss.Timeout = 100000;
            ss.DeliveryMethod = SmtpDeliveryMethod.Network;
            ss.UseDefaultCredentials = false;
            ss.Credentials = new NetworkCredential("infoyunusnamli@gmail.com", "-Fener.1907-");

            MailMessage mm = new MailMessage("infoyunusnamli@gmail.com", TextBox3.Text);
            mm.IsBodyHtml = true;
            mm.Subject = "İletişim formundan 1 adet mesajınız var";
            mm.Body = "Gönderenin Adı Soyadı: " + TextBox1.Text + " " + "Gönderenin Mail Adresi: " + TextBox2.Text + Environment.NewLine + "Konu: " + TextBox4.Text + Environment.NewLine + "\t Mesaj: " + TextBox5.Text;
            if (FileUpload1.HasFile)
            {
                Attachment nesne = new Attachment(FileUpload1.FileContent, FileUpload1.FileName);
                mm.Attachments.Add(nesne);
            }
            ss.EnableSsl = true;
            mm.BodyEncoding = UTF8Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            ss.Send(mm);
            Label6.Text = "Mesajınız Başarıyla Gönderilmiştir.";

        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            FileUpload1.Visible = false;
            Label6.Text = "";
            Label8.Text = "Mesajınız Başarıyla Temizlenmiştir.";
        }
    }
}