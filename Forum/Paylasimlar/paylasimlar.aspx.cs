using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Paylasimlar
{
    public partial class paylasimlar : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                id = int.Parse(Request.QueryString["ID"]);
                var model = db.konulars.FirstOrDefault(x => x.id == id);
                konuBaslik.Text = model.konuAD + " paylaşımları";
                paylasim();
            }
        }

        private void paylasim()
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
                          yazanID = k.id,
                          tarih = p.tarih,
                          konuID = p.konuID

                      }
                      ).Where(x => x.konuID == id).OrderByDescending(x => x.postID).ToList();
            RepeaterPost.DataSource = model;
            RepeaterPost.DataBind();
        }
    }
}