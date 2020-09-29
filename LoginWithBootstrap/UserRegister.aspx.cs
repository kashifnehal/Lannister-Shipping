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
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string CS = "data source=.; database = sample;integrated security = SSPI";
            String CS = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("AddUser", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            TextBox1.Text = "";
            TextBox3.Text = "";

        }
    }
}