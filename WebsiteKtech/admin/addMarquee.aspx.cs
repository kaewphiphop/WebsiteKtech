using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class addMarquee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = "";
            string date = DateTime.Now.ToShortDateString().Split('/')[0] + DateTime.Now.ToShortDateString().Split('/')[1] + DateTime.Now.ToShortDateString().Split('/')[2];
            
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("insert into marquee values('','" + TextBox1.Text + "','" + detail.Value.ToString() + "')", connect);
            com.ExecuteNonQuery();
            TextBox1.Text = "";
            detail.Value = "";
            string scr = "<script>alert(\"Uploade complete\");</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", scr, false);
        }
    }
}