using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            using (myWebsiteEntities db = new myWebsiteEntities())
            {
                var model = db.platforms.Find(1);
                lblSitebaslik.Text = model.platformAdi;
                lblslogan.Text = model.slogan;
                var model1 = db.paylasimlars
                .Join(db.kullanicilars,
                      p => p.kullaniciID,
                      k => k.id,
                      (p, k) => new
                      {
                          postID = p.id,
                          paylasimBaslik = p.paylasimBaslik,
                          paylasimMetin = p.paylasimMetin,
                          kullaniciAD = k.kullaniciAD,
                          yazanID = k.id,
                          tarih = p.tarih,
                          begeniSayisi = p.begeniSayisi,
                          konuID = p.konuID

                      }
                      ).OrderByDescending(x => x.begeniSayisi).Take(5).ToList();
                RepeaterPost.DataSource = model1;
                RepeaterPost.DataBind();
            }
        }
    }
}