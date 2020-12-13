using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (myWebsiteEntities db = new myWebsiteEntities())
            {
                var model = db.platforms.Find(1);
                lblHakkimizda.Text = model.hakkinda;

            }
        }
    }
}