using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();

            MySqlCommand com = new MySqlCommand("SELECT * from news", connect);
            MySqlDataReader read = com.ExecuteReader();
            
            
            while (read.Read())
            {

                string result = Label1.Text + "" + read.GetString(1) + "<a href='../Pages/shownews.aspx?title=" + read.GetString(1) + "'</a>&nbsp;&nbsp;&nbsp;อ่านต่อ...</a>";
                Label1.Text = result+"<br/>";
            }

            com = new MySqlCommand("SELECT * from marquee", connect);
            connect.Close();
            connect.Open();
            MySqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {

                string result = lblMarquee.Text + "" + rd.GetString(1) + "<a href='../Pages/showDetail.aspx?title=" + rd.GetString(1) + "'</a>&nbsp;&nbsp;&nbsp;อ่านต่อ...&nbsp;&nbsp;&nbsp;</a>";
                
            }

            
        }
        

       
    }
}