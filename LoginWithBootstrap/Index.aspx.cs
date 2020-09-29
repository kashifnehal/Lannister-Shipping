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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void LocationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.google.com/search?rlz=1C1CHBD_enIN879IN879&q=ports+near+me&npsic=0&rflfq=1&rlha=0&rllag=17438737,78402967,4556&tbm=lcl&ved=2ahUKEwjR7bav-LnnAhXGyzgGHYWLBskQtgN6BAgLEAQ&tbs=lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2&rldoc=1#rlfi=hd:;si:;mv:[[17.958736299999998,79.6761306],[17.1961401,78.2239156]];tbs:lrf:!1m4!1u3!2m2!3m1!1e1!1m4!1u2!2m2!2m1!1e1!2m1!1e2!2m1!1e3!3sIAE,lf:1,lf_ui:2");

        }
        protected void close_Click(object sender, EventArgs e)
        {

            Session["playintro"] = "no";

        }


        protected void ScheduleButton_Click(object sender, EventArgs e)
        {
            //Server.Transfer("Routine.aspx");
        }

        //protected void but_Click(object sender, EventArgs e)
        //{
        //    Server.Transfer("~/Routine.aspx");
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Server.Transfer("~/Routine.aspx");
        //}
        protected void btnsend_Click(object sender, EventArgs e)
        {
            //HttpCookie Cookie = new HttpCookie("Use");
            //Cookie.Value = loadbox.Text;
            //Cookie.Expires = DateTime.Now.AddHours(1);
            //Response.Cookies.Add(Cookie);
            Session["loading"] = loadingsend.Text;
            Session["discharge"] = dischargesend.Text;
            Session["date"] = 10;
            System.Diagnostics.Debug.WriteLine(datesend.GetType(), datesend.Text);
            if (Page.IsValid)
            {
                if (loadingsend.Text == "nothing")
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "key", "loginsendError()", true);
                }
                else if (dischargesend.Text == "nothing")
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "key", "dischargesendError()", true);
                }
                else if (datesend.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "key", "datesendError()", true);
                }
                else
                {
                    Response.Redirect("Routine.aspx");
                }
            }


        }

    }
}

//String CS = ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString;
//SqlConnection con = new SqlConnection(CS);
//con.Open();
//SqlCommand cmd = new SqlCommand("SearchRoutine", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;
//cmd.Parameters.AddWithValue("@depcity", TextBox1.Text);
//cmd.Parameters.AddWithValue("@arrcity", TextBox2.Text);
//cmd.Parameters.AddWithValue("@depdate", TextBox5.Text);
//GridView1.DataSource = cmd.ExecuteReader();
//GridView1.DataBind();
//con.Close();

//TextBox1.Text = "";
//TextBox2.Text = "";
//TextBox5.Text = "";