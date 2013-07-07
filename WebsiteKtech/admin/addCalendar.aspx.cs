using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class addCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = "";
            string date = DateTime.Now.ToShortDateString().Split('/')[0] + DateTime.Now.ToShortDateString().Split('/')[1] + DateTime.Now.ToShortDateString().Split('/')[2];
            if (this.FileUpload1.HasFile)
            {
                name = TextBox1.Text.ToString().Split(' ')[0] + date + "." + FileUpload1.FileName.Split('.')[1];
                this.FileUpload1.SaveAs(Server.MapPath("~/Pages/PDF/calendar" + name));
                DB.dataConnect.insertDownload(FileUpload1.FileName.ToString()+","+TextBox1.Text+",calendar");
            }
           
            TextBox1.Text = "";
            string scr = "<script>alert(\"Uploade complete\");</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", scr, false);
        }
    }
}