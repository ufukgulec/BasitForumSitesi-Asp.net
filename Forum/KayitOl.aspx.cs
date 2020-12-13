using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform
{
    public partial class KayitOl : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayıt_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != null && txtEposta.Text != null && txtSifre.Text != null && txtSlogan.Text != null && txtUrl.Text != null)
            {
                if (kontrol(txtAd.Text))
                {
                    var kullanici = new kullanicilar
                    {
                        kullaniciAD = txtAd.Text,
                        kullaniciParola = txtSifre.Text,
                        Eposta = txtEposta.Text,
                        resimYolu = txtUrl.Text,
                        kullaniciSlogan = txtSlogan.Text,
                        kayitTarihi = DateTime.Now,
                        yetkiID = 3
                    };
                    db.kullanicilars.Add(kullanici);
                    db.SaveChanges();
                    Response.Redirect("Login.aspx");

                }
                else
                    Response.Write("Bu kullanıcı adını alamazsınız....");
            }


        }

        private bool kontrol(string text)
        {
            var model = db.kullanicilars.FirstOrDefault(x => x.kullaniciAD == text);
            if (model == null)
            {
                return true;
            }
            else
                return false;
        }
    }
}