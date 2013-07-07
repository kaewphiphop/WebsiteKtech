using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WebsiteKtech.admin
{
    public partial class vipAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
            Label1.Text = "";
            ArrayList data = DB.dataConnect.select_donwnload("vip");
            for (int i = 0; i < data.Count; i++)
            {
                Label1.Text += "<tr><div class=\"span12\"><td><div class=\" span1 pdfimg\"></div></td><div class=\"span8 download\"><td><a href=\"../Pages/PDF/vip/" + data[i].ToString().Split(',')[0] + "\">" + data[i].ToString().Split(',')[1] + "</a></td><td> <a class=\" btn btn-danger \" href=\"../admin/deleteVip.aspx?title=" + data[i].ToString().Split(',')[1] + "\"> Delete</a></td></div></div></tr>";
            }
        }
    }
}