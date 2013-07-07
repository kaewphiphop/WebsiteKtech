using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class marqueeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
            Label1.Text = "";
            string con=DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(con);
            connect.Open();
               

            //SQL Command
            string sql = "SELECT * FROM marquee ";
            MySqlCommand cmd = new MySqlCommand(sql, connect);
            MySqlDataReader read = null;
            read = cmd.ExecuteReader();
            while (read.Read())
            {
                Label1.Text=read.GetString(1) + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='../admin/adminshowmarquee.aspx?title="+read.GetString(1)+"'>อ่านต่อ...</a>  ";
                                                                                     
            }
            connect.Close();
           
        }
    }
}