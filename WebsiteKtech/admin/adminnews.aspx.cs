using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class adminnews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");

            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("SELECT * from news", connect);
            MySqlDataReader read = com.ExecuteReader();
            while (read.Read())
            {

                string result = Label1.Text + "<a href='../admin/adminshownews.aspx?title=" + read.GetString(1) + "'</a>" + read.GetString(1);
                Label1.Text = result + "<br/>";
            }
            connect.Close();
        }
    }
}