using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class konuEkle : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.konulars.ToList();
            RepeaterKonu.DataSource = model;
            RepeaterKonu.DataBind();
        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            if (txtkonu.Text != null)
            {
                konular konu = new konular
                {
                    konuAD = txtkonu.Text
                };
                db.konulars.Add(konu);
                db.SaveChanges();
                Response.Redirect("Default.aspx");
            }

        }
    }
}