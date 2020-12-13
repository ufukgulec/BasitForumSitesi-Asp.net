using platform.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace platform.Admin
{
    public partial class kullanicilar : System.Web.UI.Page
    {
        myWebsiteEntities db = new myWebsiteEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var model = db.kullanicilars
                .Join(db.yetkis,
                      k => k.yetkiID,
                      y => y.id,
                      (k, y) => new
                      {
                          kid = k.id,
                          kullaniciAD = k.kullaniciAD,
                          yid = y.id,
                          yetkiAd = y.yetki1
                      }
                      ).ToList();
            
        }
    }
}