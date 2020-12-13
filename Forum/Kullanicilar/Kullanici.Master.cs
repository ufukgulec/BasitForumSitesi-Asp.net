using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Kullanicilar
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null && Session["Admin"] == null)
            {
                Response.Redirect("/Default.aspx");
            }
            else
            {
                girisYapan.Text = Session["User"].ToString();
                //id = int.Parse(Request.QueryString["adminID"]);
                //var model = db.kullanicilars.FirstOrDefault(x => x.id == id);
                //girisYapan.Text = model.kullaniciAD;
            }
        }
    }
}