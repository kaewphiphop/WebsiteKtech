using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WebsiteKtech.admin
{
    public partial class registeradmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("~/Pages/Default.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            textId.MaxLength = 8;
            textPassword.MaxLength = 8;
            string id = textId.Text;
            string password = textPassword.Text;
            string conPassword = confirmPassword.Text;
            if (password == conPassword)
            {

                try
                {


                    string str = DB.dataConnect.connectStr;
                    MySqlConnection connect = new MySqlConnection(str);
                    connect.Open();
                    MySqlCommand com = new MySqlCommand("insert into admin values('" + id + "','" + password + "')", connect);
                    com.ExecuteNonQuery();

                }
                catch { throw; }

            }
            else
            {
                alert.Text = "<script>alert('คุณกรอก password ไม่ตรงกัน')</script>";
                textId.Text="";
                textPassword.Text="";
                confirmPassword.Text = "";
                //Response.Redirect("~/admin/registeradmin.aspx");
            }
        }
    }
}