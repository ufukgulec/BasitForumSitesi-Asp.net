using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class sifreDegistir : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string ad = Session["Admin"].ToString();
                var model = db.kullanicilars.FirstOrDefault(x => x.kullaniciAD == ad);
                model.kullaniciParola = TextBox1.Text;
                db.SaveChanges();
            }
            else
                Button1.Text = "Şifre Giriniz";
        }
    }
}