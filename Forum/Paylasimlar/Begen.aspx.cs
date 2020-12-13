using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Paylasimlar
{
    public partial class Begen : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["postID"]);
            var model = db.paylasimlars.FirstOrDefault(x => x.id == id);
            model.begeniSayisi++;
            db.SaveChanges();
            Response.Redirect("/Paylasimlar/paylasimDetay.aspx?postID=" + id);
        }
    }
}