using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Kullanicilar
{
    public partial class postDüzenle : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["postID"]);
            var model = db.paylasimlars.FirstOrDefault(x => x.id == id);
            lblBaslik.Text = model.paylasimBaslik;
            lblIcerik.Text = model.paylasimMetin;

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            var model = db.paylasimlars.FirstOrDefault(x => x.id == id);
            if (txtBaslik.Text != "" && txtIcerik.Text != "")
            {
                model.paylasimBaslik = txtBaslik.Text;
                model.paylasimMetin = txtIcerik.Text;
            }
            else if (txtBaslik.Text != "" && txtIcerik.Text == "")
            {
                model.paylasimBaslik = txtBaslik.Text;
            }
            else if (txtBaslik.Text == "" && txtIcerik.Text != "")
            {
                model.paylasimMetin = txtIcerik.Text;
            }
            db.SaveChanges();
            Response.Redirect("/Kullanicilar/KullaniciPaneli.aspx");

        }
    }
}