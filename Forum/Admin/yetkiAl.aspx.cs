using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class yetkiAl : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        int adminlik = 2;
        int yetkisiz = 3;
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater.DataSource = db.kullanicilars.Where(x => x.yetkiID == adminlik).ToList();
            Repeater.DataBind();
            if (!IsPostBack)
            {
                var model = db.kullanicilars.Where(x => x.yetkiID == adminlik).ToList();
                DropDownList.DataSource = model;
                DropDownList.DataValueField = "id";
                DropDownList.DataTextField = "kullaniciAD";
                DropDownList.DataBind();
            }
        }

        protected void btnyetki_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int id = int.Parse(DropDownList.SelectedItem.Value);
                var model = db.kullanicilars.FirstOrDefault(x => x.id == id);
                model.yetkiID = yetkisiz;
                db.SaveChanges();
                Response.Redirect("/Admin/Default.aspx");
            }
        }
    }
}
