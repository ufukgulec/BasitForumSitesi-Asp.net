using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class hakkimizdaDüzen : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.platforms.Find(1);
            lblhakkimizda.Text = model.hakkinda;
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            var model = db.platforms.Find(1);
            if (txtYeniHakkimizda.Text != "")
            {
                model.hakkinda = txtYeniHakkimizda.Text;
                db.SaveChanges();
                Response.Redirect("/Admin/Default.aspx");
            }
        }
    }
}