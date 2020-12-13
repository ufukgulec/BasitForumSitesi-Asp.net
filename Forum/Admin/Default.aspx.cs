using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.platforms.Find(1);
            lblSiteAd.Text = model.platformAdi.ToString();
            lblSlogan.Text = model.slogan.ToString();
            lblKullaniciSayisi.Text = db.kullanicilars.Count().ToString();
            lblPostSayisi.Text = db.paylasimlars.Count().ToString();
        }
    }
}