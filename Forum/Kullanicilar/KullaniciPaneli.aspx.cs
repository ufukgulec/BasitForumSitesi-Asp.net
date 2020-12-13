using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Kullanicilar
{
    public partial class KullaniciPaneli : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ad;
            if (Session["User"] != null)
            {
                ad = Session["User"].ToString();
                var kullanici = db.kullanicilars.FirstOrDefault(x => x.kullaniciAD == ad);
                int id = kullanici.id;
                var model = db.paylasimlars.Where(x => x.kullaniciID == id).ToList();
                Repeater.DataSource = model;
                Repeater.DataBind();
            }
            else
                Response.Redirect("../Login.aspx");


        }
    }
}