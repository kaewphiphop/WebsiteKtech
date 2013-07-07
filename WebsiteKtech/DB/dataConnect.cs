using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Collections;

namespace WebsiteKtech.DB
{
    public class dataConnect
    {
        public static string connectStr = "server=localhost; database=ktech; uid=root; password=1234";
        public static ArrayList select_donwnload(string type)
        {
            ArrayList ret = new ArrayList();
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("SELECT * from download where type= '"+type+"' ", connect);
            MySqlDataReader read = com.ExecuteReader();
            while (read.Read())
            {
                ret.Add(read["path"]+","+read["title"]);               
            }
            connect.Close();
            return ret;
        }
        public static void deleteDownload(string type) 
        {
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("delete from download where title= '"+type+"' ", connect);
            com.ExecuteNonQuery();
            connect.Close();
        }
        public static void insertDownload(string data)
        {
            string str = DB.dataConnect.connectStr;
            MySqlConnection connect = new MySqlConnection(str);
            connect.Open();
            MySqlCommand com = new MySqlCommand("insert into download values('','" + data.Split(',')[0] + "','" + data.Split(',')[1] + "','" + data.Split(',')[2] + "')", connect);
            com.ExecuteNonQuery();
        }
    }
    
}