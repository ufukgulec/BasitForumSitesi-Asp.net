using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Kullanicilar
{
    public partial class kullanici : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        int kid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                kid = int.Parse(Request.QueryString["kullaniciID"]);
                var model = db.kullanicilars.Where(x => x.id == kid).ToList();
                RepeaterKullanici.DataSource = model;
                RepeaterKullanici.DataBind();
                gönderi();
            }
        }

        private void gönderi()
        {
            var model = db.paylasimlars
                .Join(db.kullanicilars,
                      p => p.kullaniciID,
                      k => k.id,
                      (p, k) => new
                      {
                          postID = p.id,
                          paylasimBaslik = p.paylasimBaslik,
                          paylasimMetin = p.paylasimMetin,
                          kullaniciAD = k.kullaniciAD,
                          Eposta = k.Eposta,
                          kayitTarihi = k.kayitTarihi,
                          kullaniciID = p.kullaniciID,
                          tarih = p.tarih,
                          konuID = p.konuID,
                          begeniSayisi = p.begeniSayisi,
                          kullaniciSlogan = k.kullaniciSlogan,
                          resimYolu = k.resimYolu
                      }
                      ).Where(x => x.kullaniciID == kid).ToList();
            RepeaterPost.DataSource = model;
            RepeaterPost.DataBind();
        }
    }
}