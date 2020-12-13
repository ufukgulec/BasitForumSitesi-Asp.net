using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Models
{
    public partial class Site : System.Web.UI.MasterPage
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.konulars.ToList();
            Repeater1.DataSource = model;
            Repeater1.DataBind();
            var model1 = db.platforms.Find(1);
            LabelBaslik.Text = model1.platformAdi;
        }
    }
}