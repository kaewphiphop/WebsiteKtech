using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

namespace WebsiteKtech.admin
{
    public partial class adminshow : System.Web.UI.Page
    {      
        private string lo = "";
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
                MySqlCommand com = new MySqlCommand("SELECT * from news where title='" + title + "'", connect);
                MySqlDataReader read = com.ExecuteReader();

                if (read.HasRows)// ถ้าไม่มีหัวข้อข่าวให้กลับไป adminnews.aspx
                {
                    if (read.Read())
                    {
                        Label1.Text = "<span id='indent'>" + read.GetString(2) + "</span>";
                      
                        string src = "../Pages/showpicture/" + read.GetString(3);
                        lo = "Pages/showpicture/" + read.GetString(3);
                        if (!src.Equals("../Pages/showpicture/"))
                        {

                            img.Src = src;
                            show.HRef = src;
                        }
                        else img.Visible = false;
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
            MySqlCommand com = new MySqlCommand("DELETE FROM news WHERE title='" + title + "'", connect);
            MySqlDataReader read = com.ExecuteReader();
            FileInfo myfileinf = new FileInfo(Server.MapPath(lo));
            try
            {
                myfileinf.Delete();
            }
            catch { }
            string scr = "<script>alert(\"Delete complete\");</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", scr, false);
            Response.Redirect("~/admin/adminnews.aspx");

        }
    }
}