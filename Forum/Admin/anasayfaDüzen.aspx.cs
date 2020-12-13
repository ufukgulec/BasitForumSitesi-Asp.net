using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class anasayfaDüzen : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.platforms.Find(1);
            lblBaslik.Text = model.platformAdi;
            lblSlogan.Text = model.slogan;
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            var model = db.platforms.Find(1);
            if (txtYeniBaslik.Text != "" && txtYeniSlogan.Text != "")
            {
                model.platformAdi = txtYeniBaslik.Text;
                model.slogan = txtYeniSlogan.Text;
            }
            else if (txtYeniBaslik.Text != "" && txtYeniSlogan.Text == "")
            {
                model.platformAdi = txtYeniBaslik.Text;
            }
            else if (txtYeniBaslik.Text == "" && txtYeniSlogan.Text != "")
            {
                model.slogan = txtYeniSlogan.Text;
            }
            db.SaveChanges();
            Response.Redirect("/Admin/Default.aspx");


        }
    }
}