using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Paylasimlar
{
    public partial class paylasimDetay : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                id = int.Parse(Request.QueryString["postID"]);
                var model = db.paylasimlars.FirstOrDefault(x => x.id == id);
                detay();
            }
        }

        private void detay()
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
                          yazanID = k.id,
                          tarih = p.tarih,
                          konuID = p.konuID,
                          begeniSayisi=p.begeniSayisi
                      }
                      ).Where(x => x.postID == id).ToList();
            RepeaterDetay.DataSource = model;
            RepeaterDetay.DataBind();
        }
    }
}