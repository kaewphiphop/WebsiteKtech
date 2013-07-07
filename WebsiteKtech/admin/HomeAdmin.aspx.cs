using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class HomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null) Response.Redirect("~/admin/adminnews.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string str = DB.dataConnect.connectStr;
                MySqlConnection connect = new MySqlConnection(str);
                connect.Open();
                string id = textId.Text;
                string password = textPassword.Text;
                MySqlCommand com = new MySqlCommand("SELECT * from admin where id='" + id + "' and password='" + password + "'", connect);
                MySqlDataReader read = com.ExecuteReader();
                if (read.Read())
                {
                    alert.Text = "<script type='text/javascript'>function show(){alert('Login Successful.');setTimeout(show, 100000); } show(); </script>";
                    Session["user"] = textId;
                    textId.Text = "";
                    textPassword.Text = "";
                    Response.Redirect("~/admin/adminnews.aspx");
                    
                }

                else
                {
                    alert.Text = "<script type='text/javascript'>function show(){alert('You input wrong id or password.');setTimeout(show, 100000); } show(); </script>";

                }
            }
            catch { }
        }
    }
}