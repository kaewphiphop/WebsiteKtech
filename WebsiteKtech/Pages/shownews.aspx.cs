using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.Pages
{
    public partial class shownews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            string title = Request.QueryString["title"];
            LabelTiTle.Text = "<h3 style='color:#FA58F4;'>" + title + "</h3>";
           MySqlCommand com = new MySqlCommand("SELECT * from news where title='"+title+"'", connect);
           MySqlDataReader read = com.ExecuteReader();
            if (read.Read())
            {
                LabelNews.Text = "<p id='indent'>"+read.GetString(2)+"</p>";
                string src = "../Pages/showpicture/" + read.GetString(3);
                if (src != "")
                {
                    img.Src = src;
                    show.HRef = src;
                }
                if (src == "../Pages/showpicture/")
                {
                    img.Visible = false;
                }
              
                
            }
            
        }
    }
}