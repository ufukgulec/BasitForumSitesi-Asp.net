using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Kullanicilar
{
    public partial class yeniPost : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var model = db.konulars.ToList();
                DropDownList.DataSource = model;
                DropDownList.DataValueField = "id";
                DropDownList.DataTextField = "konuAD";
                DropDownList.DataBind();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string ad = Session["User"].ToString();
            var model = db.kullanicilars.FirstOrDefault(x => x.kullaniciAD == ad);
            int id = model.id;

            if (IsPostBack)
            {
                var post = new paylasimlar
                {
                    paylasimBaslik = txtBaslik.Text,
                    paylasimMetin = txtMetin.Text,
                    konuID = int.Parse(DropDownList.SelectedItem.Value),
                    kullaniciID = id,
                };
                db.paylasimlars.Add(post);
                db.SaveChanges();
                Response.Redirect("/Kullanicilar/KullaniciPaneli.aspx");
            }
        }
    }
}