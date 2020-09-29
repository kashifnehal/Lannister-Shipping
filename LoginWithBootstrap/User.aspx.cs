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
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoginTextBox1.Attributes.Add("autocomplete", "off");
                LoginTextBox2.Attributes.Add("autocomplete", "off");
                if (Request.UrlReferrer != null)
                {
                    purl.Text = Request.UrlReferrer.ToString();

                }
            }
            if (IsPostBack)
            {
                if (Session["reguser"] != null)
                {
                    LoginTextBox1.Text = Session["reguser"].ToString();
                }
                if (Session["regpass"] != null)
                {
                    LoginTextBox2.Text = Session["regpass"].ToString();
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (LoginTextBox1.Text == "")
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "loguser", "<script>loguser()</script>", false);
                }
                else if (LoginTextBox2.Text == "")
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "logpass", "<script>logpass()</script>", false);
                }
                else
                {
                    Session["username"] = LoginTextBox1.Text;
                    //string CS = "data source=.; database = sample;integrated security = SSPI";
                    String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
                    SqlConnection con = new SqlConnection(CS);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("loginuser", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@uname", LoginTextBox1.Text);
                    cmd.Parameters.AddWithValue("@pass", LoginTextBox2.Text);

                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        LoginLabel1.Visible = false;
                        success.Visible = true;
                        success.Text = "Log In Successful... JAAO AISH KARO !!!!";
                        if (purl.Text.Contains("Comments.aspx"))
                        {
                            Response.Redirect("Comments.aspx");
                        }
                        else if (purl.Text.Contains("Routine.aspx"))
                        {
                            Response.Redirect("Routine.aspx");
                        }
                        else
                        {
                            Response.Redirect("Index.aspx");
                        }
                    }
                    else
                    {
                        LoginLabel1.Visible = true;
                        LoginLabel1.Text = "Either Username or Password is Wrong!";
                    }
                    con.Close();
                }
            }
        }



        protected void Button1_ClickRegister(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (RegisterTextBox3.Text == "")
                {
                    //ScriptManager.RegisterStartupScript(this, Page.GetType(), "key", "fullnameErrorF()", true);
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "fullnameErrorF()", true);
                    ScriptManager.RegisterStartupScript(Page, GetType(), "fullnameErrorF", "<script>fullnameErrorF()</script>", false);
                    //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "fullnameErrorF()", true);
                    //ScriptManager.RegisterStartupScript(Page, typeof(Page), "somekey", "fullnameErrorF()", true);
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "MyFunction()", true);

                }
                else if (RegisterTextBox1.Text == "")
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "usernameErrorF", "<script>usernameErrorF()</script>", false);
                }
                else if (RegisterTextBox2.Text == "")
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "passwordErrorF", "<script>passwordErrorF()</script>", false);
                }
                else
                {
                    Session["reguser"] = RegisterTextBox1.Text;
                    Session["regpass"] = RegisterTextBox2.Text;
                    Label5.Text = Session["reguser"].ToString();
                    //string CS = "data source=.; database = sample;integrated security = SSPI";
                    String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
                    SqlConnection con = new SqlConnection(CS);
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("getprofile", con);
                    cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd1.Parameters.AddWithValue("@uname", RegisterTextBox1.Text);
                    SqlDataReader sdr1 = cmd1.ExecuteReader();
                    if (sdr1.HasRows)
                    {
                        ScriptManager.RegisterStartupScript(Page, GetType(), "userexists", "<script>userexists()</script>", false);
                    }
                    else
                    {
                        SqlCommand cmd = new SqlCommand("insertuser", con);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@name", RegisterTextBox3.Text);
                        cmd.Parameters.AddWithValue("@uname", RegisterTextBox1.Text);
                        cmd.Parameters.AddWithValue("@pass", RegisterTextBox2.Text);
                        cmd.Parameters.AddWithValue("@picture", "defaultlogo.ico");
                        cmd.ExecuteNonQuery();
                        con.Close();

                        //RegisterTextBox1.Text = "";
                        //RegisterTextBox3.Text = "";
                        LoginFromRegister();
                    }
                }
            }
        }

        protected void LoginFromRegister()
        {
            Session["username"] = RegisterTextBox1.Text;
            String CS = ConfigurationManager.ConnectionStrings["ProfileDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            con.Open();
            SqlCommand cmd = new SqlCommand("loginuser", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            Label4.Text = Session["reguser"].ToString();
            cmd.Parameters.AddWithValue("@uname", RegisterTextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", RegisterTextBox2.Text);

            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                LoginLabel1.Visible = false;
                success.Visible = true;
                success.Text = "Log In Successful... JAAO AISH KARO !!!!";
                if (purl.Text.Contains("Comments.aspx"))
                {
                    Response.Redirect("Comments.aspx");
                }
                else if (purl.Text.Contains("Routine.aspx"))
                {
                    Response.Redirect("Routine.aspx");
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }
            }
            else
            {
                LoginLabel1.Visible = true;
                LoginLabel1.Text = "Either Username or Password is Wrong!";
            }
            con.Close();
        }
    }
}