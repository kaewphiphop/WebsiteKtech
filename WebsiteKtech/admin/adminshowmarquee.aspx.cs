using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class adminshowmarquee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
            try
            {
                string str = DB.dataConnect.connectStr;
                MySqlConnection connect = new MySqlConnection(str);
                connect.Open();
                string title = Request.QueryString["title"];
                Label1.Text = "<h3 style='color:#FA58F4;'>" + title + "</h3>";
                MySqlCommand com = new MySqlCommand("SELECT * from marquee where title='" + title + "'", connect);
                MySqlDataReader read = com.ExecuteReader();

                if (read.HasRows)// ถ้าไม่มีหัวข้อข่าวให้กลับไป adminnews.aspx
                {
                    if (read.Read())
                    {
                        Label1.Text = "<span id='indent'>" + read.GetString(2) + "</span>";

                    }

                }
                else
                {
                    Response.Redirect("~/admin/adminnews.aspx");
                }
            }
            catch { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = Request.QueryString["title"];
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("DELETE FROM marquee WHERE title='" + title + "'", connect);
            MySqlDataReader read = com.ExecuteReader();
            string scr = "<script>alert(\"Delete complete\");</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", scr, false);
            Response.Redirect("~/admin/adminnews.aspx");
        }
    }
}