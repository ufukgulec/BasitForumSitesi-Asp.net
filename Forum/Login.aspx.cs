using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform
{
    public partial class Login : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            var model = db.kullanicilars.FirstOrDefault(x => x.kullaniciAD == txtAd.Text && x.kullaniciParola == txtSifre.Text);
            if (model != null)
            {
                if (model.yetkiID == 1 || model.yetkiID == 2)
                {
                    Session["Admin"] = model.kullaniciAD.ToString();
                    Session["User"] = model.kullaniciAD;
                    Response.Redirect("/Admin/Default.aspx?adminID=" + model.id);
                }
                else if (model.yetkiID == 3)
                {
                    Session["User"] = model.kullaniciAD;
                    Response.Redirect("/Kullanicilar/KullaniciPaneli.aspx?userID=" + model.id);
                }
                Session.Timeout = 30;
            }
            else if (model == null)
            {
                Response.Write("Hatalı giriş...");
            }
        }
    }
}