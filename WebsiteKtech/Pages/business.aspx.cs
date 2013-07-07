using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace WebsiteKtech.Pages
{
    public partial class business : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            ArrayList data = DB.dataConnect.select_donwnload("business");
            for (int i = 0; i < data.Count; i++)
            {
                Label1.Text += "<tr><div class=\"span12\"><td><div class=\" span1 pdfimg\"></div></td><td><div class=\"span8 download\"><a href=\"../Pages/PDF/business/" + data[i].ToString().Split(',')[0] + "\">" + data[i].ToString().Split(',')[1] + "</a></div></td></div></tr>";
            }
        }
    }
}