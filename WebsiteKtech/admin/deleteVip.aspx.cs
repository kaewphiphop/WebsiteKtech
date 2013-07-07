using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteKtech.admin
{
    public partial class deleteVip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
            string title = Request.QueryString["title"];
            DB.dataConnect.deleteDownload(title);
            Response.Redirect("~/admin/HomeAdmin.aspx");
        }
    }
}