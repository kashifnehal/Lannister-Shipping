using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginWithBootstrap
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string CS = "data source=.; database = sample;integrated security = SSPI";
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from login where uname=@username and pass=@password", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Label1.Visible = false;
                success.Visible = true;
                success.Text = "Log In Successful... JAAO AISH KARO !!!!";
                Response.Redirect("Index.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Username or Password GALAT h BRO...!!";
            }
            con.Close();
        }
    }
}