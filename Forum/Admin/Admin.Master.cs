using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{

    public partial class Admin : System.Web.UI.MasterPage
    {

        myWebsiteEntities db = new myWebsiteEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["adminID"]);
            if (Session["Admin"] == null && Session["User"] == null)
            {
                Response.Redirect("/Default.aspx");
            }
            else
            {
                girisYapan.Text = Session["Admin"].ToString();

                //id = int.Parse(Request.QueryString["adminID"]);
                //var model = db.kullanicilars.FirstOrDefault(x => x.id == id);
                //girisYapan.Text = model.kullaniciAD;
            }
        }
    }
}